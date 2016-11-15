parsing
parseOn: context
	| start result eventsTrace |
	start := context events size.
	result := super parseOn: context.
	
	eventsTrace := PP2EventsTrace new
		events: context events;
		selectors: context nodes;
		positions: context positions;
		startPosition: start;
		stopPosition: context events size;
		yourself.
		
	context currentDebugResult children last eventsTrace: eventsTrace.
	^ result