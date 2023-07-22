# install cuda on Windows

1. check version
   1. gpu version + driver version
   2. support vs
2. install vs
   1. C++桌面开发
   2. 后续操作见csdn blog
3. install cuda
   1. 安装，条件允许的话装C盘吧
   2. 安装过程
   3. 安装后
      1. 运行两个exe，确保pass，也是看blog
4. install cudnn
   1. 对应cuda的版本
   2. 下载后解压，进行以下操作：
      ```
      sudo cp cudnn/include/cudnn*.h /usr/local/cuda/include/
      sudo cp cudnn/lib/libcudnn* /usr/local/cuda/lib64/
      sudo chmod a+r /usr/local/cuda/include/cudnn*.h
      sudo chmod a+r /usr/local/cuda/lib64/libcudnn*
      ```
5. set path
   1. cuda环境变量
   2. vs环境变量，比如cl.exe

# install cuda on Linux

1. 用run_file文件，不要用dpkg
2. 先安装dialog, whiptail, gcc, g++, gdb等依赖

instruction: [link](https://blog.csdn.net/gaoyong_cs/article/details/107512988)

```about env
export PATH=/usr/local/cuda-11.0/bin${PATH:+:${PATH}}
# export LD_LIBRARY_PATH=/usr/local/cuda-11.0/lib64${LD_LIBRARY_PATH:+:${LD_LIBRARY_PATH}}
export LD_LIBRARY_PATH="/usr/local/cuda-11.0/lib64:/home/ubuntu/.conda/envs/tc17py38/lib/python3.8/site-packages/torch/lib"
export CUDA_HOME="/usr/local/cuda"
export CPATH="/mnt/d/projects/CHORE-edited/external/cuda-samples-11.0/Common"
export TORCH_CUDA_ARCH_LIST=6.1
export CUDA_SAMPLES_INC=/mnt/d/projects/CHORE-edited/external/cuda-samples-11.0/Common/
```
