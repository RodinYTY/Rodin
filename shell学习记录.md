[TOC]

# 语法

​	



# 指令



## 文件操作

### [sed](https://www.runoob.com/linux/linux-comm-sed.html)

**功能：**

利用脚本来处理文本文件。

**参数：**



**脚本命令：**



**例子：**

```shell
sed -i '' "3 a\\
abcdefg
" $file # 在第三行下插入abcdefg
```

```shell
sed -i '' "/111/ a\\
abcdefg
" $file # 匹配到111下行插入abcdefg
```

