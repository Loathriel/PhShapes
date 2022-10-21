Class {
	#name : #Cone,
	#superclass : #ConeShape,
	#category : #'MyShapes-Shapes'
}

{ #category : #'as yet unclassified' }
Cone class >> base: aCircle height: aNumber [

(aCircle isKindOf: Circle) 
ifTrue: [ ^ self new base: aCircle; height: (aNumber max: 0.1) ]
ifFalse: [ self error: 'Base of a cone must be a circle' ]
]

{ #category : #initialization }
Cone >> initialize [ 

base := Circle new.
height := 5.
]

{ #category : #calculations }
Cone >> sideArea [ 
| r |
r := base radius.
^ Float pi * r * (r squared + height squared) sqrt.
]
