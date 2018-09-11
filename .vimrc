"-----------------------------------------------------------------------------------------------------------------------------
"基本設定
"-----------------------------------------------------------------------------------------------------------------------------

set encoding=utf-8

scriptencoding=utf-8

"swapファイルの作成を無効
set noswapfile

"backupファイルの作成を無効
set nobackup

"viminfoへの記録の無効
set viminfo=

set hidden

"行末までヤンク
nnoremap Y y$

set display=lastline


"-----------------------------------------------------------------------------------------------------------------------------
"表示設定
"-----------------------------------------------------------------------------------------------------------------------------
"行番号表示
set number

"カーソルラインをハイライト
set cursorline
hi clear CursorLine

"括弧の対応関係を一瞬表示する
set showmatch

"tabの画面上での幅
set tabstop=4

"自動インデントでずれる幅
set autoindent

"タイトル表示
set title

"常にステータス行表示
set laststatus=2

"-----------------------------------------------------------------------------------------------------------------------------
"文字列検索
"-----------------------------------------------------------------------------------------------------------------------------
"インクリメンタルサーチ. 1文字入力ごとに検索を行う
set incsearch

"検索パターンに大文字小文字を区別しない
set ignorecase

"検索結果をハイライト
set hlsearch


"-----------------------------------------------------------------------------------------------------------------------------
"タブ設定
"-----------------------------------------------------------------------------------------------------------------------------
"タブ入力を複数の空白入力に置き換える
set expandtab

"画面上でタブ文字が占める幅
set tabstop=4

"連続した空白に対してtabキーやバックスペースキーでカーソルが動く幅
set softtabstop=4

"改行時に前の行のインデントを継続する
set autoindent

"改行時に前の行の構文をチェックして次の行のインデントをそろえる
set smartindent

"smartindent適応時に増減する幅
set shiftwidth=4

"-----------------------------------------------------------------------------------------------------------------------------
"補完機能
"-----------------------------------------------------------------------------------------------------------------------------
inoremap { {}<Left>
inoremap ( ()<Left>
inoremap ' ''<Left>
inoremap " ""<Left>
inoremap < <><Left>

"-----------------------------------------------------------------------------------------------------------------------------
"キーバインド設定
"-----------------------------------------------------------------------------------------------------------------------------
nnoremap Q <Nop>
nnoremap s <Nop>


if &compatible
    set nocompatible               " Be iMproved
endif

set runtimepath+=/home/tochigi/.cache/dein/repos/github.com/Shougo/dein.vim

if dein#load_state('/home/tochigi/.cache/dein')
    call dein#begin('/home/tochigi/.cache/dein')

    " Let dein manage dein
    " Required:
    call dein#add('/home/tochigi/.cache/dein/repos/github.com/Shougo/dein.vim')
    "Add or remove your plugins here:
    "molokaiカラースキーム
    call dein#add('tomasr/molokai')
    call dein#add('scrooloose/nerdtree')
    call dein#add('terryma/vim-multiple-cursors')
    call dein#add('mattn/emmet-vim')
    call dein#add('Shougo/neosnippet.vim')
    call dein#add('Shougo/neosnippet-snippets')
" You can specify revision/branch/tag.
    "call dein#add('Shougo/deol.nvim')
    " Required:
    call dein#end()
    call dein#save_state()
endif

" Required:
    filetype plugin indent on
    syntax enable

" If you want to install not installed plugins on startup.
if dein#check_install()
    call dein#install()
endif

"molokai
colorscheme molokai
syntax on
set t_Co=256

"NerdTree
autocmd vimenter * NERDTree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exist("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif
map <C-k> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
