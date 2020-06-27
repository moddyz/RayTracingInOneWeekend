# RayTracingInOneWeekend {#mainpage}

\section RayTracingInOneWeekend Introduction

\b RayTracingInOneWeekend is a project which implements the 
<a href="https://raytracing.github.io/books/RayTracingInOneWeekend.html">Ray Tracing in One Weekend book.</a>

\section RayTracingInOneWeekend_Building Building

A convenience build script is provided at the root of the repository for building all targets, and optionally installing to a location: 
\code
./build.sh <OPTIONAL_INSTALL_LOCATION>`
\endcode

\subsection RayTracingInOneWeekend_Building_Documentation Building Documentation

To build documentation for RayTracingInOneWeekend, set the cmake option `BUILD_DOCUMENTATION="ON"` when configuring cmake.

\section RayTracingInOneWeekend_DeveloperNotes Developer Notes

\subsection RayTracingInOneWeekend_DeveloperNotes_SourceTree Source Tree

The source tree under \p src/ is composed of:
- \p src/raytrace a common library of raytrace utility functions used throughout the various programs.
- ... and program(s) which serve as checkpoints with respect to the chapters of the book.

\subsection RayTracingInOneWeekend_DeveloperNotes_Motivation Motivation

To learn basic raytracing techniques, before moving on to more advanced topics in the realm.

\section RayTracingInOneWeekend_GitHubHosted GitHub Repository

The RayTracingInOneWeekend project is hosted on GitHub: https://github.com/moddyz/RayTracingInOneWeekend.
