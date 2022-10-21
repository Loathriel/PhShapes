Class {
	#name : #Parallelepiped,
	#superclass : #DirectShape,
	#category : #'MyShapes-Shapes'
}

{ #category : #'as yet unclassified' }
Parallelepiped class >> base: aParallelogram height: aNumber [

(aParallelogram isKindOf: Parallelogram) 
ifTrue: [ ^ self new base: aParallelogram; height: (aNumber max: 0.1) ]
ifFalse: [ self error: 'Base of a parallelepiped must be a parallelogram' ]
]

{ #category : #accessing }
Parallelepiped >> className [ 
^ self class name asString
]

{ #category : #initialization }
Parallelepiped >> initialize [ 

base := Parallelogram new.
height := 5.
]
