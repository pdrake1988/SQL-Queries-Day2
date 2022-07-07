// See https://aka.ms/new-console-template for more information
//1
for(int i = 0; i < 100; i++)
{
    if(i % 5 ==0 && i % 3 == 0)
    {
        Console.WriteLine("fizzbuzz");
    } else if(i % 3 == 0)
    {
        Console.WriteLine("fizz");
    } else if (i % 5 == 0)
    {
        Console.WriteLine("buzz");
    } else
    {
        Console.WriteLine(i);
    }
}
//2
for(int i = 0; i <= 5; i++)
{
    for(int k = 0; k < 3; k++)
    {
        Console.Write(" ");
    }
    for (int j = 0; j < i; j++)
    {
        Console.Write("*");
    }
    Console.WriteLine();
}
//3
Random random = new Random();
int randNum = random.Next(1, 100);
Console.WriteLine("Try to guess my magic number!");
Console.WriteLine("Enter a number less than a hundred");
int gussedNumber = int.Parse(Console.ReadLine());
if (gussedNumber == randNum)
{
    Console.WriteLine("You guessed the right answer!");
} else if (gussedNumber > randNum)
{
    Console.WriteLine("You guessed too high");
} else
{
    Console.WriteLine("You guessed too low!");
}
//4
Console.WriteLine("How old are you?");
int daysOld = int.Parse(Console.ReadLine());
Console.WriteLine($"You are {365 * daysOld} days old!");
//5
if (DateTime.Now.Hour < 12 && DateTime.Now.Hour > 0)
{
    Console.WriteLine("Good Morning");
} else if (DateTime.Now.Hour > 12 && DateTime.Now.Hour < 16)
{
    Console.WriteLine("Good Afternoon");
} else if (DateTime.Now.Hour > 16 && DateTime.Now.Hour < 18)
{
    Console.WriteLine("Good Evening");
} else
{
    Console.WriteLine("Good Night");
}
//6
for (int i = 0; i <= 24; i++)
{
    Console.WriteLine(i);
}
for (int i = 0; i <= 24; i += 2)
{
    Console.WriteLine(i);
}
for (int i = 0; i <= 24; i += 3)
{
    Console.WriteLine(i);
}
for (int i = 0; i <= 24; i+=4)
{
    Console.WriteLine(i);
}