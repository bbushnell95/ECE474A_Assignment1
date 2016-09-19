_____1_____
Matthew	R.	Dzurick		-	mdzurick
Brett	C.	Bushnell	-	bbushnell

_____2_____
Xilinx Synthesis Tool Version:
mdzurick	-	2016.2
bbushnell	-	2015.3

_____3_____
Target FPGA:	Xilinx xc7a100tfgg676-1 (Ckt. 1-6, 8)
				Xilinx xc7a200tffv1156-1 (Ckt. 7)
Speed Grade:	Ckt. 1-6, 8 - Speed Grade = -1
				Ckt. 7		- Speed Grade = -1

_____4_____
Create schematic of circuit and then start from t=0 and 
indicate a time after a specific datapath component in
the circuit.  For the next datapath component it is
then required that the input with the longest delay from
the previous datapath component will be the t=0 for
the datapath component in question.  This will allow us
to see what the critical path is.  We marked this with
an x and a time at the output of every datapath component
on paper to keep track.
