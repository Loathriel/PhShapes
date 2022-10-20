Class {
	#name : #FlatShape,
	#superclass : #Object,
	#category : #'MyShapes-Shapes'
}

{ #category : #comparing }
FlatShape >> < aShape [
^ self area < aShape area
]

{ #category : #comparing }
FlatShape >> > aShape [
^ self area > aShape area
]

{ #category : #calculating }
FlatShape >> area [ 
^ self subclassResponsibility 
]

{ #category : #calculating }
FlatShape >> perimeter [ 
^ self subclassResponsibility 
]
