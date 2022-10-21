Class {
	#name : #ParallelepipedTest,
	#superclass : #TestCase,
	#instVars : [
		'basic',
		'custom'
	],
	#category : #'MyShapes-Tests'
}

{ #category : #running }
ParallelepipedTest >> setUp [
	super setUp.
	basic := Parallelepiped new.
	custom := Parallelepiped base: (Square side: 10) height: 6
	"Put here a common initialization logic for tests"
]

{ #category : #tests }
ParallelepipedTest >> testPrintOn [

self assert: basic printString equals: 'Parallelepiped with height 5 on Parallelogram[3,4,90]'.
self assert: custom printString equals: 'Parallelepiped with height 6 on Square[10]'
]

{ #category : #tests }
ParallelepipedTest >> testSideArea [

self assert: basic sideArea equals: 70.
self assert: custom sideArea equals: 240
]

{ #category : #tests }
ParallelepipedTest >> testTotalArea [

self assert: basic totalArea equals: basic sideArea + (basic baseArea * 2).
self assert: custom totalArea equals: custom sideArea + (custom baseArea * 2).
]

{ #category : #tests }
ParallelepipedTest >> testVolume [

self assert: basic volume equals: 60.
self assert: custom volume equals: 600 
]
