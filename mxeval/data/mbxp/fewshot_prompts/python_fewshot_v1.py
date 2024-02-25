def find_char_long(text):
    """
    Write a function to find all words which are at least 4 characters long in a string by using regex.
    >>> find_char_long('Please move back to stream')
    ['Please', 'move', 'back', 'stream']
    >>> find_char_long('Jing Eco and Tech')
    ['Jing', 'Tech']
    >>> find_char_long('Jhingai wulu road Zone 3')
    ['Jhingai', 'wulu', 'road', 'Zone']
    """
    import re

    return re.findall(r"\b\w{4,}\b", text)


def square_nums(nums):
    """
    Write a function to find squares of individual elements in a list using lambda function.
    >>> square_nums([1, 2, 3, 4, 5, 6, 7, 8, 9, 10])
    [1, 4, 9, 16, 25, 36, 49, 64, 81, 100]
    >>> square_nums([10,20,30])
    ([100,400,900])
    >>> square_nums([12,15])
    ([144,225])
    """
    return list(map(lambda x: x**2, nums))


def test_duplicate(arraynums):
    """
    Write a function to find whether a given array of integers contains any duplicate element.
    >>> test_duplicate(([1,2,3,4,5]))
    False
    >>> test_duplicate(([1,2,3,4, 4]))
    True
    >>> test_duplicate([1,1,2,2,3,3,4,4,5])
    True
    """
    if len(arraynums) == len(set(arraynums)):
        return False
    else:
        return True
