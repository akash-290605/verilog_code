vlib work
		#--> Compilation:-
		
		#vlog halfadder.v halfadder_tb.v
		#vlog halfadder_always.v halfadder_tb.v
         vlog halfadder_gate.v halfadder_tb.v

		#--> Elaboration:- 
		vsim -novopt -suppress 12110 top

#--> Simulation:-
		run -all 
