<?php

/**
 * You are an expert PHP programmer, and here is your task.
 * Write a function of recursion list sum.
 * php > recursiveListSum([1, 2, [3, 4], [5, 6]])
 * 21
 * php > recursiveListSum([7, 10, [15, 14], [19, 41]])
 * 106
 * php > recursiveListSum([10, 20, [30, 40], [50, 60]])
 * 210
 */
function recursiveListSum($dataList) {
    $sum = 0;
    $i = 0;
    foreach ($dataList as $item) {
        if (is_array($item)) {
            $sum += recursiveListSum($item);
        } else {
            $sum += $item;
        }
    }
    return $sum;
}

/**
 * You are an expert PHP programmer, and here is your task.
 * Write function to find the sum of all items in the given dictionary.
 * php > returnSum(["a" => 100, "b" => 200, "c" => 300])
 * 600
 * php > returnSum(["a" => 25, "b" => 18, "c" => 45])
 * 88
 * php > returnSum(["a" => 36, "b" => 39, "c" => 49])
 * 124
 */
function returnSum($dict) {
    $sum = 0;
    foreach ($dict as $key => $value) {
        $sum += $value;
    }
    return $sum;
}

/**
 * You are an expert PHP programmer, and here is your task.
 * Write a function to find squares of individual elements in a list using lambda function.
 * php > squareNums([1, 2, 3, 4, 5, 6, 7, 8, 9, 10])
 * [1, 4, 9, 16, 25, 36, 49, 64, 81, 100]
 * php > squareNums([10, 20, 30])
 * [100, 400, 900]
 * php > squareNums([12, 15])
 * [144, 225]
 */
function squareNums($nums) {
    $squares = [];
    foreach ($nums as $num) {
        $squares[] = $num * $num;
    }
    return $squares;
}

?>
</s>