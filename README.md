# RayTracingInOneWeekend

An implementation of the book [Ray Tracing in One Weekend](https://raytracing.github.io/books/RayTracingInOneWeekend.html).

Separate programs are authored for select chapters of the book:

0. [Output an Image](./src/0_outputAnImage/main.cpp) - [Chapter 2](https://raytracing.github.io/books/RayTracingInOneWeekend.html#outputanimage)
1. [Rays, a Simple Camera, and Background](./src/1_raysCameraAndBackground/main.cpp) - [Chapter 4](https://raytracing.github.io/books/RayTracingInOneWeekend.html#rays,asimplecamera,andbackground)

Common functions and classes are refactored into the [raytrace library](./src/raytrace).

## Documentation

Doxygen documentation based on the latest state of master, [hosted by GitHub Pages](https://moddyz.github.io/RayTracingInOneWeekend/).

## Building

### Requirements

- `>= CMake-3.17`
- `C++17`

A convenience build script is also provided, for building all targets, and optionally installing to a location:
```
./build.sh <OPTIONAL_INSTALL_LOCATION>
```
