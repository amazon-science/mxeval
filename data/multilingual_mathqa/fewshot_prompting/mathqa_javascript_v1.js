
/**
 * the banker ' s gain of a certain sum due 3 years hence at 10 % per annum is rs . 36 . what is the present worth ? n0 = 3.0 n1 = 10.0 n2 = 36.0
 */
function problem() {
    var n0 = 3.0;
    var n1 = 10.0;
    var n2 = 36.0;
    var t0 = n2 * 100.0;
    var t1 = n0 * n1;
    var t2 = t0 / t1;
    var t3 = t2 * 100.0;
    var answer = t3 / t1;
    return answer
}

/**
 * sophia finished 2 / 3 of a book . she calculated that she finished 90 more pages than she has yet to read . how long is her book ? n0 = 2.0 n1 = 3.0 n2 = 90.0
 */
function problem() {
	var n0 = 2.0;
    var n1 = 3.0;
    var n2 = 90.0;
    var t0 = n0 / n1;
    var t1 = 1.0 - t0;
    var answer = n2 / t1;
    return answer;
}

 /**
 * 120 is what percent of 50 ? n0 = 120.0 n1 = 50.0
 */
function problem() {
	var n0 = 120.0;
    var n1 = 50.0;
    var t0 = n0 / n1;
    var answer = t0 * 100.0;
    return answer;
}

 /**
 * there are 10 girls and 20 boys in a classroom . what is the ratio of girls to boys ? n0 = 10.0 n1 = 20.0
 */
function problem() {
    var n0 = 10.0;
    var n1 = 20.0;
    var answer = n0 / n1;
    return answer;

}
