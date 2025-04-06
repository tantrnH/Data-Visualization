data p4q1_1;
	input Name $20.;
	datalines;
	Matthew Bell
	Alok Jain
	Karen Tuttle
	Sarah Boysen
	Isaac Newton
	Niels Bohr
;
run;

data p4q1_2;
	input Service :50$. Title :$30.;
	datalines;
	WiperBlades Maintenance
	AirFilter Maintenance
	CabinFilter Maintenance
	FuelFilter Maintenance
	CoolingSystem Maintenance
	TransFluidExchange Maintenance
	TireRotation Maintenance
	FlatRepair Maintenance
	WheelBalance Maintenance
	WheelAlignment Maintenance
;
run;

data p4q1;
	merge p4q1_1 p4q1_2;
run;

data p4q2;
	array A[4] A1-A4;
	
	A[1] = 21;
	A[2] = 4;
	A[3] = 52;
	A[4] = 11;
	A_SUM = SUM(OF A[*]);
	A_MEAN = MEAN(OF A[*]);
	A_MIN = MIN(OF A[*]);
	output;
	
	A[1] = 2;
	A[2] = 40;
	A[3] = 5;
	A[4] = 1;
	A_SUM = SUM(OF A[*]);
	A_MEAN = MEAN(OF A[*]);
	A_MIN = MIN(OF A[*]);
	output;
	
	/*
	do i=1 to 100 by 2;
	A_SUM = SUM(OF A[*]);
	A_MEAN = MEAN(OF A[*]);
	A_MIN = MIN(OF A[*]);
	output;
	end;
	drop i;  to use i after the looping done
	*/
	
run;
proc print data=p4q2;
run;

