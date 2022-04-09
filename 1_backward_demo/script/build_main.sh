root=`cd $(dirname $0);pwd`/..
echo $root

cd $root
rm -rf build
mkdir build && cd build && cmake ..  &&  make -j$(nproc) && ./main 