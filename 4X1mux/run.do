vlib work
		#--> Compilation:-
		 vlog mux_tb.v

		#--> Elaboration:- 
		vsim -novopt -suppress 12110 top

#--> Simulation:-
		run -all 
