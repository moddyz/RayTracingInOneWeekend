# Get the current source directory.
set(GM_INCLUDE_DIR
    ${CMAKE_CURRENT_SOURCE_DIR}
)

# Add gm as a library target.
add_library(
    gm
    IMPORTED  # TODO: Figure out what this keyword does, precisely.
    INTERFACE # This library target does not provide source files.  (Header only!)
    GLOBAL    # Make this library target available in directories above this one.
)

# Any target which links against "gm" will inherit
# GM_INCLUDE_DIR as a compilation include directory.
target_include_directories(
    gm
    INTERFACE ${GM_INCLUDE_DIR}
)
