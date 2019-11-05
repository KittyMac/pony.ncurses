// Original version: https://github.com/jtfmumm/novitiate/blob/master/src/display/ncurses/ncurses.pony

use "lib:ncurses"

primitive _Window

primitive _NCurses
	// Windows
	fun initscr(): Pointer[_Window] => 
		@initscr[Pointer[_Window]]()
		
	fun newwin(nlines: I32, ncolumns: I32, begin_y: I32, begin_x: I32): Pointer[_Window] =>
		@newwin[Pointer[_Window]](nlines, ncolumns, begin_y, begin_x)
		
	fun delwin(w: Pointer[_Window]) => 
		@delwin[None](w)
		
	fun endwin() =>
		@endwin[None]()

	// Initialization
	fun noecho() =>
		@noecho[None]()
	fun cbreak() =>
		@cbreak[None]()
	fun keypad(w: Pointer[_Window], bf: Bool) =>
		@keypad[None](w, bf)
	fun curs_set(option: I32) =>
		@curs_set[None](option)

	// State changes
	fun clear() =>
		@clear[None]()
	fun wclear(window: Pointer[_Window]) =>
		@wclear[None](window)
	fun refresh() =>
		@refresh[None]()
	fun wrefresh(window: Pointer[_Window]) =>
		@wrefresh[None](window)
	fun erase(row: I32, column: I32) =>
		@erase[None](row, column)

	// Output
	fun printw(s: String) =>
		@printw[None](s.cstring())
	fun wprintw(window: Pointer[_Window], s: String) =>
		@wprintw[None](window, s.cstring())
	fun mvprintw(row: I32, column: I32, s: String) =>
		@mvprintw[None](row, column, s.cstring())
	fun mvwprintw(window: Pointer[_Window], row: I32, column: I32, s: String) =>
		@mvwprintw[None](window, row, column, s.cstring())
	fun mvaddch(row: I32, column: I32, char_string: String) =>
		try
			let char = char_string.array()(0)?
			@mvaddch[None](row, column, char)
		end
	
	fun mvwaddch(window: Pointer[_Window], row: I32, column: I32, char_string: String) =>
		try
			let char = char_string.array()(0)?
			@mvwaddch[None](window, row, column, char)
		end
	
	// Input
	fun getch(): I32 =>
		@getch[I32]()

	// Color
	fun start_color() =>
		@start_color[None]()
	fun init_pair(pair_id: I32, foreground: I32, background: I32) =>
		@init_pair[None](pair_id, foreground, background)

	fun switch_on_pair(id: I32) =>
		@attron[None](id << 8)
	fun wswitch_on_pair(window: Pointer[_Window], id: I32) =>
		@wattron[None](window, id << 8)
	fun switch_off_pair(id: I32) =>
		@attroff[None](id << 8)
	fun wswitch_off_pair(window: Pointer[_Window], id: I32) =>
		@wattroff[None](window, id << 8)
	
	
	fun getmaxx(window: Pointer[_Window]):I32 =>
		@getmaxx[I32](window)
	fun getmaxy(window: Pointer[_Window]):I32 =>
		@getmaxy[I32](window)
		/*
	int getattrs(const WINDOW *win);
	int getbegx(const WINDOW *win);
	int getbegy(const WINDOW *win);
	int getcurx(const WINDOW *win);
	int getcury(const WINDOW *win);
	int getmaxx(const WINDOW *win);
	int getmaxy(const WINDOW *win);
	int getparx(const WINDOW *win);
	int getpary(const WINDOW *win);*/
