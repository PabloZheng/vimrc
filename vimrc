syntax on
let mapleader = " " 
set number
set cursorline
set wrap
set showcmd 
set wildmenu
colorscheme industry
language messages zh_CN.utf-8
set mouse=a
set autochdir
set fileencodings=utf-8,ucs-bom,gb18030,gbk,gb2312,cp936
set termencoding=utf-8
set encoding=utf-8
" 去掉提示音
set noeb
" 跳转到句尾
noremap <c-l> $

" backspace键插入模式下不可删除的解决
set nocompatible
" backspace在行首可回到行尾
set backspace=indent,eol,start

" 搜索设置：highlight search
set hlsearch
exec "nohlsearch"
set incsearch

" ignore case during search. can use <smart search> instead
set ignorecase
set history=500

" 分屏：hotkey for split and vsplit
map sd :set splitright<CR>:vsplit<CR>
map sa :set nosplitright<CR>:vsplit<CR>
map sw :set nosplitbelow<CR>:split<CR>
map ss :set splitbelow<CR>:split<CR>


" 分屏后移动光标到上下左右界面
map <LEADER><Left> <c-w>h
map <LEADER><down> <c-w>j
map <LEADER><up> <c-w>k 
map <LEADER><right> <c-w>l

"加号和减号来定义搜索时上下移动
noremap = nzz
noremap - Nzz
noremap <LEADER><CR> :nohlsearch<CR>

" fast exit and save
map wq :wq!
map q :q!
map w :w!

map ggg G

" add a new tabe
map ta :tabe<CR>
map tr :-tabnext<CR>
map rr :+tabnext<CR>
map s <nop>
map n <nop>

set showmatch

set tabstop=4
set shiftwidth=4
set autoindent


" 当文件为py是按F5自动运行
autocmd BufWritePost $MYVIMRC source $MYVIMRC

filetype plugin on
map <F5> :call PRUN()<CR>
func! PRUN()
    exec "w" 
	    if &filetype == 'python'
		        exec "!python %"
				    endif
					endfunc

"自动补全括号引号等：auto complete
inoremap ( ()<ESC>i
inoremap ) <c-r>=ClosePair(')')<CR>
inoremap { {}<ESC>i
inoremap } <c-r>=ClosePair('}')<CR>
inoremap [ []<ESC>i
inoremap ] <c-r>=ClosePair(']')<CR>
inoremap ' ''<ESC>i
inoremap " ""<ESC>i
function ClosePair(char)
 if getline('.')[col('.') - 1] == a:char
   return "\<Right>"
    else
	  return a:char
	   endif
	   endf


