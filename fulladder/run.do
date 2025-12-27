vlib work
		#--> Compilation:-
		
		vlog fulladder_data.v fulladder_tb.v
		#vlog fulladder_behav.v fulladder_tb.v
        #vlog fulladder_gate.v fulladder_tb.v
		 #vlog fourbitadder_tb.v

		#--> Elaboration:- 
		vsim -novopt -suppress 12110 top

#--> Simulation:-
		run -all 
