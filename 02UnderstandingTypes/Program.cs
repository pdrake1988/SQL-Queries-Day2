// See https://aka.ms/new-console-template for more information
//1
Console.WriteLine($"sbyte has {sizeof(sbyte)} bytes in memory, sbyte min/max values {sbyte.MinValue}/{sbyte.MaxValue}");
Console.WriteLine($"byte has {sizeof(byte)} bytes in memory, byte min/max values {byte.MinValue}/{byte.MaxValue}");
Console.WriteLine($"short has {sizeof(short)} bytes in memory, short min/max values {short.MinValue}/{short.MaxValue}");
Console.WriteLine($"ushort has {sizeof(ushort)} bytes in memory, ushort min/max values {ushort.MinValue}/{ushort.MaxValue}");
Console.WriteLine($"int has {sizeof(int)} bytes in memory, int min/max values {int.MinValue}/{int.MaxValue}");
Console.WriteLine($"uint has {sizeof(uint)} bytes in memory, uint min/max values {uint.MinValue}/{uint.MaxValue}");
Console.WriteLine($"long has {sizeof(long)} bytes in memory, long min/max values {long.MinValue}/{long.MaxValue}");
Console.WriteLine($"ulong has {sizeof(ulong)} bytes in memory, ulong min/max values {ulong.MinValue}/{ulong.MaxValue}");
Console.WriteLine($"float has {sizeof(float)} bytes in memory, float min/max values {float.MinValue}/{float.MaxValue}");
Console.WriteLine($"double has {sizeof(double)} bytes in memory, double min/max values {double.MinValue}/{double.MaxValue}");
Console.WriteLine($"decimal has {sizeof(decimal)} bytes in memory, int min/max values {decimal.MinValue}/{decimal.MaxValue}");
//2
Console.WriteLine($"Enter a an integer to convert to centuries.");
int numCenturies = Convert.ToInt32(Console.ReadLine());
Console.WriteLine($"{numCenturies} centuries is equal to {numCenturies * 100} years {numCenturies * 36524} days " +
    $"{numCenturies * 876576} hours {numCenturies * 52594560} minutes {numCenturies * 3155673600} seconds " +
    $"{numCenturies * 3155673600000} milliseconds {numCenturies * 3155673600000000} microseconds " +
    $"{numCenturies * 3155673600000000000} nanoseconds");