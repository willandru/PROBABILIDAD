
public class Circulo {
	
	double THETA_A;
	double THETA_B;
	double THETA_C;
	
Circulo(){
	this.THETA_A=Math.random()*365;
	this.THETA_B=Math.random()*365;
	this.THETA_C=Math.random()*365;
}

public void printAngles() {
	System.out.println(this.THETA_A);
	System.out.println(this.THETA_B);
	System.out.println(this.THETA_C);
}


}
