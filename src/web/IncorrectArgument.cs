using System;

class Program
{
    static void Main(string[] args)
    {
        Console.WriteLine("Testing function calls with incorrect arguments in C#");

        // Correct function call
        int sum = Add(10, 5);
        Console.WriteLine("Sum: " + sum);

        // Incorrect function call: Passing too few arguments
        int result1 = Add(10); // Error: Add expects 2 arguments, but only 1 is provided

        // Incorrect function call: Passing too many arguments
        int result2 = Add(10, 5, 20); // Error: Add expects 2 arguments, but 3 are provided

        Console.WriteLine("Results: " + result1 + ", " + result2);
    }

    // Function with two parameters
    static int Add(int a, int b)
    {
        return a + b;
    }
}
