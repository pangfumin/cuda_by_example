NVCC = C:\CirsTools\CUDA30\bin\nvcc.exe
CLEANTARGETS = 
ALLDEPEND = 
!include chapter03/chapter03.mak

all: $(ALLDEPEND)
clean:
  del $(CLEANTARGETS)