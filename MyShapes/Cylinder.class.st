Class {
	#name : #Cylinder,
	#superclass : #DirectShape,
	#category : #'MyShapes-Shapes'
}

{ #category : #'as yet unclassified' }
Cylinder class >> base: aCircle height: aNumber [

(aCircle isKindOf: Circle) 
ifTrue: [ ^ self new base: aCircle; height: (aNumber max: 0.1) ]
ifFalse: [ self error: 'Base of a cylinder must be a circle' ]
]

{ #category : #accessing }
Cylinder >> className [
	^ self class name asString
]

{ #category : #initialization }
Cylinder >> initialize [ 

base := Circle new.
height := 5.
]
