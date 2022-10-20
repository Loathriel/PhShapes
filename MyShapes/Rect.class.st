Class {
	#name : #Rect,
	#superclass : #Parallelogram,
	#category : #'MyShapes-Shapes'
}

{ #category : #'instance creation' }
Rect class >> newWithSideA: aNumber andSideB: bNumber andGamma: grad [
	^ self error: 'Use width: height: to create rectangle'
]

{ #category : #'instance creation' }
Rect class >> width: w height: h [
^ super newWithSideA: w andSideB: h andGamma: 90
]

{ #category : #calculating }
Rect >> area [
 ^ a * b
]

{ #category : #'row/column operations' }
Rect >> diagonal [
^ (a squared + b squared) sqrt
]

{ #category : #initialization }
Rect >> initialize [
	a := 3.
	b := 4.
	gamma := 90 degreesToRadians.
]

{ #category : #'as yet unclassified' }
Rect >> outR [
^ self diagonal / 2
]

{ #category : #printing }
Rect >> printOn: aStream [
   aStream nextPutAll: 'Rectangle['.
	a printOn: aStream.
	aStream nextPut: $x.
	b printOn: aStream.
	aStream nextPut: $]
]
