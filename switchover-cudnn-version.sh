version=$1

echo 'Deleting previous version cudnn...'
sudo rm /usr/local/cuda/lib64/libcudnn*

if [ "$version"x = "4"x ]; then
    echo 'Switching over to cudnn-4'
    sudo cp cudnn4/lib64/* /usr/local/cuda/lib64
    sudo cp cudnn4/include/* /usr/local/cuda/include
elif [ "$version"x = "5"x ]; then
    echo 'Switching over to cudnn-5'
    sudo cp cudnn-5.1/lib64/* /usr/local/cuda/lib64
    sudo cp cudnn-5.1/include/* /usr/local/cuda/include
elif [ "$version"x = "6"x ]; then
    echo 'Switching over to cudnn-6'
    sudo cp cudnn-6.0/lib64/* /usr/local/cuda/lib64
    sudo cp cudnn-6.0/include/* /usr/local/cuda/include
else
    echo 'version' ${version} 'not found'
fi

sudo ldconfig
ls /usr/local/cuda/lib64/libcudnn*
