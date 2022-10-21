Class {
	#name : #Cone,
	#superclass : #ConeShape,
	#category : #'MyShapes-Shapes'
}

{ #category : #calculations }
Cone >> sideArea [ 
| r |
r := base radius.
^ Float pi * r * (r squared + height squared) sqrt.
]

{ #category : #calculations }
Cone >> volume [

^ self baseArea * height / 3
]
