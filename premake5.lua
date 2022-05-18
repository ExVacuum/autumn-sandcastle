workspace("AutumnSandcastle")
    configurations({
        "Debug",
        "Release"
    })

project("AutumnSandcastle")
    kind("ConsoleApp")
    language("C++")
    targetdir("bin/%{cfg.buildcfg}")
    libdirs({
        "libs/**"
    })
    includedirs({
        "libs/simile/inc"
    })
    links({
        "simile"
    })

    files({
        "inc/**.hpp",
        "src/**.cpp"
    })

    filter("configurations:Debug")
        defines({
            "DEBUG"
        })
        symbols("On")
        postbuildcommands({
            "doxygen"
        })

    filter("configurations:Release")
        defines({
            "NDEBUG"
        })
        optimize("On")

project("AutumnSandcastleTests")
    kind("ConsoleApp")
    language("C++")
    targetdir("test/bin/%{cfg.buildcfg}")
    libdirs({
        "libs/**"
    })

    links({
        "criterion",
        "simile"
    })

    files({
        "test/inc/**.hpp",
        "test/src/**.cpp"
    })

    postbuildcommands({
        "%{cfg.buildtarget.relpath}"
    })

