call plug#begin('~/.vim/plugged')
Plug 'tomasr/molokai'
call plug#end()

autocmd ColorScheme * highlight Normal ctermbg=none
autocmd ColorScheme * highlight LineNr ctermbg=none

colorscheme molokai

"==== 表示設定 ====
set number "行番号
set title "編集中ファイル名表示
set showmatch "括弧始まり、括弧閉じのハイライト
set list "タブ、空白、改行を可視化
set visualbell "ビープ音の視覚表示
set laststatus=2 "ステータス表示
set ruler "カーソル位置を表示
"set lines=50 "ウィンドウの縦幅を指定
"set columns=180 "ウィンドウの横幅を指定
syntax on "コードの色表示


"==== 文字、カーソル設定 ====
set fenc=utf-8 "文字コード
set virtualedit=onemore "カーソルを行末の1つ先まで移動可能にする
set autoindent "自動インデント
set smartindent "オートインデント
set tabstop=4 "インデント幅
set shiftwidth=4 "自動インデント時の幅
"set listchars=2
set whichwrap=b,s,h,l,<,>,[,],~
set backspace=indent,eol,start "バックスペースでの行移動が可能
let &t_ti.="\e[5 q" "カーソル形状を変更

"==== 検索設定 ====
set ignorecase "大・小文字の区別なし
set smartcase "大文字が含まれている場合は区別
set wrapscan "検索時に最後まで行ったら最初に戻る
set hlsearch "検索した文字をハイライト
set incsearch "インクリメントサーチを有効化

"==== マウス設定 ====
set mouse=a
set ttymouse=xterm2

"==== 入力モード時のカーソル移動 ====
inoremap <C-j> <Down>
inoremap <C-k> <Up>
inoremap <C-h> <Left>
inoremap <C-l> <Right>

function! HardMode ()
        noremap <Up> <Nop>
        noremap <Down> <Nop>
        noremap <Left> <Nop>
        noremap <Right> <Nop>
endfunction

function! EasyMode ()
        noremap <Up> <Up>
        noremap <Down> <Down>
        noremap <Left> <Left>
        noremap <Right> <Right>
endfunction

command! HardMode call HardMode()
command! EasyMode call EasyMode()

"==== ESC ====
inoremap <silent> jj <ESC> "jキーを二度押しでESC

"==== その他 ====
set history=10000
set clipboard+=unnamed
