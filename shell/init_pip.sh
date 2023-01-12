#! /usr/bin/bash

mkdir /root/.pip
touch /root/.pip/pip.conf

cat > /root/.pip/pip.conf <<EOF
[global]
timeout=40
index-url=https://pypi.tuna.tsinghua.edu.cn/simple/
extra-index-url=
		http://mirrors.aliyun.com/pypi/simple/
		http://pypi.douban.com/simple
		http://pypi.mirrors.ustc.edu.cn/simple/

[install]
trusted-host=
		pypi.tuna.tsinghua.edu.cn
		mirrors.aliyun.com
		pypi.douban.com
		pypi.mirrors.ustc.edu.cn
EOF

pip install pip_search