Class {
	#name : #RectPyramid,
	#superclass : #ConeShape,
	#category : #'MyShapes-Shapes'
}

{ #category : #'as yet unclassified' }
RectPyramid class >> base: aParallelogram height: aNumber [

(aParallelogram isKindOf: Parallelogram) 
ifTrue: [ ^ self new base: aParallelogram; height: (aNumber max: 0.1) ]
ifFalse: [ self error: 'Base of a rectangular pyramid must be a parallelogram' ]
]

{ #category : #accessing }
RectPyramid >> className [ 
	^ 'Rectangular Pyramid'
]

{ #category : #initialization }
RectPyramid >> initialize [ 

base := Parallelogram new.
height := 5.
]

{ #category : #calculations }
RectPyramid >> sideArea [ 
| sin ha hb la lb |
" ha - висота до сторони а
  hb - висота до сторони b
"
sin := base gammaToRadians sin.
ha := base b * sin / 2.
hb := base a * sin / 2.
la := (ha squared + height squared) sqrt.
lb := (hb squared + height squared) sqrt.

^ (la * base a) + (lb * base b).
]
