void main() {
  print('start');

  Future(() => print('1'));

  Future.microtask(() => print('2'));

  Future.sync(() => print('3'));

  Future.value('4').then(print);

  Future.error(Exception('test')).catchError(
    (error) => print('error catched'),
  );

  Future.delayed(
    Duration(seconds: 2),
    () => print('after 2 seconds'),
  );

  Future.wait([
    Future.delayed(
      Duration(seconds: 2),
      () => print('first'),
    ),
    Future.delayed(
      Duration(seconds: 3),
      () => print('second'),
    ),
  ]);

  Future.any([
    Future.delayed(
      Duration(seconds: 5),
      () => print('first in any'),
    ),
    Future.delayed(
      Duration(seconds: 10),
      () => print('second in any'),
    ),
  ]);

  Future.forEach([1, 2], (e) {
    print('$e in foreach');
  });

  int count = 0;

  Future.doWhile(() {
    print('$count in do while');
    count++;
    return count < 3;
  });

  print('end');
}

/*
Actual print order:

1. start
2. 3  (Future.sync)
3. 1 in foreach
4. 2 in foreach
5. 0 in do while
6. 1 in do while
7. 2 in do while
8. end
9. 2  (microtask: Future.microtask)
10. 4  (microtask: Future.value)
11. error catched (microtask: Future.error)
12. 1  (macro task: Future())
13. after 2 seconds (Future.delayed)
14. first (Future.wait)
15. second (Future.wait)
16. first in any (Future.any)
17. second in any (Future.any)
*/
