Class {
	#name : #TriPrizm,
	#superclass : #DirectShape,
	#category : #'MyShapes-Shapes'
}

{ #category : #'as yet unclassified' }
TriPrizm class >> base: aTriangle height: aNumber [

(aTriangle isKindOf: Triangle) 
ifTrue: [ ^ self new base: aTriangle; height: (aNumber max: 0.1) ]
ifFalse: [ self error: 'Base of a triangular prizm must be a triangle' ]
]

{ #category : #accessing }
TriPrizm >> className [ 
	^ 'Triangular Prizm'
]

{ #category : #initialization }
TriPrizm >> initialize [ 

base := Triangle new.
height := 5.
]
