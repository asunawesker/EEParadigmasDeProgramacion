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
public class CalculatorTwoNo extends Calculator{

    private float number1;
    private float number2;

    public CalculatorTwoNo(float number1, float number2) {
        this.number1 = number1;
        this.number2 = number2;
    }

    public float getNumber1() {
        return number1;
    }

    public void setNumber1(float number1) {
        this.number1 = number1;
    }

    public float getNumber2() {
        return number2;
    }

    public void setNumber2(float number2) {
        this.number2 = number2;
    }            

    @Override
    public float addition() {
        return this.number1 + this.number2;
    }

    @Override
    public float substraction() {
        return this.number1 - this.number2;
    }

    @Override
    public float multiplication() {
        return this.number1 * this.number2;
    }
    
    public float division(){
        return this.number1 / this.number2;
    }
    
    public float modulo(){
        return this.number1 % this.number2;
    }
    
}
