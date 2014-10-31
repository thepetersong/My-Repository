/*
Peter Song A01
CS 1301
isong33@gatech.edu
I worked on the lab assignment alone, using only this semester's course materials.

Since Thanksgiving is around the corner I thought it'd be appropiate to create
a Pilgrim's hat with a little personality added to it.
*/

main_color = [137/255,97/255,17/255,1];
strap_color = [53/255,53/255,53/255,1];
buckle_color = [249/255,233/255,15/255,1];

difference() 
{
	union() 
	{
		//Hat Base
			color(main_color)
			intersection() 
			{
				translate([0,0,-190])rotate([0,90,0])cylinder(200,200,200,$fn=100,center=true);
				cylinder(10,60,60,$fn=100);
			}
		//Hat Top											 
			color(main_color)cylinder(100,40,25,$fn=100);
			
		//buckle strap with spikes
			spikes();
	
			
		//buckle
			color(buckle_color)translate([0,34,18])rotate([10,0,0]) 
			difference() 
			{
				cube([35,14,30],center=true); 
				cube([25,15,20],center=true); 
			}
		//buckle pin	
			color(buckle_color)translate([7,38.1,17.5])rotate([10,0,0]) cube ([6,3,2.8]);

		//buckle holes
			//for(i= [0, 1, 2, 3, 4, 5];
			

	}			
		//To make the hat hollow and wearable
			color([137/255,97/255,17/255,1])translate([0,0,-0.1])cylinder(90,35,20,$fn=100);
}



module spikes() //Let's add some personality
{	
		for ( i = [1:5] )
				rotate([0, 0, i *360/ 6]) union()
				{
				color(strap_color)translate([0,0,1])cylinder(30,42,38,$fn=100);
				color("Silver")
				translate([0, 55, 18.5])
				rotate([90,0,0]) 
				cylinder(20, 1, 7.7);
				}
}