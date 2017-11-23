version=$1

echo 'Deleting previous version cudnn...'
sudo rm /usr/local/cuda/lib64/libcudnn*

if [ "$version"x = "4"x ]; then
    echo 'Switching over to cudnn-4'
    sudo cp cudnn4/lib64/* /usr/local/cuda/lib64
    sudo cp cudnn4/include/* /usr/local/cuda/include
    sudo ln -sf /usr/local/cuda/lib64/libcudnn.so..4.0.7 /usr/local/cuda/lib64/libcudnn.so.4
    sudo ln -sf /usr/local/cuda/lib64/libcudnn.so.4 /usr/local/cuda/lib64/libcudnn.so
elif [ "$version"x = "5"x ]; then
    echo 'Switching over to cudnn-5'
    sudo cp cudnn-5.1/lib64/* /usr/local/cuda/lib64
    sudo cp cudnn-5.1/include/* /usr/local/cuda/include
    sudo ln -sf /usr/local/cuda/lib64/libcudnn.so.5.1.10 /usr/local/cuda/lib64/libcudnn.so.5
    sudo ln -sf /usr/local/cuda/lib64/libcudnn.so.5 /usr/local/cuda/lib64/libcudnn.so
elif [ "$version"x = "6"x ]; then
    echo 'Switching over to cudnn-6'
    sudo cp cudnn-6.0/include/* /usr/local/cuda/include/
    sudo cp cudnn-6.0/lib64/* /usr/local/cuda/lib64/
    sudo ln -sf /usr/local/cuda/lib64/libcudnn.so.6.0.21 /usr/local/cuda/lib64/libcudnn.so.6
    sudo ln -sf /usr/local/cuda/lib64/libcudnn.so.6 /usr/local/cuda/lib64/libcudnn.so
else
    echo 'version' ${version} 'not found'
fi

sudo ldconfig
ls -alt /usr/local/cuda/lib64/libcudnn*
