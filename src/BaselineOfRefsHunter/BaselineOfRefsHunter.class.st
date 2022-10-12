Class {
	#name : #BaselineOfRefsHunter,
	#superclass : #BaselineOf,
	#category : #BaselineOfRefsHunter
}

{ #category : #baseline }
BaselineOfRefsHunter >> baseline: spec [

	<baseline>

	spec for: #common do: [ 

		spec
			package: 'RefsHunter-Core' ;
			package: 'RefsHunter-Tests' with: [ spec requires: #( 'RefsHunter-Core' ) ].

		spec 
			group: 'default' with: #( core development ) ;

			group: 'core' with: #( 'RefsHunter-Core' ) ;
			group: 'development' with: #( 'RefsHunter-Tests' ).
	]
]
