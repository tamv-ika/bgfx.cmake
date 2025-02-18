if (TARGET tinyexr)
    return()
endif()

file (
    GLOB_RECURSE
    TINYEXR_SOURCES 
    ${BIMG_DIR}/3rdparty/tinyexr/*.h
    ${BIMG_DIR}/3rdparty/tinyexr/*.c)

add_library(tinyexr STATIC ${TINYEXR_SOURCES})
target_include_directories( tinyexr
	PUBLIC
		$<BUILD_INTERFACE:${BIMG_DIR}/3rdparty>
		$<BUILD_INTERFACE:${BIMG_DIR}/3rdparty/tinyexr>
        $<BUILD_INTERFACE:${BIMG_DIR}/3rdparty/tinyexr/deps>
		$<BUILD_INTERFACE:${BIMG_DIR}/3rdparty/tinyexr/deps/miniz> )
set_target_properties(tinyexr PROPERTIES FOLDER "bgfx/3rdparty")
