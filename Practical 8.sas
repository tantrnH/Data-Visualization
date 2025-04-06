data p8q1;
	set sashelp.baseball; /* get dataset */
	if name in ('Allanson, Andy', 'Ashby, Alan', 'Davis, Alan', 'Dawson, Andre', 
	'Galarraga, Andres', 'Griffin, Alfredo', 'Newman, Al', 'Salazar, Argenis', 
	'Thomas, Andres', 'Thornton, Andre'); /* filter row */
	keep name team; /* filter column */
run;
proc report data=p8q1; 
	column name team;
	define name / "Player's Name";
	define team / "Team at the End of 1986";
	title "team data";
run;

data p8q2;
	set sashelp.baseball;
	if team in ('Atlanta', 'California');
	keep team name;
run;
proc report data=p8q2;
	column team name;
	define team / group "Team at the End of 1986";
	define name / display "Player's Name";
run;

data p8q3;
	set sashelp.baseball;
	if team in ('Atlanta', 'California');
	diff = nAtBat - nHits;
	keep team name nAtBat nHits diff;
run;
proc report data=p8q3;
	column team name nAtBat nHits diff;
	define team / group "Team at the End of 1986";
	define name / display "Player's Name";
run;



	
