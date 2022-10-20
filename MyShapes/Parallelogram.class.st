Class {
	#name : #Parallelogram,
	#superclass : #FlatShape,
	#instVars : [
		'a',
		'b',
		'gamma'
	],
	#category : #'MyShapes-Shapes'
}

{ #category : #'instance creation' }
Parallelogram class >> newWithSideA: aNumber andSideB: bNumber andGamma: grad [
	^ self new a: aNumber; b: bNumber; gamma: grad
]

{ #category : #accessing }
Parallelogram >> a [

	^ a
]

{ #category : #accessing }
Parallelogram >> a: aNumber [
a := aNumber max: 0.01
]

{ #category : #calculating }
Parallelogram >> area [ 
^ a * b * gamma sin
]

{ #category : #accessing }
Parallelogram >> b [

	^ b
]

{ #category : #accessing }
Parallelogram >> b: aNumber [
b := aNumber max: 0.01
]

{ #category : #'row/column operations' }
Parallelogram >> diagonal [
^ (a squared + b squared - (2 * a * b * gamma cos)) sqrt
]

{ #category : #accessing }
Parallelogram >> gamma [

	^ gamma
]

{ #category : #accessing }
Parallelogram >> gamma: aNumber [
gamma := ((aNumber max: 0.01) min: 179.99) degreesToRadians 
]

{ #category : #initialization }
Parallelogram >> initialize [ 
	a := 3.
	b := 4.
	gamma := 90 degreesToRadians.
]

{ #category : #accessing }
Parallelogram >> perimeter [
^ (a + b) * 2
]
