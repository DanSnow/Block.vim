""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" File: Block.vim                                                            "
" Author: DanSnow <dododavid006@gmail.com                                    "
" Description: Auto open a block after press {<Enter> for most of language   "
" Repo: https://github.com/DanSnow/Block.vim                                 "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

if exists(g:block_vim_load)
  finish
else
  let g:block_vim_load = 1
endif

fu! BlockIgnoreFiletype(file_type)
  if !exists(g:block_ignore_file_type)
    let g:block_ignore_file_type = []
  endif
  if index(g:block_ignore_file_type, a:file_type) < 0
    join(g:block_ignore_file_type, a:file_type)
  endif
endfunc

fu! s:MapKey()
  if index(g:block_ignore_file_type, &filetype) < 0
    iunmap {<Cr>
    vunmap {<Cr>
    return
  else
    inoremap {<Cr> {<Cr>}<Esc>O
    vnoremap {<Cr> S{<Cr>}<Esc>Pk=iB
  endif
endfu

call BlockIgnoreFiletype('help')
call BlockIgnoreFiletype('markdown')
call BlockIgnoreFiletype('qf') " This is for the quickfix window
call BlockIgnoreFiletype('diff')
call BlockIgnoreFiletype('html')
call BlockIgnoreFiletype('less')
call BlockIgnoreFiletype('notes')

au BufRead,BufEnter * call s:MapKey()
