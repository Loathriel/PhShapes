Class {
	#name : #VolShape,
	#superclass : #Object,
	#instVars : [
		'base',
		'height'
	],
	#category : #'MyShapes-Shapes'
}

{ #category : #accessing }
VolShape >> base [

	^ base
]

{ #category : #accessing }
VolShape >> base: anObject [

	base := anObject
]

{ #category : #calculations }
VolShape >> baseArea [ 
^ base area 
]

{ #category : #accessing }
VolShape >> height [

	^ height
]

{ #category : #accessing }
VolShape >> height: anObject [

	height := anObject
]

{ #category : #printing }
VolShape >> printOn: aStream [
	aStream nextPutAll: self className.
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
