Class {
	#name : #TriPyramidTest,
	#superclass : #TestCase,
	#instVars : [
		'basic',
		'custom'
	],
	#category : #'MyShapes-Tests'
}

{ #category : #running }
TriPyramidTest >> setUp [
	super setUp.
	basic := TriPyramid new.
	custom := TriPyramid base: (Triangle sideA: 10 sideB: 20 andAngle: 30) height: 4	
	"Put here a common initialization logic for tests"
]

{ #category : #tests }
TriPyramidTest >> testPrintOn [

self assert: basic printString equals: 'Triangular Pyramid with height 5 on Triangle<3,3,60>'.
self assert: custom printString equals: 'Triangular Pyramid with height 4 on Triangle<10,20,30>'
]

{ #category : #tests }
TriPyramidTest >> testTotalArea [

self assert: basic totalArea equals: basic sideArea + basic baseArea.
self assert: custom totalArea equals: custom sideArea + custom baseArea.
]

{ #category : #tests }
TriPyramidTest >> testVolume [

self assert: basic volume equals: basic baseArea * 5/3.
self assert: custom volume equals: custom baseArea * 4/3
]
