Class {
	#name : #Cylinder,
	#superclass : #DirectShape,
	#category : #'MyShapes-Shapes'
}

{ #category : #accessing }
Cylinder >> className [
	^ self class name asString
]

{ #category : #initialization }
Cylinder >> initialize [ 
 base := Circle new.
 height := 1
]
