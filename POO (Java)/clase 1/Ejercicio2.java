import java.util.Scanner;
public class Ejercicio2 {
    public void main (String[] args) {
        Scanner in = new Scanner(System.in);
        System.out.println("Ingrese numero de patente");
        int patente=in.nextInt();
        int cant_p=0;
        int cant_t=0;
        if (patente%2==0) {
            System.out.println("Tiene permitido el paso");
            cant_p++;
        }
        else
            System.out.println("No tiene permitido el paso");
        cant_t++;
        while (patente!=0) {
             patente=in.nextInt();
             if (patente%2==0) {
                System.out.println("Tiene permitido el paso");
                cant_p++;
             }
             else
                System.out.println("No tiene permitido el paso");
             cant_t++;
        }
        in.close();
        double porcentaje=(cant_p*100)/cant_t;
        System.out.println("Porcentaje de autos que ingresaron respecto al total de autos :"+porcentaje);
    }
}