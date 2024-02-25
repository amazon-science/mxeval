/**
 * Write a javascript function to identify non-prime numbers.
 * > isNotPrime(2)
 * false
 * > isNotPrime(10)
 * true
 * > isNotPrime(35)
 * true
 */
function isNotPrime(n) {
    for (let i = 2; i < n; i++) {
        if (n % i === 0) {
            return true;
        }
    }
    return false;
}

/**
 * Write a javascript function to remove all digits from a list of strings.
 * > remove(["4words", "3letters", "4digits"])
 * ["words", "letters", "digits"]
 * > remove(["28Jan", "12Jan", "11Jan"])
 * ["Jan", "Jan", "Jan"]
 * > remove(["wonder1", "wonder2", "wonder3"])
 * ["wonder", "wonder", "wonder"]
 */
function remove(list) {
    return list.map(item => item.replace(/\d+/g, ''));
}

/**
 * Write a javascript function to determine whether all the numbers are different from each other are not.
 * > testDistinct([1, 5, 7, 9])
 * true
 * > testDistinct([2, 4, 5, 5, 7, 9])
 * false
 * > testDistinct([1, 2, 3])
 * true
 */
function testDistinct(data) {
  return data.every((item, index) => {
    return data.indexOf(item) === index;
  });
}

