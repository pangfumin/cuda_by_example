cmake_minimum_required(VERSION 2.6.0)

project(cuda_by_eample)

set(CMAKE_MODULE_PATH ${CMAKE_MODULE_PATH} "${CMAKE_CURRENT_SOURCE_DIR}")

# find_package(Pangolin 0.1 REQUIRED)
find_package(CUDA REQUIRED)
find_package(OpenGL REQUIRED)
find_package(GLUT REQUIRED)
# find_package(GLEW REQUIRED)




# include_directories(${Pangolin_INCLUDE_DIRS})
include_directories(${CUDA_INCLUDE_DIRS})
include_directories( ${OPENGL_INCLUDE_DIRS}  ${GLUT_INCLUDE_DIRS} )

# include_directories(${EIGEN_INCLUDE_DIRS})
# include_directories(${SUITESPARSE_INCLUDE_DIRS})


set(CUDA_NVCC_FLAGS ${CUDA_NVCC_FLAGS}  "-Xcompiler;-fPIC;")           
set(CUDA_NVCC_FLAGS ${CUDA_NVCC_FLAGS} "--ftz=true;--prec-div=false;--prec-sqrt=false") 



# Chapter03
cuda_add_executable(03_hello_world chapter03/hello_world.cu)
target_link_libraries(03_hello_world ${CUDA_LIBRARIES} )

cuda_add_executable(03_simple_kernel chapter03/simple_kernel.cu)
target_link_libraries(03_simple_kernel ${CUDA_LIBRARIES} )

cuda_add_executable(03_enum_gpu chapter03/enum_gpu.cu)
target_link_libraries(03_enum_gpu ${CUDA_LIBRARIES} )

cuda_add_executable(03_set_gpu chapter03/set_gpu.cu)
target_link_libraries(03_set_gpu ${CUDA_LIBRARIES} )

cuda_add_executable(03_simple_kernel_params chapter03/simple_kernel_params.cu)
target_link_libraries(03_simple_kernel_params ${CUDA_LIBRARIES} )

cuda_add_executable(03_simple_device_call chapter03/simple_device_call.cu)
target_link_libraries(03_simple_device_call ${CUDA_LIBRARIES} )


#chapter04
cuda_add_executable(04_add_loop_gpu chapter04/add_loop_gpu.cu)
target_link_libraries(04_add_loop_gpu ${CUDA_LIBRARIES} )

cuda_add_executable(04_add_loop_long chapter04/add_loop_long.cu)
target_link_libraries(04_add_loop_long ${CUDA_LIBRARIES} )


cuda_add_executable(04_julia_cpu chapter04/julia_cpu.cu)
target_link_libraries(04_julia_cpu ${CUDA_LIBRARIES} ${OPENGL_LIBRARIES}    ${GLUT_LIBRARY} )

cuda_add_executable(04_julia_gpu chapter04/julia_gpu.cu)
target_link_libraries(04_julia_gpu ${CUDA_LIBRARIES} ${OPENGL_LIBRARIES}    ${GLUT_LIBRARY} )

#chapter05
cuda_add_executable(05_add_loop_blocks chapter05/add_loop_blocks.cu)
target_link_libraries(05_add_loop_blocks ${CUDA_LIBRARIES} ${OPENGL_LIBRARIES}    ${GLUT_LIBRARY} )

cuda_add_executable(05_add_loop_long_blocks chapter05/add_loop_long_blocks.cu)
target_link_libraries(05_add_loop_long_blocks ${CUDA_LIBRARIES} ${OPENGL_LIBRARIES}    ${GLUT_LIBRARY} )

cuda_add_executable(05_dot chapter05/dot.cu)
target_link_libraries(05_dot ${CUDA_LIBRARIES} ${OPENGL_LIBRARIES}    ${GLUT_LIBRARY} )

cuda_add_executable(05_ripple chapter05/ripple.cu)
target_link_libraries(05_ripple ${CUDA_LIBRARIES} ${OPENGL_LIBRARIES}    ${GLUT_LIBRARY} )

cuda_add_executable(05_shared_bitmap chapter05/shared_bitmap.cu)
target_link_libraries(05_shared_bitmap ${CUDA_LIBRARIES} ${OPENGL_LIBRARIES}    ${GLUT_LIBRARY} )

#chapter06
cuda_add_executable(06_ray chapter06/ray.cu)
target_link_libraries(06_ray ${CUDA_LIBRARIES} ${OPENGL_LIBRARIES}    ${GLUT_LIBRARY} )

cuda_add_executable(06_ray_noconst chapter06/ray_noconst.cu)
target_link_libraries(06_ray_noconst ${CUDA_LIBRARIES} ${OPENGL_LIBRARIES}    ${GLUT_LIBRARY} )

#chapter07
cuda_add_executable(07_heat chapter07/heat.cu)
target_link_libraries(07_heat ${CUDA_LIBRARIES} ${OPENGL_LIBRARIES}    ${GLUT_LIBRARY} )

cuda_add_executable(07_heat_2d chapter07/heat_2d.cu)
target_link_libraries(07_heat_2d ${CUDA_LIBRARIES} ${OPENGL_LIBRARIES}    ${GLUT_LIBRARY} )


#chapter08
cuda_add_executable(08_heat chapter08/heat.cu)
target_link_libraries(08_heat ${CUDA_LIBRARIES} ${OPENGL_LIBRARIES}    ${GLUT_LIBRARY} )

cuda_add_executable(08_basic_interop chapter08/basic_interop.cu)
target_link_libraries(08_basic_interop ${CUDA_LIBRARIES} ${OPENGL_LIBRARIES}    ${GLUT_LIBRARY} )

cuda_add_executable(08_ripple chapter08/ripple.cu)
target_link_libraries(08_ripple ${CUDA_LIBRARIES} ${OPENGL_LIBRARIES}    ${GLUT_LIBRARY} )

#chapter09
cuda_add_executable(09_hist_cpu chapter09/hist_cpu.cu)
target_link_libraries(09_hist_cpu ${CUDA_LIBRARIES} ${OPENGL_LIBRARIES}    ${GLUT_LIBRARY} )

cuda_add_executable(09_hist_gpu_gmem_atomics chapter09/hist_gpu_gmem_atomics.cu)
target_link_libraries(09_hist_gpu_gmem_atomics ${CUDA_LIBRARIES} ${OPENGL_LIBRARIES}    ${GLUT_LIBRARY} )

