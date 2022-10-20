Class {
	#name : #ConeShape,
	#superclass : #VolShape,
	#category : #'MyShapes-Shapes'
}

{ #category : #accessing }
ConeShape >> totalArea [ 
	^ self sideArea + self baseArea 
]
