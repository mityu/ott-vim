if exists('b:did_ftplugin')
  finish
endif
let b:did_ftplugin = 1

setlocal comments=:%

setlocal commentstring=%\ %s

setlocal formatoptions-=t formatoptions+=croql

if !exists('b:undo_ftplugin')
  let b:undo_ftplugin = ''
elseif b:undo_ftplugin !=# ''
  let b:undo_ftplugin .= '|'
endif
let b:undo_ftplugin .= 'setlocal comments< commentstring< formatoptions<'
