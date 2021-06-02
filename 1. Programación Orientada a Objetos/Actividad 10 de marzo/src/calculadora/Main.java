/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package calculadora;

/**
 *
 * @author asunawesker
 */
public class Main {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        // TODO code application logic here
        
        CalculatorTwoNo calculadora1 = new CalculatorTwoNo(3,1);
        CalculatorThreeNo calculadora2 = new CalculatorThreeNo(3,2,1);
        
        System.out.println(".:CALCULADORA 1:.");
        System.out.println("Suma: " + calculadora1.addition());
        System.out.println("Resta: " + calculadora1.substraction());
        System.out.println("Multiplicación: " + calculadora1.multiplication());
        System.out.println("División: " + calculadora1.division());
        System.out.println("Módulo: " + calculadora1.modulo());
        
        System.out.println("\n.:CALCULADORA 2:.");
        System.out.println("Suma: " + calculadora2.addition());
        System.out.println("Suma: " + calculadora2.substraction());
        System.out.println("Suma: " + calculadora2.multiplication());
        
    }
    
}
