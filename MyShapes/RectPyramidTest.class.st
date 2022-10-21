Class {
	#name : #RectPyramidTest,
	#superclass : #TestCase,
	#instVars : [
		'basic',
		'custom'
	],
	#category : #'MyShapes-Tests'
}

{ #category : #running }
RectPyramidTest >> setUp [
	super setUp.
	basic := RectPyramid new.
	custom := RectPyramid base: (Square side: 10) height: 6	
	"Put here a common initialization logic for tests"
]

{ #category : #tests }
RectPyramidTest >> testPrintOn [

self assert: basic printString equals: 'Rectangular Pyramid with height 5 on Parallelogram[3,4,90]'.
self assert: custom printString equals: 'Rectangular Pyramid with height 6 on Square[10]'
]

{ #category : #tests }
RectPyramidTest >> testSideArea [

self assert: custom sideArea equals: 20 * 61 sqrt.
self assert: basic sideArea closeTo: (4 * 27.25 sqrt) + (3 * 29 sqrt).
]

{ #category : #tests }
RectPyramidTest >> testTotalArea [

self assert: basic totalArea equals: basic sideArea + basic baseArea.
self assert: custom totalArea equals: custom sideArea + custom baseArea.
]

{ #category : #tests }
RectPyramidTest >> testVolume [

self assert: basic volume equals: 20.
self assert: custom volume equals: 200 
]
