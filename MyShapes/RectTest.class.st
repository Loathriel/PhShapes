Class {
	#name : #RectTest,
	#superclass : #TestCase,
	#category : #'MyShapes-Tests'
}

{ #category : #tests }
RectTest >> testArea [
  | a b |
 a := Rect new.
 b := Rect width: 5 height: 10.
 self assert: a area equals: 12.
 self assert: b area equals: 50.
]

{ #category : #tests }
RectTest >> testCreation [ 
 | r |
r := Rect width: 5 height: 4.
self assert: r a equals: 5.
self assert: r b equals: 4.
self assert: r area equals: 20.

self should: [ Rect newWithSideA: 2 andSideB: 3 andGamma: 4 ] raise: Error.
]

{ #category : #tests }
RectTest >> testDiagonal [

self assert: (Rect width: 3 height: 4) diagonal equals: 5
]

{ #category : #tests }
RectTest >> testInitialize [

| r |
r := Rect new.
self assert: r a equals: 3.
self assert: r b equals: 4.
self assert: r area equals: 12.
]

{ #category : #tests }
RectTest >> testPerimeter [
self assert: Rect new perimeter equals: 14.
self assert: (Rect width: 5 height: 10) perimeter equals: 30.
]
