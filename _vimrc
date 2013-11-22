execute pathogen#infect()
syntax enable
syntax on

"���������pathogen.vim
runtime bundle/vim-pathogen/autoload/pathogen.vim
call pathogen#infect()
filetype plugin indent on

set nocompatible
"source $VIMRUNTIME/vimrc_example.vim
source $VIMRUNTIME/mswin.vim
behave mswin

set diffexpr=MyDiff()
function MyDiff()
  let opt = '-a --binary '
  if &diffopt =~ 'icase' | let opt = opt . '-i ' | endif
  if &diffopt =~ 'iwhite' | let opt = opt . '-b ' | endif
  let arg1 = v:fname_in
  if arg1 =~ ' ' | let arg1 = '"' . arg1 . '"' | endif
  let arg2 = v:fname_new
  if arg2 =~ ' ' | let arg2 = '"' . arg2 . '"' | endif
  let arg3 = v:fname_out
  if arg3 =~ ' ' | let arg3 = '"' . arg3 . '"' | endif
  let eq = ''
  if $VIMRUNTIME =~ ' '
    if &sh =~ '\<cmd'
      let cmd = '""' . $VIMRUNTIME . '\diff"'
      let eq = '"'
    else
      let cmd = substitute($VIMRUNTIME, ' ', '" ', '') . '\diff"'
    endif
  else
    let cmd = $VIMRUNTIME . '\diff'
  endif
  silent execute '!' . cmd . ' ' . opt . arg1 . ' ' . arg2 . ' > ' . arg3 . eq
endfunction
set nocompatible
"filetype plugin on
" allow backspacing over everything in insert mode
set backspace=indent,eol,start
"set nobackup		" DON'T keep a backup file

set history=50		" keep 50 lines of command line history
set ruler			" show the cursor position all the time
set showcmd			" display incomplete commands
set incsearch		" do incremental searching
set tabstop=4
set ignorecase smartcase    "����ʱ���Դ�Сд
set nowrapscan              " ��ֹ���������ļ�����ʱ��������
set hlsearch                " ����ʱ������ʾ���ҵ����ı�


set number				" line numbers
set cindent
set autoindent
set mouse=a				" use mouse in xterm to scroll
set scrolloff=5 		" 5 lines bevore and after the current line when scrolling
set ignorecase			" ignore case
set smartcase			" but don't ignore it, when search string contains uppercase letters
set hid 				" allow switching buffers, which have unsaved changes
set shiftwidth=4		" 4 characters for indenting
set showmatch			" showmatch: Show the matching bracket for the last ')'?

set wrap				" "set nowrap" don't wrap by default
syn on
set completeopt=menu,longest,preview
set confirm

"��vim��ʾ������к�(IDLE�Ͳ���ʾ)
set nu
"�����ļ�����
"���ñ����ʽ, ��windows��cygwin�±�����cp936����, ����������ϵͳ��, ��utf-8.
"if (has("win32") || has("win32unix"))
"        set encoding=cp936"utf8
"else
"        set encoding=utf8
"endif
"set fileencodings=ucs-bom,utf-8,default,latin1,cp936,gb18030,big5
""""""""""""""""""""""""""""""""""""""
"set fenc=chinese
"set encoding=utf-8
"set langmenu=zh_CN.UTF-8
"language message zh_CN.UTF-8
"set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1
"""""""""""""""""""""""""""""""""""""""
"========���������������
set fenc=chinese
"�����ı�����ʾ����
set encoding=utf-8
set fileencodings=utf-8,chinese,latin-1
if has("win32")
	set fileencoding=chinese
else
	set fileencoding=utf-8
endif

"����˵����Ҽ��˵�����
source $VIMRUNTIME/delmenu.vim
source $VIMRUNTIME/menu.vim
"����consle�������
language messages zh_CN.utf-8
"========�����������

"��������������������4���ո���Ϊ������
set tabstop=4
set sts=4
set expandtab
set softtabstop=4
set shiftwidth=4
set cindent
set autoindent        "always set autoindenting on
set smartindent       "set smart indent
set smarttab          "use tabs at the start of a line, spaces elsewhere

set cinoptions={0,1s,t0,n-2,p2s,(03s,=.5s,>1s,=1s,:1s
set guifont=Consolas:h15
"�޸���������ɫ��VIMĬ�ϵİ׵׺����治զ��
set nobackup
colorscheme desert

"�����ı�����
"txt.vim
"http://calon.weblogs.us/tag/vim/
"http://www.vim.org/scripts/script.php?script_id=3365
set syntax=txt

"txtbrowser
"http://www.vim.org/scripts/script.php?script_id=2899
"au BufRead,BufNewFile *.txt setlocal ft=txt
"au BufRead,BufNewFile *.log setlocal ft=txt
"au BufRead,BufNewFile *.txt runtime ftplugin/txtfmt.vim
"au BufRead,BufNewFile *.txt runtime syntax/txtfmt.vim 
nmap <silent> <F10> <ESC>:Tlist<RETURN>)
noremap <silent> <F11> <ESC>:TlistUpdate<RETURN>
syntax on
filetype plugin on
au BufRead,BufNewFile *.txt setlocal ft=txt

"�����Զ�����
"set textwidth=78
"set formatoptions+=mM

"�������ⰴ��F5������Ϊvim����python�ĵ������൱���б�Ҫ�ġ�
map <F12> :! c:\python27\python.exe %


filetype on
let Tlist_Ctags_Cmd = 'D:\Cpp\Vim\vimfiles\ftplugin\ctags58\ctags58\ctags.exe'

"Tag list
let Tlist_Auto_Open = 1 
let Tlist_File_Fold_Auto_Close =1
let Tlist_GainFocus_On_ToggleOpen = 1 

map T :TaskList<CR>
map P :TlistToggle<CR>

set filetype=python
au BufNewFile,BufRead *.py,*.pyw setf python

"python.vim
"https://github.com/hdima/python-syntax
let python_highlight_all = 1


autocmd FileType python set omnifunc=pythoncomplete#Complete

"����ע��c-z��ȡ��ΪZZ
vmap <C-Z> :s/^/#/ <CR>
map Z :s/^##*//  <CR>
"vmap <C-ZZ> :s/^##*//  <CR>

"��ȫ
filetype plugin on
let g:pydiction_location = 'D:\Cpp\Vim\vimfiles\ftplugin\pydiction/complete-dict'
let g:pydiction_menu_height = 20

let g:miniBufExplMapWindowNavVim = 1
let g:miniBufExplMapWindowNavArrows = 1
let g:miniBufExplMapCTabSwitchBufs = 1
let g:miniBufExplModSelTarget = 1


let g:jedi#goto_assignments_command = "<leader>g"
let g:jedi#goto_definitions_command = "<leader>d"
let g:jedi#documentation_command = "K"
let g:jedi#usages_command = "<leader>n"
let g:jedi#completions_command = "<C-Space>"
let g:jedi#rename_command = "<leader>r"
let g:jedi#show_call_signatures = "1""execute pathogen#infect()" 

"pyflakes
"https://github.com/kevinw/pyflakes-vim
let g:pyflakes_use_quickfix = 0

"pydoc
"http://www.vim.org/scripts/script.php?script_id=910
let g:pydoc_cmd = 'python -m pydoc' 
let g:pydoc_open_cmd = 'tabnew' 

"vim-ps1
"https://github.com/PProvost/vim-ps1
let g:ps1_nofold_blocks = 1
let g:ps1_nofold_sig = 1

"ctrlP
"https://github.com/kien/ctrlp.vim
"git clone https://github.com/kien/ctrlp.vim.git bundle/ctrlp.vim
set runtimepath^=~\vimfiles/bundle/ctrlp.vim
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'


