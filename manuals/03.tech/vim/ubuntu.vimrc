"#################################################
"
" VIM Configuration
"
"     sudo apt-get install terminator ctags
"
"     ctrl+shift+e = vertical split window
"     ctrl+shift+o = horizontal split window
"     shift+- = font zoom out
"     shift++ = font zoom in
"#################################################
" ###
" ###HotKey
" ###
" shift+v = line visual mode
" ctrl+v = block visual mode
" v = visual mode
" R = replace mode
" ============File Edit
" p = paste                                                                   
" u = undo
" yy = copy line
" dd = delete line
" <select>+y = copy selected
" <select>+d = delete selected
" ============Word Edit
" r+<char> = replace with char
" yw = copy word
" dw = delete word
" w/b/e = go to next/prev word
" W/B/E = go to next/prev word
" ============Goto 
" h/j/k/l = go right/down/up/left
" gg/[[ = go to file start
" G/]] = go to file end 
" ctrl+o = go back
" ctrl+i = go prev
" ctrl+f/b = next/prev page
" ctrl+u/d = next/prev half page
" ^ = go to line start
" 0 = go to line start
" $ = go to line end
" ============Search
" shift+% = search {}()[]
" shift+# = search current world
" shift+* = search current world
" ctrl+o/i: cursor go back or previous
" shift+n = search prev
" n = search next
"#################################################
" ###                                                                         
" ###Command Line Mode
" ###
" :wq! = force save and exit
" :[rang]s/[[^]old[$]]/[new]/[flags] = text line replace
"    s means substitude
"    [rang]
"        1,$ = % = replace in whole file
"        2,5 = relace in select lines
"        1,. = replace from the 1st line to the current line
"        .,$ = replace from current line to the last line
"        '<,'> = selected
"    [flags]
"        g = relace all
"        c = confirm before replace
" :!<shell command> = run shell command
" :<string> = search string
" :<string>\c = search string case insensitive
" :<number> = go to line number
" /<string> = seach string
" /\<string\> = search whole word
"#################################################
" :set paste
" :set nonumber
"#################################################
syntax on
set history=100
" Use shift+mouse in vim when mouse=a
set mouse=a
set encoding=utf-8
set nocompatible
set number
set hlsearch
set cindent
set showmatch
set cursorline
set ruler
set laststatus=2
set cmdheight=1
set statusline=\ %<%F[%1*%M%*%n%R%H]%=\ %y\ %0(%{&fileformat}\ %{&encoding}\ %c:%l/%L%)\
set fileencodings=utf-8,ucs-bom,gb18030,gbk,gb2312,cp936
set termencoding=utf-8
set encoding=utf-8
"set nowritebackup
set nobackup
set noswapfile
set noundofile

set shiftwidth=4 "Set indent length
set tabstop=4 "Set tab length
set softtabstop=4 "Set backspace length
set expandtab "Use space indent
"set noexpandtab "Use tab indent

"#################################################                            
"git clone https://github.com/scrooloose/nerdtree.git ~/.vim/nerdtree
"git clone https://github.com/vim-scripts/taglist.vim.git ~/.vim/taglist
"git clone https://github.com/majutsushi/tagbar.git ~/.vim/tagbar
set rtp+=~/.vim/nerdtree
set rtp+=~/.vim/tagbar
set rtp+=~/.vim/taglist

"#################################################                            
let NERDTreeShowHidden=1
let NERDTreeIgnore=[]

"#################################################                            
"let g:tagbar_autoclose=1
let g:tagbar_sort = 0
let g:tagbar_show_linenumbers = 1

"#################################################                            
let Tlist_Auto_Open=1
let Tlist_File_Fold_Auto_Close=1 
let Tlist_Use_Right_Window=1
let Tlist_Exit_OnlyWindow=1
"let Tlist_Show_One_File=1
"let Tlist_Enable_Fold_Column=0

"#################################################                            
let g:bufExplorerFindActive=0

"#################################################                            
map <F2> :NERDTreeToggle<CR>
map <F3> :Tlist<CR>
map <F4> :TagbarToggle<CR>
"map <F4> :ToggleBufExplorer<CR>

nnoremap U <C-r>
nnoremap h <Left>
nnoremap j <Down>
nnoremap k <Up>
nnoremap l <Right>
nnoremap H <Home>
nnoremap J <PageDown>
nnoremap K <PageUp>
nnoremap L <End>

inoremap <C-h> <Left>
inoremap <C-l> <Right>
inoremap <C-j> <Down>
inoremap <C-k> <Up>

