" ============================================================================
" File:        plugin/nuake.vim
" Description: A Quake-style terminal panel for Neovim.
" Author:      Lenovsky <lenovsky@protonmail.ch>
" Source:      https://github.com/Lenovsky/nuake
" Licence:     MIT
" Version:     0.0
" ============================================================================

"Initialization {{{1

if !has('nvim')
    echohl WarningMsg
    echomsg 'Nuake: Nuake requires Neovim'
    echohl None
    finish
endif

let options = [
    \ ['position', 0],
    \ ['size', 0.25],
\ ]

for [opt, val] in options
    if !exists('g:nuake_' . opt)
        execute 'let g:nuake_' . opt . ' = ' . string(val)
    endif
endfor

" Commands {{{1
command! -nargs=0 Nuake         call nuake#ToggleWindow()

" Modeline {{{1
" vim: ts=8 sw=4 sts=4 et foldenable foldmethod=marker foldcolumn=1