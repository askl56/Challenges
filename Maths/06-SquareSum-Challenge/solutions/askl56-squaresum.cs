using System;
using System.Collections.Generic;
using System.Linq;

class Program {
    static int sumsq(ICollection<int> i) {
        if (i == null || i.Count == 0) return 0;
        return i.Select(x => x * x).Sum();
    }

    static void Main() {
        int[] a = { 1, 2, 3, 4, 5 };
        Console.WriteLine(sumsq(a)); // 55
    }
}
