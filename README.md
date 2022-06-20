## Modified files
### main files
* <b>[include/Util/ExtAPI.h](https://github.com/shuangxiangkan/SVF-Summary/blob/master/include/Util/ExtAPI.h)</b> 
* <b>[lib/Util/ExtAPI.cpp](https://github.com/shuangxiangkan/SVF-Summary/blob/master/lib/Util/ExtAPI.cpp)</b> 
* <b>[include/SVF-FE/SVFIRBuilder.h](https://github.com/shuangxiangkan/SVF-Summary/blob/master/include/SVF-FE/SVFIRBuilder.h)</b> 
* <b>[lib/SVF-FE/SVFIRBuilder.cpp](https://github.com/shuangxiangkan/SVF-Summary/blob/master/lib/SVF-FE/SVFIRBuilder.cpp##L1084-L1429)</b>
* <b>[include/SVF-FE/LLVMUtil.h](https://github.com/shuangxiangkan/SVF-Summary/blob/master/include/SVF-FE/LLVMUtil.h)</b>
* <b>[include/MTA/LockResultValidator.h](https://github.com/shuangxiangkan/SVF-Summary/blob/master/include/MTA/LockResultValidator.h#L65-L66)</b>
* <b>[include/MTA/MTAAnnotator.h](https://github.com/shuangxiangkan/SVF-Summary/blob/master/include/MTA/MTAAnnotator.h#L81-L82)</b>
* <b>[include/MTA/MTAResultValidator.h](https://github.com/shuangxiangkan/SVF-Summary/blob/master/include/MTA/MTAResultValidator.h#L415-L416)</b>
### configuration files 

* <b>[CMakeLists.txt](https://github.com/shuangxiangkan/SVF-Summary/blob/master/CMakeLists.txt#L6)</b>
* <b>[lib/CMakeLists.txt](https://github.com/shuangxiangkan/SVF-Summary/blob/master/lib/CMakeLists.txt#L17)</b>
* <b>[include/SVF-FE/config.h](https://github.com/shuangxiangkan/SVF-Summary/blob/master/include/SVF-FE/config.h)</b>
* <b>[include/SVF-FE/config.h.in](https://github.com/shuangxiangkan/SVF-Summary/blob/master/include/SVF-FE/config.h.in)</b>

#### <b>config.h</b>和<b>config.h.in</b>是由CMakeLists.txt自动生成是生成SVF的绝对路径。

### cJSON

* <b>[include/Util/cJSON.h](https://github.com/shuangxiangkan/SVF-Summary/blob/master/include/Util/cJSON.h#)</b>
* <b>[lib/Util/cJSON.c](https://github.com/shuangxiangkan/SVF-Summary/blob/master/lib/Util/cJSON.c#)</b>
* <b>[LICENSE](https://github.com/shuangxiangkan/SVF-Summary/blob/master/LICENSE#)</b>

#### [cJSON](https://www.jb51.net/article/236576.htm)是一个使用C语言编写的JSON数据解析器，具有超轻便，可移植，单文件的特点，使用MIT开源协议。本项目使用cJSON来解析.json文件。

### Test cases of summary 
* <b>[Test-Cases/src](https://github.com/shuangxiangkan/SVF-Summary/tree/master/Test-Cases/src)</b>

#### <b>Test-Cases/src</b> 是之前写的测试用例。

### ExtAPI.json 
* <b>[ExtAPI.json](https://github.com/shuangxiangkan/SVF-Summary/tree/master/ExtAPI.json)</b>
  
#### <b>ExtAPI.json</b> 存放extern functions的specifications。

#### 修改完上述文件后，需要重新编译SVF, 在SVF的根目录下执行以下命令：
```
./build.sh
```
#### 或者执行/Debug-build（或/Release-build）下面执行make命令：
```
make
```
### Possible problems

#### 1. 因为SVF在每台电脑上的安装位置不一样，SVF在安装的时候好像其位置也没有设为全局环境变量,所以在定位<b>[ExtAPI.json](https://github.com/shuangxiangkan/SVF-Summary/blob/master/lib/Util/ExtAPI.cpp#L73-L74)</b>的时候可能会出问题。我修改了<b>CMakeLists.txt</b>，并生成了<b>config.h</b>和<b>config.h.in</b>这两个文件，是否存在不修改CMakeLists.txt文件的方法来定位<b>ExtAPI.json</b>文件。

#### 2. 之前写的几十个测试用例，不知道是否足够。

#### 3. 两个extern functions: <b>dlsym</b> 和 <b>_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_</b> 不太好处理，因此专门写了两个专门的enum变量对应这两个函数 <b>EXT_FUNPTR</b> 和 <b>EXT_COMPLEX</b>，能否将这两个函数分解到其他定义（如EXT_ADDR、EXT_COPY, EXT_LOAD等）的操作中。

