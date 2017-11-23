# tools
some tools I used

 ## switchover-cudnn-version.sh
 usage:
 ```
 # switch to cudnn-4
 ./switchover-cudnn-version.sh 4
 ```
注：
比较两个字符串是否相等的办法是：
```
    if [ "$test"x = "test"x ]; then
```
这里的关键有几点：  
    1. 使用单个等号  
    2. 注意到等号两边各有一个空格：这是unix shell的要求  
    3. 注意到"$test"x最后的x，这是特意安排的，因为当$test为空的时候，上面的表达式就变成了x = testx，  
    显然是不相等的。而如果没有这个x，表达式就会报错：```[: =: unary operator expected```
