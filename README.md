OpenSSL 测试项目

这个项目演示了如何编译和运行一个使用 OpenSSL 库的 C 程序。项目包含 OpenSSL 静态库和头文件，以及一个示例 C 程序 (`test.c`)。

目录结构
openssl_test/
|-- openssl-1.1.1/
| |-- include/
| |-- libssl.a
| |-- libcrypto.a
|-- test.c
|-- Makefile
|-- README.md

需求

- GCC (GNU 编译器集合)
- Make (构建自动化工具)

快速开始

1.导航到项目目录:

   ```sh
   cd openssl_test

2.编译项目:
使用 make 命令编译 test.c 程序。这将生成一个名为 test 的可执行文件。

3.运行程序:
使用 make run 命令编译并运行 test 程序。

4.清理:
使用 make clean 命令删除编译生成的文件。

文件说明
test.c: 演示基本 OpenSSL 功能的示例 C 程序。
Makefile: 用于编译和链接程序的构建脚本。
openssl-1.1.1/: 包含 OpenSSL 静态库和头文件的目录。


注意事项
确保目录结构保持完整，特别是包含必要 OpenSSL 文件的 openssl-1.1.1 目录。
Makefile 已配置为使用 openssl-1.1.1 目录中的静态库。如果移动了 OpenSSL 文件，需要相应更新 Makefile 中的路径。
