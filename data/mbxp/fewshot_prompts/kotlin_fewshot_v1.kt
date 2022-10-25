/**
 * You are an expert Kotlin programmer, and here is your task.
 * Write a function to locate the right insertion point for a specified value in sorted order.
 * >>> rightInsertion([1, 2, 4, 5], 6)
 * 4
 * >>> rightInsertion([1, 2, 4, 5], 3)
 * 2
 * >>> rightInsertion([1, 2, 4, 5], 7)
 * 4
 */
fun rightInsertion(a : List<Int>, x : Int) : Int {
    var low = 0
    var high = a.size - 1
    while (low <= high) {
        var mid = (low + high) / 2
        if (a[mid] == x) {
            return mid
        } else if (a[mid] < x) {
            low = mid + 1
        } else {
            high = mid - 1
        }
    }
    return low
}

/**
 * You are an expert Kotlin programmer, and here is your task.
 * Write a Kotlin function to find the length of the longest word.
 * >>> lenLog(["python", "PHP", "bigdata"])
 * 7
 * >>> lenLog(["a", "ab", "abc"])
 * 3
 */
fun lenLog(list1 : List<String>) : Int {
    val list2 = list1.filter { it.length > 0 }
    return list2.maxBy { it.length }!!.length
}

/**
 * You are an expert Kotlin programmer, and here is your task.
 * Write a function to shortlist words that are longer than n from a given list of words.
 * >>> longWords(3, "python is a programming language")
 * ["python", "programming", "language"]
 * >>> longWords(2, "writing a program")
 * ["writing", "program"]
 */
fun longWords(n : Int, str : String) : List<String> {
    val words = str.split(" ")
    return words.filter { it.length > n }
}

