private double fractionLength = .8; 
private int smallestBranch = 10; 
private double branchAngle = .2;  
public void setup() 
{   
	size(640,480);    
	noLoop(); 
} 
public void draw() 
{   
	background(0);   
	stroke(0,255,0);   
	line(320,480,320,380);   
	//drawBranches(??,??,??,??);  //will add later 
} 
public void drawBranches(int x,int y, double branchLength, double angle) 
{   
	brachLength *= getFractLen();
	double angle1 = angle+getBranAngle();
	double angle2 = angle-getBranAngle();    
	int endX1 = (int)(branchLength*Math.cos(angle1) + x);
	int endY1 = (int)(branchLength*Math.sin(angle1) + x);
	int endX2 = (int)(branchLength*Math.cos(angle2) + y);
	int endY2 = (int)(branchLength*Math.sin(angle2) + y);
} 
public double getBranAngle(){return branchAngle;}
public double getFractLen(){return fractionLength;}
