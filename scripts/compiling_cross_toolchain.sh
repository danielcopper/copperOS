
######################################################
# Binutils
######################################################

# To be done


######################################################
# GCC
######################################################

# To be done

cd $LFS/sources || exit 1

tar -xf linux-5.19.2.tar.xz || exit 1

cd linux-5.19.2

make mrproper

make headers
find usr/include -type f ! -name '*.h' -delete
cp -rv usr/include $LFS/usr

cd ..

rm -rf linux-5.19.2