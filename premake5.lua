project "iconfont"
    kind "StaticLib"
    language "C++"
    cppdialect "C++17"
    location "build"

    targetdir (".Out/Bin/" .. output_dir .. "%{prj.name}")
    objdir    (".Out/Obj/" .. output_dir .. "%{prj.name}")

    -- Header only, and only the one header the engine reads: the repository maps a dozen icon fonts, and a
    -- solution that carried all of them would be listing eleven sets nobody can draw.
    files {
        "IconsMaterialDesignIcons.h",
    }

    filter "system:windows"
        systemversion "latest"

    filter "configurations:Debug"
        runtime "Debug"
        symbols "On"

    filter "configurations:Release"
        runtime "Release"
        optimize "On"

    filter "configurations:Shipping"
        runtime "Release"
        optimize "On"
        symbols "Off"
