workspace("AutumnSandcastle")
    configurations({
        "Debug",
        "Release"
    })

project("AutumnSandcastle")
    kind("ConsoleApp")
    language("C")
    targetdir("bin/%{cfg.buildcfg}")
    libdirs({
        "libs/**"
    })

    links({
        "simile"
    })

    files({
        "inc/**.h",
        "src/**.c"
    })

    filter("configurations:Debug")
        defines({
            "DEBUG"
        })
        symbols("On")

    filter("configurations:Release")
        defines({
            "NDEBUG"
        })
        optimize("On")

newaction
{
    trigger     = "docs",
    description = "Build documentation",
    execute = function ()
        os.execute "doxygen"
    end
}
