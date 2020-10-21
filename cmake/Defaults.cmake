# Project defaults.

if(BUILD_DOCUMENTATION)
    doxygen_documentation(docs
        GENERATE_TAGFILE
            TRUE
        DOXYFILE
            ${PROJECT_SOURCE_DIR}/src/Doxyfile.in
        INPUTS
            ${PROJECT_SOURCE_DIR}/src/exampleSharedLibrary/
        DEPENDENCIES
            exampleSharedLibrary
    )
endif()
