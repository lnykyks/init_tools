# Windows的CMD中执行：
ssh-keygen -t rsa # 执行过程中直接回车。

# 执行完后会在C:\Users\xxx\.ssh文件夹下生成如下三个文件：
# id_rsa是本地私钥
# id_rsa.pub是公钥
# known_hosts是已知的ip

# 将C:\Users\xxx\.ssh\id_rsa.pub拷贝到Ubuntu的~/.ssh中。（通过scp）
# 然后再Ubuntu中执行：
cat ~/.ssh/id_rsa.pub >> ~/.ssh/authorized_keys

# 修改属性
# sudo chmod 600 authorized_keys
# sudo chmod 700 ~/.ssh

sudo vim /etc/ssh/sshd_config
# 添加：
RSAAuthentication yes
PubkeyAuthentication yes
PasswordAuthentication no

# 重启服务
sudo service sshd restart
