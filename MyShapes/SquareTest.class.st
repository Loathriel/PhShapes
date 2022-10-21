Class {
	#name : #SquareTest,
	#superclass : #TestCase,
	#category : #'MyShapes-Tests'
}

{ #category : #tests }
SquareTest >> testCreation [ 
self assert: (Square side: 3) a equals: 3.
self assert: (Square side: 7) b equals: 7.

self should: [ Square newWithSideA: 2 andSideB: 3 andGamma: 4 ] raise: Error.
self should: [ Square width: 2 height: 3 ] raise: Error.
]

{ #category : #tests }
SquareTest >> testInR [ 
self assert: Square new inR equals: 2.5.

]

{ #category : #tests }
SquareTest >> testInitialize [ 

| s |
s := Square new.
self assert: s a equals: s b.
self assert: s a equals: 5.
self assert: s area equals: 25.
]
