root=`cd $(dirname $0);pwd`/..
echo $root

cd $root
rm -rf build
mkdir build && cd build && cmake -DCMAKE_INSTALL_PREFIX=$root/install/ ..  \
&&  make -j$(nproc)

# 构建测试
make test

# 安装
make install

# 生成cpack安装包
cpack -C Release
# cpack --config CPackSourceConfig.cmake  # 安装所有源码

