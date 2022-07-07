// See https://aka.ms/new-console-template for more information
Console.WriteLine("Hello, World!");
//1
int[] ints = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10};
int[] secondInts = new int[10];
for (int i = 0; i < ints.Length; i++)
{
    secondInts[i] = ints[i];
    Console.WriteLine(ints[i]);
    Console.WriteLine(secondInts[i]);
}
//2
List<String> toDo = new List<String>();
while(true)
{
    Console.WriteLine("The following is your list of to do items.");
    foreach (string item in toDo)
    {
        Console.WriteLine(item);
    }
    Console.WriteLine("What do you want to do.");
    Console.WriteLine("The options are Add, Remove, and Clear.");
    string answer = Console.ReadLine();
    if (answer == "Add")
    {
        toDo.Add(answer);
    }
    else if (answer == "Remove")
    {
        toDo.Remove(answer);
    } 
    else if (answer == "Clear")
    {
        toDo.Clear();
    }
}
//3

//4
