/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package compilador;

import java.io.File;
import java.io.StringReader;

/**
 *
 * @author Graciela Lopez
 */
public class Compilador {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        // TODO code application logic here
          String path="D:\\MIS DATOS\\Documents\\NetBeansProjects\\Compilador\\src\\compilador\\Lexer.flex";
        generarLexer(path);
        // TODO code application logic here
    }
    
    public static void generarLexer(String path){
        File file= new File(path);
        jflex.Main.generate(file);
    }
    public String valida(String cadena) {
        String salida = "";
        try {
            Analizador analizador = new Analizador(new StringReader(cadena));
            salida = analizador.yytext().toString();
        } catch (Exception ex) {
            System.out.println("ERROR");
        }
        return salida;
    }
    }
    

