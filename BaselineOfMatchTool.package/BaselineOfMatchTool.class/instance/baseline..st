baseline
baseline: spec
	<baseline>
	
	spec for: #'pharo6.x' do: [ spec package: 'MatchTool' ].
	spec for: #(#'pharo7.x' #'pharo8.x') do: [ 
		spec package: 'MatchTool'.
		spec package: 'MatchTool-Pharo7' with: [ spec requires: 'MatchTool' ] ].
	

	