using System;
using System.Collections.Generic;
using System.Linq;
using System.Text.RegularExpressions;

namespace Solution
{
    public class Program
    {
        /// <summary>
        /// Write a function to filter even numbers using lambda function.
        ///
        /// Examples:
        /// >>> FilterEvennumbers([1, 2, 3, 4, 5, 6, 7, 8, 9, 10])
        /// >>> [2, 4, 6, 8, 10]
        /// >>> FilterEvennumbers([10,20,45,67,84,93])
        /// >>> [10,20,84]
        /// >>> FilterEvennumbers([5,7,9,8,6,4,3])
        /// >>> [8,6,4]
        /// </summary>
        public static List<int> FilterEvennumbers (List<int> nums)
        {
            return nums.Where(x => x % 2 == 0).ToList();
        }
    }
}

using System;
using System.Collections.Generic;
using System.Linq;
using System.Text.RegularExpressions;

namespace Solution
{
    public class Program
    {
        /// <summary>
        /// Write a c# function to count true booleans in the given list.
        ///
        /// Examples:
        /// >>> Count([True,False,True])
        /// >>> 2
        /// >>> Count([False,False])
        /// >>> 0
        /// >>> Count([True,True,True])
        /// >>> 3
        /// </summary>
        public static int Count (List<bool> lst)
        {
            return lst.Where(x => x).Count();
        }
    }
}

using System;
using System.Collections.Generic;
using System.Linq;
using System.Text.RegularExpressions;

namespace Solution
{
    public class Program
    {
        /// <summary>
        /// Write a function to count total characters in a string.
        ///
        /// Examples:
        /// >>> CountCharac("python programming")
        /// >>> 18
        /// >>> CountCharac("language")
        /// >>> 8
        /// >>> CountCharac("words")
        /// >>> 5
        /// </summary>
        public static int CountCharac (string str1)
        {
            // write your code here
            return str1.Length;
        }
    }
}