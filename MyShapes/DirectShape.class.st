Class {
	#name : #DirectShape,
	#superclass : #VolShape,
	#category : #'MyShapes-Shapes'
}

{ #category : #accessing }
DirectShape >> className [ 
self subclassResponsibility 
]

{ #category : #calculations }
DirectShape >> sideArea [ 
^ base perimeter * height 
]

{ #category : #calculations }
DirectShape >> totalArea [ 
^ self baseArea * 2 + self sideArea 
]

{ #category : #calculations }
DirectShape >> volume [ 
^ self baseArea * height  
]
