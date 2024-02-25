class DifferAtOneBitPos {
    /**
     * Write a java function to check whether the two numbers differ at one bit position only or not.
     * > DifferAtOneBitPos.differAtOneBitPos(13, 9)
     * true
     * > DifferAtOneBitPos.differAtOneBitPos(15, 8)
     * false
     * > DifferAtOneBitPos.differAtOneBitPos(2, 4)
     * false
     */
    public static boolean differAtOneBitPos(int a, int b) {
        int diff = a ^ b;
        int count = 0;
        while (diff > 0) {
            diff = diff & (diff - 1);
            count++;
        }
        return count == 1;
    }
}


class TestDuplicate {
    /**
     * Write a function to find whether a given array of integers contains any duplicate element.
     * > TestDuplicate.testDuplicate([1, 2, 3, 4, 5])
     * false
     * > TestDuplicate.testDuplicate([1, 2, 3, 4, 4])
     * true
     * > TestDuplicate.testDuplicate([1, 1, 2, 2, 3, 3, 4, 4, 5])
     * true
     */
    public static boolean testDuplicate(List<Integer> arraynums) {
        Set<Integer> set = new HashSet<Integer>();
        for (int i = 0; i < arraynums.size(); i++) {
            if (set.contains(arraynums.get(i))) {
                return true;
            }
            set.add(arraynums.get(i));
        }
        return false;
    }
}

class FreqElement {
    /**
     * Write a function to find frequency of the elements in a given list of lists using collections module.
     * > FreqElement.freqElement([[1, 2, 3, 2], [4, 5, 6, 2], [7, 1, 9, 5]])
     * {'2':3,'1':2,'5':2,'3':1,'4':1,'6':1,'7':1,'9':1}
     * > FreqElement.freqElement([[1, 2, 3, 4], [5, 6, 7, 8], [9, 10, 11, 12]])
     * {'1':1,'2':1,'3':1,'4':1,'5':1,'6':1,'7':1,'8':1,'9':1,'10':1,'11':1,'12':1}
     * > FreqElement.freqElement([[15, 20, 30, 40], [80, 90, 100, 110], [30, 30, 80, 90]])
     * {'30':3,'80':2,'90':2,'15':1,'20':1,'40':1,'100':1,'110':1}
     */
    public static HashMap<Integer, Integer> freqElement(List<List<Integer>> nums) {
        HashMap<Integer, Integer> freq = new HashMap<>();
        for (List<Integer> list : nums) {
            for (int i : list) {
                freq.put(i, freq.getOrDefault(i, 0) + 1);
            }
        }
        return freq;
    }
}