if has('nvim')
	" Neovim specific commands
	"
	" Specify a directory for plugins
	call plug#begin('~/.config/nvim/plugged')
	" Make sure you use single quotes
	Plug 'junegunn/vim-easy-align'
	Plug 'zxqfl/tabnine-vim', { 'on': [] }
	Plug 'numirias/semshi', {'do': ':UpdateRemotePlugins'}
	Plug 'octol/vim-cpp-enhanced-highlight'
	Plug 'jnurmine/zenburn'
	Plug 'tpope/vim-surround'
	Plug 'neoclide/coc.nvim', {'branch': 'release'}, { 'on': [] }
	Plug 'lervag/vimtex'
	Plug 'sirver/ultisnips'
	Plug 'KeitaNakamura/tex-conceal.vim'
	" Initialize plugin system
	call plug#end()
	"

	if has('persistent_undo')
		set undofile
		set undodir=$HOME/.config/nvim/undo  "directory where the undo files will be stored
	endif     

	" { 'on' : [] } disables a plugin

	" Autocompile groff/troff *.ms docs to pdf
	"autocmd BufWritePost *.ms silent! execute "!groff -e % -ms -Tpdf"

	" Latex:
	let g:tex_flavor='latex'
	let g:vimtex_view_method='zathura'
	let g:vimtex_quickfix_mode=0
	set conceallevel=1
	let g:tex_conceal='abdmg'

	" tex-conceal:
	set conceallevel=1
	let g:tex_conceal='abdmg'
	hi Conceal ctermbg=none

	" Snippets:
	let g:UltiSnipsExpandTrigger = '<tab>'
	let g:UltiSnipsJumpForwardTrigger = '<tab>'
	let g:UltiSnipsJumpBackwardTrigger = '<s-tab>'
	let g:UltiSnipsSnippetDirectories=[$HOME.'/.config/nvim/UltiSnips']


	setlocal spell
	set spelllang=en_us
	inoremap <C-l> <c-g>u<Esc>[s1z=`]a<c-g>u

	colors zenburn
else
    " Standard vim specific commands
    " NTS: Adjust plug#begin first
endif


" https://github.com/gillescastel/latex-snippets
