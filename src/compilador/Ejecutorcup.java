
package compilador;

import java.io.File;

/**
 *
 * @author Graciela Lopez
 */
public class Ejecutorcup {
    
     public static void main(String[] args) {
        String opciones[] = new String[5];
        opciones[0]="-destdir";
        opciones[1]="src" +File.separator+ "compilador";
        opciones[2]="-parser"; 
        opciones[3]="AnalizadorSintactico";
        opciones[4]="src" +File.separator+ "compilador" +File.separator+ "sintactico.cup";
        try {
            java_cup.Main.main(opciones);
            }
        catch (Exception e) {
            System.out.print(e);
            }
    }
    
}
