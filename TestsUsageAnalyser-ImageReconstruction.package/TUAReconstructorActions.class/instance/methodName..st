testing
methodName: snapshot
	| completeMethodName methodNameWord |
	completeMethodName := ''.
	methodNameWord := (snapshot lineNumber: 1) substrings: ' '.
	methodNameWord size = 1
		ifTrue: [ completeMethodName := completeMethodName ,( methodNameWord at: 1) ]
		ifFalse: [ (methodNameWord select: [ :a | a matchesRegex: '.*\:' ]) do: [ :aWord | completeMethodName := completeMethodName , aWord ] ].
	^ completeMethodName