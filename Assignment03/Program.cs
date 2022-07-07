// See https://aka.ms/new-console-template for more information
using Assignment03;
//1
Numbers randomNumbers = new Numbers();
int[] numbers = randomNumbers.GenerateNumbers();
Array.Reverse(numbers);
Numbers.PrintNumbers(numbers);
//2
int[] fibSeq = new int[10] { 1, 1, 2, 3, 5, 8, 13, 21, 34, 55 };
for (int i = 0; i < 10; i++)
{
    Console.WriteLine(fibSeq[i]);
}
Console.WriteLine(Numbers.Fibonacci(fibSeq, 5));