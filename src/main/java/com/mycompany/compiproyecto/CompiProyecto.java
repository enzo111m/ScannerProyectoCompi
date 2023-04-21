/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 */

package com.mycompany.compiproyecto;

import java.io.FileReader;
import java.io.Reader;

/**
 *
 * @author Enzo Monroy
 */
public class CompiProyecto {

    public static void main(String[] args) {
        //System.out.println("Hello World!");
        
        //C:\Users\Enzo Monroy\Documents\NetBeansProjects
        //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
        System.out.println("MAIN");
        
        try {
            Reader r = new FileReader("prueba.txt");
            AnalizadorLex analizadorlexico=new AnalizadorLex(r);
            analizadorlexico.yylex();
            
        } catch (Exception e) {
            
        }
    }
}
