CLEANTARGETS = $(CLEANTARGETS) hello_world.exe simple_kernel.exe
ALLDEPEND = $(ALLDEPEND) hello_world.exe simple_kernel.exe
hello_world.exe: chapter03/hello_world.cu
	$(NVCC) -o $@ chapter03/hello_world.cu

simple_kernel.exe: chapter03/simple_kernel.cu
	$(NVCC) -o $@ chapter03/simple_kernel.cu