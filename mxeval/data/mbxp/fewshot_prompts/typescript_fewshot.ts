/**
 * Write a function to find all words which are at least 4 characters long in a string by using regex.
 *
 * Examples:
 * >>> find_char_long('Please move back to stream')
 * >>> ['Please', 'move', 'back', 'stream']
 * >>> find_char_long('Jing Eco and Tech')
 * >>> ['Jing', 'Tech']
 * >>> find_char_long('Jhingai wulu road Zone 3')
 * >>> ['Jhingai', 'wulu', 'road', 'Zone']
 */
const find_char_long = function (text: string) : Array<string>  {
    return text.match(/\w{4,}/g)
}

/**
 * Write a function to count the most common words in a dictionary.
 *
 * Examples:
 * >>> count_common(['red','green','black','pink','black','white','black','eyes','white','black','orange','pink','pink','red','red','white','orange','white',"black",'pink','green','green','pink','green','pink','white','orange',"orange",'red'])
 * >>> [('pink', 6), ('black', 5), ('white', 5), ('red', 4)]
 * >>> count_common(['one', 'two', 'three', 'four', 'five', 'one', 'two', 'one', 'three', 'one'])
 * >>> [('one', 4), ('two', 2), ('three', 2), ('four', 1)]
 * >>> count_common(['Facebook', 'Apple', 'Amazon', 'Netflix', 'Google', 'Apple', 'Netflix', 'Amazon'])
 * >>> [('Apple', 2), ('Amazon', 2), ('Netflix', 2), ('Facebook', 1)]
 */
const count_common = function (words: Array<string>) : Array<Array<any>>  {
    const counts = {};
    for (const word of words) {
        counts[word] = counts[word] ? counts[word] + 1 : 1;
    }
    return Object.entries(counts).sort((a, b) => b[1] - a[1]);
}

/**
 * Write a function to group the 1st elements on the basis of 2nd elements in the given tuple list.
 *
 * Examples:
 * >>> group_element([(6, 5), (2, 7), (2, 5), (8, 7), (9, 8), (3, 7)])
 * >>> {5: [6, 2], 7: [2, 8, 3], 8: [9]}
 * >>> group_element([(7, 6), (3, 8), (3, 6), (9, 8), (10, 9), (4, 8)])
 * >>> {6: [7, 3], 8: [3, 9, 4], 9: [10]}
 * >>> group_element([(8, 7), (4, 9), (4, 7), (10, 9), (11, 10), (5, 9)])
 * >>> {7: [8, 4], 9: [4, 10, 5], 10: [11]}
 */
const group_element = function (test_list: Array<Array<number>>) : Map<number, Array<number>>  {
    const result = new Map();
    for (const [key, value] of test_list) {
        if (result.has(value)) {
            result.get(value).push(key);
        } else {
            result.set(value, [key]);
        }
    }
    return result;
}