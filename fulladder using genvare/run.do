vlib work
		#--> Compilation:-
		 vlog tb_adder.v

		#--> Elaboration:- 
		vsim -novopt -suppress 12110 top

#--> Simulation:-
		run -all 
