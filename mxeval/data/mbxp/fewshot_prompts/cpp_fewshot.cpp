#include <bits/stdc++.h>
using namespace std;


/**
 * Write a c++ function to remove first and last occurrence of a given character from the string.
 * > removeOcc(string("hello"), string("l"))
 * string("heo")
 * > removeOcc(string("abcda"), string("a"))
 * string("bcd")
 * > removeOcc(string("PHP"), string("P"))
 * string("H")
 */
string removeOcc(string s, string ch) {
    string result = "";
    for (int i = 0; i < s.size(); i++) {
        if (s[i] != ch[0] && s[i] != ch[ch.size() - 1]) {
            result += s[i];
        }
    }
    return result;
}


/**
 * Write a c++ function to find the maximum sum of elements of list in a list of lists.
 * > maximumSum(vector<vector<int>>{{1, 2, 3}, {4, 5, 6}, {10, 11, 12}, {7, 8, 9}})
 * 33
 * > maximumSum(vector<vector<int>>{{0, 1, 1}, {1, 1, 2}, {3, 2, 1}})
 * 6
 * > maximumSum(vector<vector<int>>{{0, 1, 3}, {1, 2, 1}, {9, 8, 2}, {0, 1, 0}, {6, 4, 8}})
 * 19
 */
int maximumSum(vector<vector<int>> list1) {
    int max = 0;
    for (int i = 0; i < list1.size(); i++) {
        int sum = 0;
        for (int j = 0; j < list1[i].size(); j++) {
            sum += list1[i][j];
        }
        if (sum > max) {
            max = sum;
        }
    }
    return max;
}


/**
 * Write a function to find frequency count of list of lists.
 * > frequencyLists(vector<vector<int>>{{1, 2, 3, 2}, {4, 5, 6, 2}, {7, 8, 9, 5}})
 * {{1, 1}, {2, 3}, {3, 1}, {4, 1}, {5, 2}, {6, 1}, {7, 1}, {8, 1}, {9, 1}}
 * > frequencyLists(vector<vector<int>>{{1, 2, 3, 4}, {5, 6, 7, 8}, {9, 10, 11, 12}})
 * {{1, 1}, {2, 1}, {3, 1}, {4, 1}, {5, 1}, {6, 1}, {7, 1}, {8, 1}, {9, 1}, {10, 1}, {11, 1}, {12, 1}}
 * > frequencyLists(vector<vector<int>>{{20, 30, 40, 17}, {18, 16, 14, 13}, {10, 20, 30, 40}})
 * {{20, 2}, {30, 2}, {40, 2}, {17, 1}, {18, 1}, {16, 1}, {14, 1}, {13, 1}, {10, 1}}
 */
unordered_map<int, int> frequencyLists(vector<vector<int>> list1) {
    unordered_map<int, int> map = {};
    for (auto v : list1) {
        for (auto w : v) {
            if (map.find(w) != map.end()) {
                map[w] += 1;
            } else {
                map[w] = 1;
            }
        }
    }
    return map;
}