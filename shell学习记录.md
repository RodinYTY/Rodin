[TOC]

# 基本指令

## 文件

### ls

显示当前目录下的文件和文件夹。

**选项：**

- -F 区分显示文件/文件夹
- -a 显示带上隐藏文件
- -R 递归显示子文件夹
- -l 显示相关信息
- -d 只列出目录而不列出其子文件
- -i 每个文件的序列号

**参数：**

过滤输出列表，*代表一个或一串，?代表一个字符，[abc]同正则

**例子：**

```shell
ls -d */ # 只显示文件夹
ls -d .* # 只显示隐藏文件
```

### touch

创建一个文件

### cp

**选项：**

- -i 询问是否覆盖（y/n）
- -R 递归复制文件夹用

**参数：**

cp src dst

- src可以使用通配符

### mv

移动位置或者重命名

**选项：**

- -i 询问是否覆盖（y/n）
- -f 不提醒

**例子：**

```shell
mv file dir/  # 第二个参数是文件夹，表示移动到文件夹
mv dir1 dir2  # 文件夹改名
for var in *.jpg; do mv "$var" "${var%.jpg}_efg.jpg"; done  # abcd.jpg -> abcd_efg.jpg
```

### ln

链接文件，分为软链接（符号链接）和硬链接：

1. 软链接相当于建立了一个文件，指向源文件（快捷方式）
2. 硬链接就是一种引用，inode值相同

**选项：**

- -s 为软链接，不加为硬链接

**参数：**

ln -s src ← dst

### mkdir

建一个目录

**选项：**

- -p 需要递归创建，例如：new_dir/sub_dir/under_dir

### tree

查看目录结构

### file

查看文件类型

### cat

打印文件内容

**选项：**

- -n 显示行号
- -b 显示非空行的行号

### tail

显示文件最后n行

**选项：**

- -n 最后n行

**例子：**

```shell
tail file  # 10行
tail -n 2 file  # 2行
```

### du

查看某个目录下磁盘使用情况

**选项：**

- -h 转换为易读单位(K, M, G)
- -c 显示总大小



### find

**选项：**

- -name 文件名匹配
- -type 类型匹配
- -ctime 最近使用

**参数：**

find dir -opt pattern

**例子：**

```shell
find $dir -name "XIG*" # "*.m"拓展名匹配
find $dir -type f # 找出文件
find $dir -ctime -20 # 最近20天使用
```



### xx



**选项：**

- 

**参数：**



**例子：**

```

```



## 结构语句

### if else

```shell
if condition; then
xxx
elif condition; then
xxx
fi
```

### 条件判断

- 数值比较

```shell
if [ $value -gt 5]; then
xxx
fi
```

greater = g; less = l; equal = e; not = n

<!--无法比较浮点数-->

- 字符串比较

str1 = str2; str1 != str2; str1 < str2; str1 > str2

is_empty: -z str

is_not_empty: -n str

```shell
if [ str1 \> str2 ]; then # 大于号记得要转义
xxx
fi
```

<!--字符串排序根据ascii码，a>A-->

- 文件比较

是否存在：[ -e "$dir" ]

是个文件：[ -f "$dir" ]

是个目录：[ -d "$dir" ]

存在非空：[ -s "$dir" ]

读写执行：-r -w -x

新旧比较：-nt -ot

### case

```shell
case $val in
aa | bb)
	xxx;;
cc)
	xxx;;
*)
	xxx;;
esac
```

## IO

​	





## 变量

### 展示

- env打印所有环境变量，printenv xx打印某个环境变量
- set显示全局、局部、自定义变量
- echo $var

### 赋值

- var=12345 或者 var="12345"（包含空格需要用双引号）

！var = 12345会被当成不同的指令

- var="global"; export var 提升为全局变量
- unset global_var 删除全局变量

### 数学运算

(( expression ))

```shell
if (( $val > 1 )); then
xxx
fi
```

```shell
(( $val ++ ))
```



# 高级指令

## 函数





## 数据结构

### 数组

- 赋值

arr=(1 2 3 4 5)

- 打印

echo ${arr[1]}

echo ${arr[*]}



## 文件操作

### [sed](https://www.runoob.com/linux/linux-comm-sed.html)

**功能：**

利用脚本来处理文本文件。

**参数：**



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

### [grep](https://www.runoob.com/linux/linux-comm-grep.html)

文件内内容查找

**选项：**

- -v 反向搜索
- -n 显示行号
- -c 只显示搜索结果个数

**参数：**

grep pattern file1 file2

**例子：**

```
grep -e xxx -e yyy  # 指定多个匹配模式
cat test.txt | grep hat$
```

### xx



**选项：**

- 

**参数：**



**例子：**

```

```

## 系统管理----

### [ps](https://www.runoob.com/linux/linux-comm-ps.html)

显示进程信息

**选项：**

- -e 显示所有进程
- -f 显示完整格式的输出
- --forest 树状显示

**例子：**

```

```

