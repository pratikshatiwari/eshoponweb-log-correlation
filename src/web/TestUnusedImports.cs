// Unused namespaces
using System.Text;
using System.Net;
using Elastic.Apm;
﻿using Elastic.Apm.NetCoreAll;

// Used namespaces
using System;
using System.IO;

class Program
{
    static void Main(string[] args)
    {
        Console.WriteLine("This is a test program.");

        // Using IO namespace to create a file
        string filePath = "test.txt";
        File.WriteAllText(filePath, "Testing unused imports in C#.");
        
        // Note: System.Text and System.Net are not used.
    }
}
