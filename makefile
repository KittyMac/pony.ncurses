all:
	/Volumes/Development/Development/pony/ponyc/build/release/ponyc -d -o ./build/ ./ncurses
	time ./build/ncurses
