object Main extends App {
    /**
     * You are an expert Scala programmer, and here is your task.
     * Write a function to reverse strings in a given list of string values.
     * >>> reverseStringList(List("Red", "Green", "Blue", "White", "Black"))
     * List("deR", "neerG", "eulB", "etihW", "kcalB")
     * >>> reverseStringList(List("john", "amal", "joel", "george"))
     * List("nhoj", "lama", "leoj", "egroeg")
     * >>> reverseStringList(List("jack", "john", "mary"))
     * List("kcaj", "nhoj", "yram")
     */
    def reverseStringList(stringlist : List[String]) : List[String] = {
        stringlist.map(_.reverse)
    }
}

object Main extends App {
    /**
     * You are an expert Scala programmer, and here is your task.
     * Write a function to sort a list of tuples in increasing order by the last element in each tuple.
     * >>> sortTuple(List(List(1, 3), List(3, 2), List(2, 1)))
     * List(List(2, 1), List(3, 2), List(1, 3))
     * >>> sortTuple(List(List(2, 4), List(3, 3), List(1, 1)))
     * List(List(1, 1), List(3, 3), List(2, 4))
     * >>> sortTuple(List(List(3, 9), List(6, 7), List(4, 3)))
     * List(List(4, 3), List(6, 7), List(3, 9))
     */
    def sortTuple(tup : List[List[Int]]) : List[List[Int]] = {
        val sorted = tup.sortBy(_.last)
        sorted
    }
}

object Main extends App {
    /**
     * You are an expert Scala programmer, and here is your task.
     * Write a function to check whether the given key is present in the dictionary or not.
     * >>> isKeyPresent(Map(1->10, 2->20, 3->30, 4->40, 5->50, 6->60), 5)
     * true
     * >>> isKeyPresent(Map(1->10, 2->20, 3->30, 4->40, 5->50, 6->60), 6)
     * true
     * >>> isKeyPresent(Map(1->10, 2->20, 3->30, 4->40, 5->50, 6->60), 10)
     * false
     */
    def isKeyPresent(d : Map[Int, Int], x : Int) : Boolean = {
        d.keySet.contains(x)
    }
}