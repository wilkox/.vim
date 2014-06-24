" Vim-orgmode
filetype plugin indent on

" use the + register for the OS X clipboard
runtime bundle/vim-fakeclip/autoload/fakeclip.vim

" perl skeleton
au BufNewFile *.pl 0r ~/.vim/perl.skel

" Jump to search results as I type
set incsearch

"use pathogen to manage plugins
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

  set hlsearch
  set smartindent

  "recognise .md as .markdown
  au BufNewFile,BufRead *.md set filetype=markdown

  " set the foldmethod to indent, but folding turned off by default
  set foldmethod=indent 
  set foldnestmax=10      "deepest fold is 10 levels
  set nofoldenable        "dont fold by default
  set foldlevel=1         "this is just what i use
  "

  "recognise .less as css
  au BufNewFile,BufRead *.less set filetype=css

  "auto 2-space indent for ruby
  if has("autocmd")
  augroup ruby
  au BufReadPre,FileReadPre set kp=ri sw=2 ts=2 expandtab
  augroup END
  endif

  "use CloseTag for HTML
  autocmd FileType html,htmldjango,jinjahtml,eruby,mako let b:closetag_html_style=1
  autocmd FileType html,xhtml,xml,htmldjango,jinjahtml,eruby,mako source ~/.vim/bundle/closetag/plugin/closetag.vim

  "use Solarized colour scheme
  syntax enable
  set background=dark
  let g:solarized_termtrans=1
  let g:solarized_contrast="high"
  let g:solarized_visibility="high"
  colorscheme solarized

  "vim-indent-guides
  set ts=2 sw=2 et
  let g:indent_guides_start_level = 2
  let g:indent_guides_guide_size = 1
  let g:indent_guides_enable_on_vim_startup = 1

  "OmniComplete
  filetype plugin on
  set ofu=syntaxcomplete#Complete
  let g:SuperTabDefaultCompletionType = "context"
  "Disable scanning included files
  "Gets really annoying when it tries to scan through included Perl
  " modules
  set complete-=i

" Uncomment the following to have Vim jump to the last position when
" reopening a file
if has("autocmd")
  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
    \| exe "normal g'\"" | endif
endif

" Lines added by the Vim-R-plugin command :RpluginConfig (2014-Apr-10 17:36):
syntax on

" Force Vim to use 256 colors if running in a capable terminal emulator:
if &term =~ "xterm" || &term =~ "256" || $DISPLAY != "" || $HAS_256_COLORS == "yes"
    set t_Co=256
endif

" Automatically fold perl subs
set foldmethod=syntax
set foldlevelstart=1
let perl_fold=1
