Class {
	#name : #CylinderTest,
	#superclass : #TestCase,
	#instVars : [
		'basic',
		'custom'
	],
	#category : #'MyShapes-Tests'
}

{ #category : #running }
CylinderTest >> setUp [
	super setUp.
	basic := Cylinder new.
	custom := Cylinder base: (Circle radius: 5) height: 2
	"Put here a common initialization logic for tests"
]

{ #category : #tests }
CylinderTest >> testPrintOn [

self assert: basic printString equals: 'Cylinder with height 5 on Circle(1)'.
self assert: custom printString equals: 'Cylinder with height 2 on Circle(5)'
]

{ #category : #tests }
CylinderTest >> testSideArea [

self assert: basic sideArea closeTo: Float pi * 10.
self assert: custom sideArea closeTo: Float pi * 20
]

{ #category : #tests }
CylinderTest >> testTotalArea [

self assert: basic totalArea equals: basic sideArea + (basic baseArea * 2).
self assert: custom totalArea equals: custom sideArea + (custom baseArea * 2)
]

{ #category : #tests }
CylinderTest >> testVolume [

self assert: basic volume closeTo: Float pi * 5.
self assert: custom volume closeTo: Float pi * 50.
]
