# RayTracingInOneWeekend

An implementation of the book [Ray Tracing in One Weekend](https://raytracing.github.io/books/RayTracingInOneWeekend.html).  **RTOW** will be used for brevity for the remainder of this document.

## Table of Contents

- [Programs](#programs)
  * [0. Output an Image](#0-output-an-image)
  * [1. Rays, a Simple Camera, and Background](#1-rays-a-simple-camera-and-background)
  * [2. Adding a Sphere](#2-adding-a-sphere)

## Programs

### 0. Output an Image

![Image](./src/0_outputAnImage/output.png)

[Code](./src/0_outputAnImage/main.cpp)

[Chapter 2](https://raytracing.github.io/books/RayTracingInOneWeekend.html#outputanimage)

### 1. Rays, a Simple Camera, and Background

![Image](./src/1_raysCameraAndBackground/output.png)

[Code](./src/1_raysCameraAndBackground/main.cpp)

[RTOW Chapter 4](https://raytracing.github.io/books/RayTracingInOneWeekend.html#rays,asimplecamera,andbackground)

### 2. Adding a Sphere

![Image](./src/2_addingASphere/output.png)

[Code](./src/2_addingASphere/main.cpp)

[ROTWChapter 5](https://raytracing.github.io/books/RayTracingInOneWeekend.html#addingasphere)

## Library

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
