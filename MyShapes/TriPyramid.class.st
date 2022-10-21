Class {
	#name : #TriPyramid,
	#superclass : #ConeShape,
	#category : #'MyShapes-Shapes'
}

{ #category : #'as yet unclassified' }
TriPyramid class >> base: aTriangle height: aNumber [

(aTriangle isKindOf: Triangle) 
ifTrue: [ ^ self new base: aTriangle; height: (aNumber max: 0.1) ]
ifFalse: [ self error: 'Base of a triangular pyramid must be a triangle' ]
]

{ #category : #accessing }
TriPyramid >> className [ 
	^ 'Triangular Pyramid'
]

{ #category : #initialization }
TriPyramid >> initialize [ 

base := Triangle new.
height := 5.
]

{ #category : #calculations }
TriPyramid >> sideArea [ 

^ base perimeter * (height squared + base inR squared) sqrt / 2.
]
