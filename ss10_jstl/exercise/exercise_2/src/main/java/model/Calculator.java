package model;

public class Calculator {
    public static double calculator( double firstOperand , double secondOperand , char operator){
           switch (operator){
               case '+' :
                   return firstOperand + secondOperand;
               case '-':
                   return firstOperand - secondOperand;
               case '*':
                   return firstOperand * secondOperand;
               case '/':
                   if( secondOperand != 0){
                       return firstOperand / secondOperand;

                   }else {
                       throw new RuntimeException("Lỗi rồi");
                   }
               default:
                   throw new RuntimeException("Lỗi rồi");

           }
    }


}
