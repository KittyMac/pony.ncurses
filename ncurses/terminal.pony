use "lib:ncurses"

actor Terminal

	let terminal:Pointer[_Window]
	
	fun _tag():USize => 118
	
	//let mainWindow:Pointer[_Window]
	
	//fun _final() =>
		//_NCurses.endwin()
	
    fun ref _close() =>
   	  _NCurses.endwin()
	
	new create() =>
	
		terminal = _NCurses.initscr()
		_NCurses.refresh()
		
	    _NCurses.clear()
	    _NCurses.noecho()
	    _NCurses.cbreak()
		
		let maxX:I32 = _NCurses.getmaxx(terminal)
		let maxY:I32 = _NCurses.getmaxy(terminal)
		
		//_NCurses.mvwprintw(terminal, maxY-1, 0, "Ready Player One")
		_NCurses.wrefresh(terminal)
		
		//let offsetx:I32 = (_NCurses.getmaxx(terminal) - 50) / 2
		//let offsety:I32 = (_NCurses.getmaxy(terminal) - 20) / 2
		
		//mainWindow = _NCurses.newwin(20, 50, offsety, offsetx)
		//_NCurses.mvwprintw(mainWindow, 0, 0, "Ready Player One")
		//_NCurses.wrefresh(mainWindow)
				
		//_NCurses.getch()
		//_NCurses.delwin(mainWindow)
		//_NCurses.endwin()
	
	
	
	/*
		let screen = _NCurses.initscr()
		let maxX:I32 = _NCurses.getmaxx(screen)
		let maxY:I32 = _NCurses.getmaxy(screen)
		
		let mainWindow = _NCurses.newwin(maxY, maxX, 0, 0)
		//_NCurses.cbreak()
		//_NCurses.noecho()
		
	    _NCurses.clear()
	    _NCurses.noecho()
	    _NCurses.cbreak()
	    _NCurses.keypad(screen, true)
	    _NCurses.curs_set(0)
		
		
		
		
		_NCurses.mvwprintw(screen, maxY, 0, "Press any key to quit")
		//@fprintf[I64](@pony_os_stdout[Pointer[U8]](), "%d x %d\n".cstring(), cols, lines)
		*/