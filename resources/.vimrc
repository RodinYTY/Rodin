set nocompatible              " 去除VI一致性,必须要添加
filetype off                  " 必须要添加

" 设置包括vundle和初始化相关的runtime path
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()
" 另一种选择, 指定一个vundle安装插件的路径
"call vundle#begin('~/some/path/here')

" git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
" 让vundle管理插件版本,必须
Plugin 'VundleVim/Vundle.vim'
Plugin 'easymotion/vim-easymotion'
Plugin 'scrooloose/nerdtree'

" 你的所有插件需要在下面这行之前
call vundle#end()

filetype plugin indent on    " 必须 加载vim自带和插件相应的语法和文件类型相关脚本
" 忽视插件改变缩进,可以使用以下替代:
"filetype plugin on
"
" 常用的命令
" :PluginList       - 列出所有已配置的插件
" :PluginInstall  	 - 安装插件,追加 `!` 用以更新或使用 :PluginUpdate
" :PluginSearch foo - 搜索 foo ; 追加 `!` 清除本地缓存
" :PluginClean      - 清除未使用插件,需要确认; 追加 `!` 自动批准移除未使用插件
"
" 查阅 :h vundle 获取更多细节和wiki以及FAQ
" 将你自己对非插件片段放在这行之后

"语法高亮
syntax on
"显示行号
set nu

"修改默认注释颜色
hi Comment ctermfg=DarkCyan

"允许退格键删除
set backspace=2
"启用鼠标
set mouse=a
set selection=exclusive
set selectmode=mouse,key

"侦测文件类型
filetype on
"载入文件类型插件
filetype plugin on
"为特定文件类型载入相关缩进文件
filetype indent on

"设置编码自动识别, 中文引号显示
set fileencodings=utf-8,gbk
set encoding=utf-8
set ambiwidth=double

"在搜索时，输入的词句的逐字符高亮
set incsearch

"按C语言格式缩进
set autoindent
"设置Tab长度为4格
set tabstop=4
"设置自动缩进长度为4格
set shiftwidth=4
"继承前一行的缩进方式，特别适用于多行注释
set autoindent
"显示括号匹配
set showmatch
"括号匹配显示时间为1(单位是十分之一秒)
set matchtime=1

"增强模式中的命令行自动完成操作
set wildmenu
"不要生成swap文件，当buffer被丢弃的时候隐藏它
setlocal noswapfile
set bufhidden=hide

" 键位映射
"n： 在 normal 模式下生效
"i：在insert 模式下生效
"v：在visual 模式下生效
"c：在command-line模式下生效
"o：在命令等待时生效，比如输入d之后会等待输入下一个字符，可能是d或者数字。
"un： 删除键的映射，试图unmap一个没有被映射的键会被提示不存在这个映射。
"nore: 非递归
inoremap jk <Esc>
nnoremap H ^
nnoremap L $
inoremap ( ()<Esc>i
inoremap [ []<Esc>i
inoremap { {}<Esc>i
vmap <C-x> :!pbcopy<CR>
vmap <C-c> :w !pbcopy<CR><CR>

" easy-motion配置
nmap ss <Plug>(easymotion-s2)

" NerdTree才插件的配置信息
""将F2设置为开关NERDTree的快捷键
map <leader>ne :NERDTreeToggle<cr>
""修改树的显示图标
let g:NERDTreeDirArrowExpandable = '+'
let g:NERDTreeDirArrowCollapsible = '-'
""窗口位置
let g:NERDTreeWinPos='left'
""窗口尺寸
let g:NERDTreeSize=36
""窗口是否显示行号
let g:NERDTreeShowLineNumbers=1
""显示隐藏文件
let g:NERDTreeShowHidden=1
