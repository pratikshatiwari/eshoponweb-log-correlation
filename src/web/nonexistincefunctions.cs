using System;

class Program
{
    static void Main(string[] args)
    {
        Console.WriteLine("Testing non-existent function calls in C#");

        // Correct function call
        int result1 = Add(10, 5);
        Console.WriteLine("Addition Result: " + result1);

        // Incorrect function call: Multiply method does not exist
        int result2 = Multiply(10, 5); // This will cause a compile-time error

        Console.WriteLine("Multiplication Result: " + result2);
    }

    // Correctly defined function
    static int Add(int a, int b)
    {
        return a + b;
    }
}
