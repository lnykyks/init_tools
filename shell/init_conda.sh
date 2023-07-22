conda config --set show_channel_urls yes

conda config --add channels https://mirrors.tuna.tsinghua.edu.cn/anaconda/pkgs/free/
conda config --add channels https://mirrors.tuna.tsinghua.edu.cn/anaconda/cloud/conda-forge 
conda config --add channels https://mirrors.tuna.tsinghua.edu.cn/anaconda/cloud/msys2/
conda config --add channels https://mirrors.bfsu.edu.cn/anaconda/cloud/pytorch

# 2.在.bashrc文件底部添加  
# 为了避免与其他服务器用户产生命令冲突,使用自己的英文名+Python替代python 
alias fortunePython='/root/anaconda3/bin/python'   
# 这里写anaconda的安装路径
export PATH="/root/anaconda3/bin:$PATH”
