Class {
	#name : #VolShape,
	#superclass : #Object,
	#instVars : [
		'base',
		'height'
	],
	#category : #'MyShapes-Shapes'
}

{ #category : #calculations }
VolShape >> baseArea [ 
^ base area 
]

{ #category : #printing }
VolShape >> printOn: aStream [
	self className printOn: aStream.
	aStream nextPutAll: ' with height '.
	height printOn: aStream.
	aStream nextPutAll: ' on '.
	base printOn: aStream 
			
]

{ #category : #calculations }
VolShape >> sideArea [ 
^ self subclassResponsibility 
]

{ #category : #calculations }
VolShape >> totalArea [ 
self subclassResponsibility 
]

{ #category : #calculations }
VolShape >> volume [ 
^ self subclassResponsibility 
]
