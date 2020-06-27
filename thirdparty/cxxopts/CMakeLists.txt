# Get the current source directory.
set(CXXOPTS_INCLUDE_DIR
    ${CMAKE_CURRENT_SOURCE_DIR}
)

# Add cxxopts as a library target.
add_library(
    cxxopts
    IMPORTED  # TODO: Figure out what this keyword does, precisely.
    INTERFACE # This library target does not provide source files.  (Header only!)
    GLOBAL    # Make this library target available in directories above this one.
)

# Any target which links against "cxxopts" will inherit
# CXXOPTS_INCLUDE_DIR as a compilation include directory.
target_include_directories(
    cxxopts
    INTERFACE ${CXXOPTS_INCLUDE_DIR}
)
