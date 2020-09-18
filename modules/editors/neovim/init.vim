"Allow filetype plugins and syntax highlighting
set autoindent
filetype plugin indent on
syntax on
:let mapleader = ' '
let g:EasyMotion_do_mapping = 0
nmap s <Plug>(easymotion-overwin-f)
nmap j <Plug>(easymotion-overwin-f2)
let g:EasyMotion_smartcase = 1
map <Leader>a  <Plug>(easymotion-j)
map <Leader>e <Plug>(easymotion-k)
let g:EasyMotion_keys = 'rnstaouphdfvmb.ie'
nnoremap a j
vnoremap a j
noremap e k
vnoremap e k
nnoremap i h
vnoremap i h
noremap o l
vnoremap o l
noremap j ;
noremap r i
noremap , o
noremap l e
noremap L E
noremap H B
noremap h b
noremap n a
noremap N A
noremap t w
noremap T W
noremap w ^
noremap ; $
noremap b t
noremap R I
noremap B T
noremap j n
noremap < O
noremap <C-,> <
noremap <C-.> >
noremap Y y$n
noremap D d$
noremap C c$
noremap Q @
noremap = .
noremap <C-j> J
noremap J N
noremap P ^
noremap <BS> x
noremap k <C-D>
noremap . <C-U>
noremap - %
noremap <C--> <C-x>
noremap <C-=> <C-a>
noremap <M-,> <C-o>
noremap <C-M-,> <C-i>

inoremap <C-p> <C-r>+
cnoremap <C-p> <C-r>+
vmap <C-c> "+y

noremap p "0p
" noremap P "0P
for s:i in ['"','*','+','-','.',':','%','/','=','1','2','3','4','5','6','7','8','9','a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z']
	execute 'noremap "'.s:i.'p "'.s:i.'p'
	execute 'noremap "'.s:i.'P "'.s:i.'P'
endfor
noremap <LEADER>d "0d
noremap <LEADER>D "0D
