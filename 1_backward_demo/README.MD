# 描述
Backward is a beautiful stack trace pretty printer for C++.
堆栈调试 core dumped. / Segment fault.

# install dependences
sudo apt-get install libdw-dev
sudo apt-get install -y libbfd-dev
sudo apt-get install libdwarf-dev

# get backward- cpp
git submodule init
git submodule update

# run
./1_backward_demo/script/build_main.sh

