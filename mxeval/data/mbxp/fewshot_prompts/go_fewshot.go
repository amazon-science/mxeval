package main

// Code should be written in Go/Golang
// Write a golang function to count positive numbers in a list.
// Examples:
// >>> pos_count([1,-2,3,-4])
// >>> 2
// >>> pos_count([3,4,5,-1])
// >>> 3
// >>> pos_count([1,2,3,4])
// >>> 4
func pos_count (list []int) int {

// --------------------- COMPLETION (model generated) ---------------------
    var count int
    for _, v := range list {
        if v > 0 {
            count += 1
        }
    }
    return count
}


// Code should be written in Go/Golang
// Write a function to check whether all items of a list are equal to a given string.
// Examples:
// >>> check_element(["green", "orange", "black", "white"],'blue')
// >>> False
// >>> check_element([1,2,3,4],7)
// >>> False
// >>> check_element(["green", "green", "green", "green"],'green')
// >>> True
func check_element (list []interface{}, element interface{}) bool {

// --------------------- COMPLETION (model generated) ---------------------
    for _, v := range list {
        if v != element {
            return false
        }
    }
    return true
}


// Code should be written in Go/Golang
// Write a golang function to left rotate the string.
// Examples:
// >>> left_rotate("python",2)
// >>> "thonpy"
// >>> left_rotate("bigdata",3 )
// >>> "databig"
// >>> left_rotate("hadoop",1 )
// >>> "adooph"
func left_rotate (s string, d int) string {

// --------------------- COMPLETION (model generated) ---------------------
    tmp := s[d : ] + s[0 : d]
    return tmp
}