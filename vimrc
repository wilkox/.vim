"use pathogen to manage plugins
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

set hlsearch
set smartindent

"recognise .md as .markdown
au BufNewFile,BufRead *.md set filetype=markdown

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
"let g:solarized_termcolors=256
let g:solarized_contrast="high"
let g:solarized_visibility="high"
colorscheme solarized

"vim-indent-guides
set ts=2 sw=2 et
let g:indent_guides_start_level = 2
let g:indent_guides_guide_size = 1
let g:indent_guides_enable_on_vim_startup = 1
