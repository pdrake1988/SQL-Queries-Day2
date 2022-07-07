using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Assignment03
{
    internal class Numbers
    {
        public int[] GenerateNumbers()
        {
            Random random = new Random();
            int[] ints = new int[10];
            for (int i = 0; i < 10; i++)
            {
                ints[i] = random.Next(100);
            }
            return ints;
        }
        public static void PrintNumbers(int[] numbers)
        {
            foreach (int number in numbers)
            {
                Console.WriteLine(number);
            }
        }
        public static int Fibonacci(int[] sequence, int number)
        {
            return Array.IndexOf(sequence, number);
        }
    }
}
