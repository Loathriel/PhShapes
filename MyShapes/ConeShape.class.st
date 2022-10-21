Class {
	#name : #ConeShape,
	#superclass : #VolShape,
	#category : #'MyShapes-Shapes'
}

{ #category : #accessing }
ConeShape >> totalArea [ 
	^ self sideArea + self baseArea 
]

{ #category : #calculations }
ConeShape >> volume [

^ self baseArea * height / 3
]
