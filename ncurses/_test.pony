use "ponytest"

actor Main 
	new create(env: Env) =>
				
		let t = Terminal
	
		KeepAwake.sleep()
	
	// Required to keep pony memory usage down when dealing with large chunks of memory,
	// especially when dealing with "processor" actors who don't allocate memory themselves
	// they just pass messages
 	fun @runtime_override_defaults(rto: RuntimeOptions) =>
		rto.ponynoblock = true
		rto.ponygcinitial = 0
		rto.ponygcfactor = 1.0


actor KeepAwake
	be sleep() =>
		@sleep[U32](U32(10))
