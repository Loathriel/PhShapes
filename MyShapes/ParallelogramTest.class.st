Class {
	#name : #ParallelogramTest,
	#superclass : #TestCase,
	#instVars : [
		'standart',
		'paral'
	],
	#category : #'MyShapes-Tests'
}

{ #category : #running }
ParallelogramTest >> setUp [
	super setUp.
	standart := Parallelogram new.
	paral := Parallelogram newWithSideA: 10 andSideB: 5 andGamma: 30
	"Put here a common initialization logic for tests"
]

{ #category : #tests }
ParallelogramTest >> testArea [ 

self assert: standart area closeTo: 12.
self assert: paral area closeTo: 25.
]

{ #category : #tests }
ParallelogramTest >> testCreation [
| testP |
testP := Parallelogram newWithSideA: 10 andSideB: 20 andGamma: 30.

self assert: testP a equals: 10.
self assert: testP b equals: 20.
self assert: testP gamma equals: 30.
]

{ #category : #tests }
ParallelogramTest >> testPerimeter [ 

self assert: paral perimeter equals: 30.
self assert: standart perimeter equals: 14
]

{ #category : #tests }
ParallelogramTest >> testPrintOn [

self assert: paral printString equals: 'Parallelogram[10,5,30]'.
self assert: standart printString equals: 'Parallelogram[3,4,90]'
]
