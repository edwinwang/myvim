set nocompatible
filetype off 
"����Ĭ���к�
set nu
"���ã����Ʊ�����Ϊ4
set tabstop=4
set softtabstop=4
"�����Զ�����
set autoindent
"���������ո���Ϊ4
set shiftwidth=4
"�ո�����Ʊ��
set expandtab
"���� ʹ��C/C++���Ե��Զ�������ʽ
set cindent
"��������
set smartindent
"�﷨����
syntax enable
syntax on
"��ɫ����
colorscheme desert
"��״̬����ʾ�������������
set showcmd
"<F2> �����ر��к���ʾ
nnoremap <F2> :set nonumber!<CR>
"���ն��´�256ɫ
set t_Co=256
"������ʱ��ʵʱ��ʾ���
set incsearch
"�����������
set hlsearch
"��ֹѭ������
set nowrapscan
"����ƥ��ģʽ����ʾƥ�������
set showmatch
"�ļ������Զ�ʶ��
"filetype plugin on
"filetype plugin indent on
"���ܲ�ȫ
set completeopt=longest,menu
"������ʷ��¼50��
set history=50
" ����ʾ���һ�����ڵ�״̬�У���Ϊ1�򴰿�������һ����ʱ����ʾ���һ�����ڵ�״̬�У�0����ʾ���һ�����ڵ�״̬��
" set laststatus=2
" ��ߣ�������ʾ���λ�õ��кź��кţ����ŷָ���ÿ�����ڶ����Լ��ı�ߡ����������״̬�У������������ʾ����������ʾ����Ļ�����һ���ϡ�
set ruler
"�����Զ���ȫ
:inoremap ( ()<ESC>i
:inoremap { {<CR>}<ESC>O
:inoremap [ []<ESC>i
" �۵�����
set foldmethod=syntax " ���﷨�����������۵�
set foldlevel=100 " ����vimʱ��Ҫ�Զ��۵�����

" allow backspacing over everything in insert mode
set backspace=indent,eol,start
" pressing < or > will let you indent/unident selected lines
vnoremap < <gv
vnoremap > >gv
"##################################################
"####################VUNDLE########################
"##################################################
set rtp+=~/vimfiles/bundle/Vundle.vim
let path='~/vimfiles/bundle'
call vundle#begin(path)

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'
Plugin 'vim-scripts/taglist.vim'
Plugin 'bling/vim-airline'
Plugin 'vim-scripts/winmanager'
Plugin 'vim-scripts/a.vim'
Plugin 'kien/ctrlp.vim'
Plugin 'vim-scripts/OmniCppComplete'
Plugin 'moll/vim-bbye'


call vundle#end()            " required
filetype plugin indent on    " required

" Brief help
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install(update) bundles
" :BundleSearch(!) foo - search(or refresh cache first) for foo
" :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
"##################################################

"################################################
"###################NERDTREE#####################
"################################################
" nerdtree����
" ���Ƶ�����ƶ�����һ������ʱ���Ƿ��Զ������������������
let NERDTreeAutoCenter=1
" ָ�����ģʽ��1.˫���򿪣�2.��Ŀ¼˫�ļ���3.�����򿪣�
" let NERDTreeMouseMode=2
" �Ƿ�Ĭ����ʾ��ǩ�б�
" let NERDTreeShowBookmarks=1
" �Ƿ�Ĭ����ʾ�ļ�
let NERDTreeShowFiles=1
" �Ƿ�Ĭ����ʾ�����ļ�
" let NERDTreeShowHidden=1
" �Ƿ�Ĭ����ʾ�к�
" let NERDTreeShowLineNumbers=1
" ����λ�ã�'left' or 'right'��
" let NERDTreeWinPos='left'
" ���ڿ�
let NERDTreeWinSize=31
"##############################################

"#############################################
"################CTAG########################
"############################################
let Tlist_Show_One_File=1 " 0Ϊͬʱ��ʾ����ļ������б�,1��ֻ��ʾ��ǰ�ļ������б�
let Tlist_Auto_Update=1
let Tlist_File_Fold_Auto_Close=1 " �ǵ�ǰ�ļ��������б��۵�����
let Tlist_Exit_OnlyWindow=1 "���taglist�����һ�����ڣ����˳�vim 
let Tlist_Auto_Update=1            "Automatically update the taglist to include newly edited files.
"��taglist���ڷ�����Ļ���Ҳ࣬ȱʡ�����
"let Tlist_Use_Right_Window=1 
"��ʾtaglist�˵�
"let Tlist_Show_Menu=1
"����vim�Զ���taglist
"let Tlist_Auto_Open=1
" ctags, ָ��tags�ļ���λ��,��vim�Զ��ڵ�ǰ�����ϲ��ļ�����Ѱ��tags�ļ�
set tags=tags
" ���ϵͳ����·��
"set tags+=/usr/include/tags
"���󶨣�ˢ��tags
nmap tg :!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q *<CR>:set tags+=./tags<CR>
"################################################

"#################################################
"#################WINMANAGER######################
"#################################################
" WinManager����
" NERD_Tree���ɵ�WinManager
let g:NERDTree_title="[NERDTree]" 
function! NERDTree_Start()
    exec 'NERDTree'
endfunction
 
function! NERDTree_IsValid()
    return 1
endfunction
 
" ����ӳ�䣬ͬʱ�����ֹ��winmanager��nerdtree��ͻ�����¿հ�ҳ�����
nmap wm :if IsWinManagerVisible() <BAR> WMToggle<CR> <BAR> else <BAR> WMToggle<CR>:q<CR> endif <CR><CR>
" ����winmanager�Ŀ�ȣ�Ĭ��Ϊ25
let g:winManagerWidth=30 
" ���ڲ���
let g:winManagerWindowLayout='NERDTree|TagList'
" ������б༭�ļ����ر��ˣ��˳�vim
let g:persistentBehaviour=0
"#######################################################

"###################################################
"################vim-airline######################
"#################################################
" airline����
set laststatus=2
" ʹ��powerline�������������
let g:airline_powerline_fonts = 1
" ����tabline
let g:airline#extensions#tabline#enabled = 1
" tabline�е�ǰbuffer���˵ķָ��ַ�
let g:airline#extensions#tabline#left_sep = ' '
" tabline��δ����buffer���˵ķָ��ַ�
let g:airline#extensions#tabline#left_alt_sep = '|'
" tabline��buffer��ʾ���
let g:airline#extensions#tabline#buffer_nr_show = 1
" ӳ���л�buffer�ļ�λ
nnoremap [b :bp<CR>
nnoremap ]b :bn<CR>
"####################################################

"###########################################
"#################vim-Bye##################
"###########################################
" Bbye����
" ����ԭ����:bd��ɾ����ǰbufferʱ�Ὣ�������ڹرգ���ʹ��Bbye��:Bd
nnoremap bd :Bd<CR>
"#####################################################

"####################################################
"################NERD_commenter ����ע��#############
"####################################################
map <F9> <leader>cc
map <F10> <leader>cu
"##############################################