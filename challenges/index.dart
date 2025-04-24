import 'dart:io';
import 'dart:math';

class Challenge1
    {
        void Run()
        {
            int num = 0;
            print("Ingrese un número:");
            num = int.parse(stdin.readLineSync()!);
            if (num > 0) {print( "El número es Positivo y su resultado es: ${num * num}");
            }
            else if (num < 0) {print("Negativo");}
            else print("Es cero");
        }
    }

//Solicita al usuario dos números. Si el primero es mayor, devuelva 
//su doble, de lo contrario devuelva el triple del segundo.

     class Challenge2
    {
         void Run()
        {
            print("Ingrese primer número:");
            double num1 = double.parse(stdin.readLineSync()!);
            print("Ingrese segundo número:");
            double num2 = double.parse(stdin.readLineSync()!);
            double result = 0;

            if (num1 >= num2)
            {
                result = num1 * 2;
            }
            else
            {
                result = num2 * 3;
            }
            print("El resultado es: $result");
        }
    }
/* Pide al usuario un número. Si es positivo, devuelve su raíz
cuadrada, de lo contrario, devuelve su cuadrado.*/ 
    
   
     class Challenge3
    {
         void Run()
        {
            print("Ingrese un número:");
            int numero = int.parse(stdin.readLineSync()!);
            print("El cuadrado de ${numero} es: ${numero * numero}");
        }
    }

    /* Pide al usuario el radio de un círculo y calcula su perímetro*/

     class Challenge4
    {
         void Run()
        {
      double radio = 0.0;
      double perimetro = 0.0;

      stdout.write("Ingrese el radio del círculo: ");
      radio = double.parse(stdin.readLineSync()!);

      perimetro = pi * 2 * radio;

      print("El perímetro del círculo con radio ${radio.toStringAsFixed(2)} es: ${perimetro.toStringAsFixed(2)}");
        }
    }

    /*Solicita al usuario un número entre 1 y 7 y muestra el día de la
    semana correspondiente, pero solo considerando los días laborables*/

     class Challenge5
    {
         void Run()
        {
            print("Ingrese un número entre 1 y 7:");
            int dia = int.parse(stdin.readLineSync()!);

            switch (dia)
            {
                case 1: print("Lunes"); break;
                case 2: print("Martes"); break;
                case 3: print("Miercoles"); break;
                case 4: print("Jueves"); break;
                case 5: print("Viernes"); break;
                case 6: print("Sabado"); break;
                case 7: print("Domingo"); break;
                default: print("Número no válido"); break;
            }
        }
    }


    /*: Solicita al usuario su salario anual y, si este excede los 12000,
    muestra el impuesto a pagar que es el 15% del excedente.*/

     class Challenge6
    {
         void Run()
        {
            print("Ingrese su salario mensual:");
            double salario = double.parse(stdin.readLineSync()!);
            double impuesto = salario > 12000 ? 0.15 * (salario - 12000) : 0;
            print("El impuesto a pagar es: $impuesto");

        }
    }

    /*Solicita dos números y muestra el residuo de la división del primero entre el segundo.*/

     class Challenge7
    {
         void Run()
        {
            try
            {
                print("Número a dividir:");
                double n = double.parse(stdin.readLineSync()!);
                print("Divisor:");
                double divisor = double.parse(stdin.readLineSync()!);
                double Remainder(double n, double divisor) => n % divisor;
                print("El residuo de ${n} % ${divisor} es: ${Remainder(n, divisor)}");

             } on IntegerDivisionByZeroException {
              print("No se puede dividir por cero!");
            } catch (e) {
               print("Error al realizar la operación!");
  }
}
        }
  

    /*Calcula y muestra la suma de los números pares entre 1 y 50*/

     class Challenge8
    {
         void Run()
        {
            int suma = 0;
            for (int i = 2; i <= 50; i += 2)
            {
                suma += i;
            }
            print("La suma de números impares entre 1 y 50 es: $suma");
        }
    }

    /*Solicita al usuario los valores para dos fracciones y muestra la diferencia entre esas fracciones*/

     class Challenge9
    {
         void Run()
        {
            print("Ingrese numerador de la primera fracción:");
            int num1 = int.parse(stdin.readLineSync()!);
            print("Ingrese denominar de la primera fracción");
            int den1 = int.parse(stdin.readLineSync()!);

            print("Ingrese numerador de la segunda fracción:");
            int num2 = int.parse(stdin.readLineSync()!);
            print("Ingrese denominar de la primera fracción");
            int den2 = int.parse(stdin.readLineSync()!);

            try
            {
                Fraccion fraccion1 = new Fraccion(num1, den1);
                Fraccion fraccion2 = new Fraccion(num2, den2);
                Fraccion resultado = fraccion1.resta(fraccion2);
                print("La resta de $fraccion1 y $fraccion2 es: $resultado");

            }
            catch (e)
            {
                print("Error: $e");
            }
        }
    }

     class Fraccion
    {
         int numerador;
         int denominador;

         Fraccion(this.numerador, this.denominador)
        {
            if (denominador == 0)
            {
                throw Exception("El denominador no puede ser cero.");
            }
        }

         Fraccion resta(Fraccion otra)
        {
            int nuevoNumerador = numerador * otra.denominador - otra.numerador * denominador;
            int nuevoDenominador = denominador * otra.denominador;
            return Fraccion(nuevoNumerador, nuevoDenominador);
        }

         @override 
         String toString()
        {
            return "$numerador / $denominador";
        }
    }

    /*Pide una palabra al usuario y muestra la longitud de esa palabra*/

     class Challenge10
    {
         void Run()
        {
            print("Introduce una palabra:");
            String palabra = stdin.readLineSync()!;
            int longitud = palabra.length;
            print("La palabra invertida es: $longitud");
        }
    }

    /*Pide al usuario cuatro números y muestra el promedio.*/

     class Challenge11
    {
         void Run()
        {
            print("Introduce el primer número:");
            double num1 = double.parse(stdin.readLineSync()!);

            print("Introduce el segundo número:");
            double num2 = double.parse(stdin.readLineSync()!);

            print("Introduce el tercer número:");
            double num3 = double.parse(stdin.readLineSync()!);

            print("Introduce el cuarto número:");
            double num4 = double.parse(stdin.readLineSync()!);

            double promedio = (num1 + num2 + num3 + num4) / 4;
            print("El promedio de los 4 número es: $promedio");
        }
    }

    /*Pide al usuario cinco números y muestra el más pequeño*/

     class Challenge12
    {
         void Run()
        {
            List<int> numeros = [];

            for (int i = 0; i < 5; i++)
            {
                print("Introducce el numero ${i + 1}:");
                numeros.add(int.parse(stdin.readLineSync()!));
            }

           int menor = numeros.reduce((a, b) => a < b ? a : b);
           print("El número más pequeño de la lista es: $menor");
        }
    }

    /*: Pide una palabra al usuario y devuelve el número de vocales en esa palabra.*/

     class Challenge13
    {
         void Run()
       {
        print("Introduce una palabra:");
        String palabra = stdin.readLineSync()!.toLowerCase();
        int contarVocales = 0;

        for (var letra in palabra.split('')) {
         if ('aeiou'.contains(letra)) {
         contarVocales++;
    }
  }

  print("El número de vocales es: $contarVocales");

  // Para pausar y esperar Enter (similar a ReadLine)
  stdin.readLineSync();
}
    }


    /*Pide un número al usuario y devuelve el factorial de ese número.*/

     class Challenge14
    {
         void Run()
        {
            print("Por favor ingresa un número positivo");

            int fac = int.parse(stdin.readLineSync()!);
            int resultado = 1;

            for (int i = 1; i <= fac; i++)
            {
                resultado *= i;
            }

            print("El factorial de {fac} es : $resultado");

            stdin.readLineSync(); ;
        }
    }

    /*Pide un número al usuario y verifica si está en el rango de 10 a 20*/

     class Challenge15
    {
         void Run()
        {
            print("Introduce un número:");
            int numero = int.parse(stdin.readLineSync()!);

            if (numero >= 10 && numero <= 20)
            {
                print("El número $numero está en el rango de 10 a 20.");
            }
            else
            {
                print("El número $numero está fuera del rango de 10 a 20.");
            }
        }
    }


