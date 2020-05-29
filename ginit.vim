Guifont! Consolas:h14

if exists('g:GtkGuiLoaded')
    call rpcnotify(1, 'Gui', 'Option', 'Popupmenu', 1)
    call rpcnotify(1, 'Gui', 'Font', 'Liberation Mono 10')
    NERDTreeClose
endif
