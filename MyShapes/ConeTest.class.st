Class {
	#name : #ConeTest,
	#superclass : #TestCase,
	#instVars : [
		'basic',
		'custom'
	],
	#category : #'MyShapes-Tests'
}

{ #category : #running }
ConeTest >> setUp [
	super setUp.
	basic := Cone new.
	custom := Cone base: (Circle radius: 5) height: 2
	"Put here a common initialization logic for tests"
]

{ #category : #tests }
ConeTest >> testPrintOn [

self assert: basic printString equals: 'Cone with height 5 on Circle(1)'.
self assert: custom printString equals: 'Cone with height 2 on Circle(5)'
]

{ #category : #tests }
ConeTest >> testSideArea [

self assert: basic sideArea closeTo: Float pi * 26 sqrt.
self assert: custom sideArea closeTo: Float pi * 29 sqrt * 5
]

{ #category : #tests }
ConeTest >> testTotalArea [

self assert: basic totalArea equals: basic sideArea + basic baseArea.
self assert: custom totalArea equals: custom sideArea + custom baseArea.
]

{ #category : #tests }
ConeTest >> testVolume [

self assert: basic volume closeTo: Float pi * 5 / 3.
self assert: custom volume closeTo: Float pi * 50 / 3.
]
