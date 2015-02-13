/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package compilador;

import static compilador.Compilador.generarLexer;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.InputStreamReader;

/**
 *
 * @author Graciela Lopez
 */
public class Ejecutar {
    public static void main(String[] args) throws FileNotFoundException, Exception {
        // TODO code application logic here
          
         AnalizadorSintactico as = new AnalizadorSintactico
        (new Analizador(new InputStreamReader(new FileInputStream("D:\\MIS DATOS\\Documents\\NetBeansProjects\\Compilador\\src\\compilador\\Ar.txt"))));
         as.parse();
    }
    
}
