private double fractionLength = .8; 
private int smallestBranch = 25; 
private double branchAngle = 0.6;
private int y1 = 440;
private int branchLen = 5;
private boolean shrink = false;
public void setup() 
{   
	size(640,480);    
	 
} 
public void draw() 
{   
	background(0);   
	strokeWeight(2);
	line(320,480,320,getY1());
	strokeWeight(1);
	drawBranches(320,getY1(),getBranchLen(),3*Math.PI/2); 
	if(getY1() > 365) setY1(getY1()-1); 
	if(getBranchLen() < 115) setBranchLen(getBranchLen()+1);
	if(getY1() == 365) setY1(440); 
	if(getBranchLen() == 115) setBranchLen(5);
}
public void drawBranches(int x,int y, double branchLength, double angle) 
{   
	stroke(random(256),random(256),random(256));   
	branchLength *= fractionLength;
	double angle1 = angle+branchAngle;
	double angle2 = angle-branchAngle;
	double angle3 = angle;
	int endX1 = (int)(branchLength*Math.cos(angle1) + x);
	int endY1 = (int)(branchLength*Math.sin(angle1) + y);
	int endX2 = (int)(branchLength*Math.cos(angle2) + x);
	int endY2 = (int)(branchLength*Math.sin(angle2) + y);
	int endX3 = (int)(branchLength*Math.cos(angle3) + x);
	int endY3 = (int)(branchLength*Math.sin(angle3) + y);
	line(x,y,endX1,endY1);
	line(x,y,endX2,endY2);
	line(x,y,endX3,endY3);
	if(branchLength > smallestBranch)
	{
		drawBranches(endX1,endY1,branchLength,angle1);
		drawBranches(endX2,endY2,branchLength,angle2);
		drawBranches(endX3,endY3,branchLength,angle3);
	}
} 
public void mousePressed()
{
	setY1(440);

}
public int getY1(){return y1;}
public void setY1(int y){y1 = y;}
public int getBranchLen(){return branchLen;}
public void setBranchLen(int len){branchLen = len;}
public boolean getShrink(){return shrink;}
public void setShrink(boolean s){shrink = s;}