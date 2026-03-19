#!/bin/bash

# Create and enter build directory
mkdir -p build
cd build

# Configure CMake for OpenCL only
cmake .. \
    -DPIGLIT_BUILD_GL_TESTS=OFF \
    -DPIGLIT_BUILD_GLES1_TESTS=OFF \
    -DPIGLIT_BUILD_GLES2_TESTS=OFF \
    -DPIGLIT_BUILD_GLES3_TESTS=OFF \
    -DPIGLIT_BUILD_VK_TESTS=OFF \
    -DPIGLIT_BUILD_WGL_TESTS=OFF \
    -DPIGLIT_BUILD_GLX_TESTS=OFF \
    -DPIGLIT_BUILD_DMA_BUF_TESTS=OFF \
    -DPIGLIT_USE_WAFFLE=OFF \
    -DCMAKE_DISABLE_FIND_PACKAGE_X11=1 \
    -DGLUT_INCLUDE_DIR=/dev/null \
    -DGLUT_glut_LIBRARY=/dev/null \
    -DPIGLIT_BUILD_CL_TESTS=ON

# Build the OpenCL tests
make -j$(nproc)
