Class {
	#name : #TriPrizmTest,
	#superclass : #TestCase,
	#instVars : [
		'basic',
		'custom'
	],
	#category : #'MyShapes-Tests'
}

{ #category : #running }
TriPrizmTest >> setUp [
	super setUp.
	basic := TriPrizm new.
	custom := TriPrizm base: (Triangle sideA: 10 sideB: 20 andAngle: 30) height: 4	
	"Put here a common initialization logic for tests"
]

{ #category : #tests }
TriPrizmTest >> testPrintOn [

self assert: basic printString equals: 'Triangular Prizm with height 5 on Triangle<3,3,60>'.
self assert: custom printString equals: 'Triangular Prizm with height 4 on Triangle<10,20,30>'
]

{ #category : #tests }
TriPrizmTest >> testSideArea [

self assert: basic sideArea equals: basic base perimeter * 5.
self assert: custom sideArea equals: custom base perimeter * 4
]

{ #category : #tests }
TriPrizmTest >> testTotalArea [

self assert: basic totalArea equals: basic sideArea + (basic baseArea * 2).
self assert: custom totalArea equals: custom sideArea + (custom baseArea * 2)
]

{ #category : #tests }
TriPrizmTest >> testVolume [

self assert: basic volume equals: basic baseArea * 5.
self assert: custom volume equals: custom baseArea * 4
]
