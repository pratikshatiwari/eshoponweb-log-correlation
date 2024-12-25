using System;

class Program
{
    static void Main(string[] args)
    {
        Console.WriteLine("Testing function calls with type mismatches in C#");

        // Correct function call
        int sum = Add(10, 5);
        Console.WriteLine("Sum: " + sum);

        // Incorrect function calls with type mismatches
        int result1 = Add("10", 5); // Error: First argument is a string instead of an int
        int result2 = Add(10, "5"); // Error: Second argument is a string instead of an int
        int result3 = Add(true, false); // Error: Both arguments are booleans instead of ints

        Console.WriteLine("Results: " + result1 + ", " + result2 + ", " + result3);
    }

    // Function with two integer parameters
    static int Add(int a, int b)
    {
        return a + b;
    }
}
