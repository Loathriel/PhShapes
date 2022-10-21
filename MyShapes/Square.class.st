Class {
	#name : #Square,
	#superclass : #Rect,
	#category : #'MyShapes-Shapes'
}

{ #category : #'instance creation' }
Square class >> newWithSideA: aNumber andSideB: bNumber andGamma: grad [
	^ self error: 'Use side: to create square'
]

{ #category : #accessing }
Square class >> side: w [
"^ self new a: w; b: w"
^self new a: w.
]

{ #category : #'instance creation' }
Square class >> width: a height: b [
"^ self side: a"
^ self error: 'Use side: to create a square' 
]

{ #category : #accessing }
Square >> a: aNumber [

b := a := aNumber max: 0.1
]

{ #category : #accessing }
Square >> b: aNumber [

self error: 'Can''t change b in ', self className 
]

{ #category : #calculating }
Square >> inR [
^ self a / 2
]

{ #category : #initialization }
Square >> initialize [ 
	a := 5. 
	b := 5.
	gamma := 90.
]

{ #category : #printing }
Square >> printOn: aStream [

   aStream nextPutAll: 'Square['.
	self a printOn: aStream.
	aStream nextPut: $]
]
