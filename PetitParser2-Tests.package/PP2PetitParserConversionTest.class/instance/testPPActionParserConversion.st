test - conversion
testPPActionParserConversion
	| converted parser block |
	block := [ :e | e ].
	parser := nil asParser ==> block.
		
	converted := parser asPetit2Node.
	self assert: (converted isKindOf: PP2ActionParser).
	self assert: (converted block == block).