workspace("ebar")
configurations({ "Debug", "Release" })

project("ebar")
kind("ConsoleApp")
language("C")
targetdir("bin/")
buildoptions({ "-std=c11", "-D_GNU_SOURCE" })
links({ "xcb", "xcb-xinerama", "xcb-randr", "X11", "X11-xcb", "Xft", "z", "fontconfig", "freetype" })
includedirs({ "/usr/include/freetype2" })
files({
	"src/**.h",
	"src/**.c",
})
defines({ 'VERSION="0.1.0"' })

filter("configurations:Debug")
defines({ "DEBUG" })
symbols("On")

filter("configurations:Release")
defines({ "NDEBUG" })
optimize("On")
