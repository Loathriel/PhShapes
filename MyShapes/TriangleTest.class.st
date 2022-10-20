Class {
	#name : #TriangleTest,
	#superclass : #TestCase,
	#instVars : [
		'triangle',
		'custom'
	],
	#category : #'MyShapes-Tests'
}

{ #category : #running }
TriangleTest >> setUp [
	super setUp.
	
	triangle := Triangle new.
	custom := Triangle sideA: 3 sideB: 4 andAngle: 90
]

{ #category : #tests }
TriangleTest >> testArea [ 

self assert: triangle area closeTo: 3.9 precision: 0.1.
self assert: custom area closeTo: 6
]

{ #category : #tests }
TriangleTest >> testPerimeter [ 

self assert: triangle perimeter closeTo: 9.
self assert: custom perimeter closeTo: 12
]

{ #category : #tests }
TriangleTest >> testSideC [

	self assert: triangle sideC closeTo: 3.
	self assert: custom sideC closeTo: 5
]
