-- Copyright (c) 2022 Emmanuel Arias
local ROOT = "../../../../"

project "OpenFBX"
   kind "StaticLib"
   language "C"
   staticruntime "off"

   targetdir (ROOT .. TARGET_FOLDER)
   objdir (ROOT .. INTERMEDIATE_FOLDER)

   files {
      "src/miniz.c",
      "src/miniz.h",
      "src/ofbx.cpp",
      "src/ofbx.h"
   }

   filter "system:windows"
      disablewarnings "4018"

   filter "configurations:Debug"
      runtime "Debug"
      symbols "on"

   filter "configurations:Release"
      runtime "Release"
      optimize "on"
