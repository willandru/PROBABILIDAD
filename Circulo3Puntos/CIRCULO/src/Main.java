
public class Main {

	public static void main(String[] args) {
		
		
	// LOS ANGULOS
		
		double contador=0;
		double total=1000000;
		for (int i=0; i<total; i++) {
			Circulo circulo1= new Circulo();
			System.out.println("Los angulos del circulo "+i+"son: ");
			circulo1.printAngles();
			
			// LA POSCICION
			
			double A[]= {Math.cos(circulo1.THETA_A),Math.sin(circulo1.THETA_A)};
			double B[]= {Math.cos(circulo1.THETA_B),Math.sin(circulo1.THETA_B)};
			double C[]= {Math.cos(circulo1.THETA_C),Math.sin(circulo1.THETA_C)};
			
			/*	
			System.out.println("La posicion es ");
				System.out.println("x: "+A[0]+" y:"+A[1]);
				System.out.println("x: "+B[0]+" y:"+B[1]);
				System.out.println("x: "+C[0]+" y:"+C[1]);
			*/	
				
			//comprobando la norma
				
				/*
				double normaA=Math.sqrt(A[0]*A[0] +A[1]* A[1]);
				double normaB=Math.sqrt(B[0]*B[0] +B[1]* B[1]);
				double normaC=Math.sqrt(C[0]*C[0] +C[1]* C[1]);
				System.out.println("La NORMA de A es:");
				System.out.println(normaA);		
				System.out.println("La NORMA de B es:");
				System.out.println(normaB);	
				System.out.println("La NORMA de C es:");
				System.out.println(normaC);	
				*/
				
			//VECTORES
				//ALFA
				double AB[]= {B[0]-A[0], B[1]-A[1]};
				double AC[]= {C[0]-A[0], C[1]-A[1]};
				double ab_punto_ac=  AB[0]*AC[0]+AB[1]*AC[1];
				double normaAB=Math.sqrt(AB[0]*AB[0] +AB[1]* AB[1]);
				double normaAC=Math.sqrt(AC[0]*AC[0] +AC[1]* AC[1]);
				double ALFA= Math.acos(ab_punto_ac/(normaAB*normaAC));
				//BETA
				double BA[]= {A[0]-B[0], A[1]-B[1]};
				double BC[]= {C[0]-B[0], C[1]-B[1]};
				double ba_punto_bc=  BA[0]*BC[0]+BA[1]*BC[1];
				double normaBA=Math.sqrt(BA[0]*BA[0] +BA[1]* BA[1]);
				double normaBC=Math.sqrt(BC[0]*BC[0] +BC[1]* BC[1]);
				double BETA= Math.acos(ba_punto_bc/(normaBA*normaBC));
				//GAMMA
				double CA[]= {A[0]-C[0], A[1]-C[1]};
				double CB[]= {B[0]-C[0], B[1]-C[1]};
				double ca_punto_cb=  CA[0]*CB[0]+CA[1]*CB[1];
				double normaCA=Math.sqrt(CA[0]*CA[0] +CA[1]* CA[1]);
				double normaCB=Math.sqrt(CB[0]*CB[0] +CB[1]* CB[1]);
				double GAMMA= Math.acos(ca_punto_cb/(normaCA*normaCB));
				
				/*
				System.out.println("El ángulo ALFA es: "+Math.toDegrees(ALFA));
				System.out.println("el angulo BETA es: "+ Math.toDegrees(BETA));
				System.out.println("el angulo GAMMA es: "+ Math.toDegrees(GAMMA));
				System.out.println("el angulo del traingulo es: "+ (ALFA+BETA+GAMMA));
				*/
			
				if(Math.toDegrees(ALFA)<=90) {
					contador++;
					System.out.println("hola");
					System.out.println(contador);
				}
				
		}
		
		double PROBABILITY = contador/total;
		
		
		System.out.println(contador);
		System.out.println("P: "+ PROBABILITY);
		
	}

}
