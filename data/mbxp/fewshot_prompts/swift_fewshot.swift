/**
 * You are an expert Swift programmer, and here is your task.
 * Write a function that matches a string that has an a followed by two to three 'b'.
 * >>> textMatchTwoThree("ac")
 * "Not matched!"
 * >>> textMatchTwoThree("dc")
 * "Not matched!"
 * >>> textMatchTwoThree("abbbba")
 * "Found a match!"
 */
func textMatchTwoThree(text : String) -> String {
    if (text.contains("a") && text.contains("b") && text.contains("b")) {
        return "Found a match!"
    } else {
        return "Not matched!"
    }
}

/**
 * You are an expert Swift programmer, and here is your task.
 * Write a Swift function to find the maximum of two numbers.
 * >>> maximum(5, 10)
 * 10
 * >>> maximum(-1, -2)
 * -1
 * >>> maximum(9, 7)
 * 9
 */
func maximum(a : Int, b : Int) -> Int {
    return a > b ? a : b
}

/**
 * You are an expert Swift programmer, and here is your task.
 * Write a function to check if all values are same in a dictionary.
 * >>> checkValue(["Cierra Vega" : 12, "Alden Cantrell" : 12, "Kierra Gentry" : 12, "Pierre Cox" : 12], 10)
 * false
 * >>> checkValue(["Cierra Vega" : 12, "Alden Cantrell" : 12, "Kierra Gentry" : 12, "Pierre Cox" : 12], 12)
 * true
 * >>> checkValue(["Cierra Vega" : 12, "Alden Cantrell" : 12, "Kierra Gentry" : 12, "Pierre Cox" : 12], 5)
 * false
 */
func checkValue(dict : [String: Int], n : Int) -> Bool {
    for (key, value) in dict {
        if (value != n) {
            return false
        }
    }
    return true
}