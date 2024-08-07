# Kernel Module Template

这是Linux内核模块的模板

## 如何使用？

1. 修改Makefile里面的`KDIR`变量，将其值设置为要编译的内核源码的目录
2. 在`obj-m := helloworld.o`后面跟上你写的其他代码文件
3. 使用`make`编译，获得ko文件。
4. 加载模块： `sudo insmod helloworld.ko` （如果你的内核要求必须对模块签名的话，那需要签名之后再insmod，不然的话会失败`Key was rejected by service`）
