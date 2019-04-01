library lodash_dart;

import 'package:meta/meta.dart';

class Lodash {
  List chunk({@required List array, @required int size}) {
    List result = [];
    if (array.isEmpty || size <= 0) {
      return result;
    }
    int first = 0;
    int last = size;
    int totalLoop = array.length % size == 0
        ? array.length ~/ size
        : array.length ~/ size + 1;
    for (int i = 0; i < totalLoop; i++) {
      if (last > array.length) {
        result.add(array.sublist(first, array.length));
      } else {
        result.add(array.sublist(first, last));
      }
      first = last;
      last = last + size;
    }
    return result;
  }

  List compact({@required List array}) {
    List result = [];
    if (array.length == 0) {
      return result;
    }
    array.forEach((data) {
      if (data == null || data == false || data == "" || data == 0) {
      } else {
        result.add(data);
      }
    });

    return result;
  }

  List drop({@required List array, @required int n}) {
    List result = [];
    if (n > array.length || n < 0) {
      return [];
    }
    result = array.sublist(n, array.length);
    return result;
  }

  List dropRight({@required List array, @required int n}) {
    List result = [];
    if (n > array.length || n < 0) {
      return [];
    }
    result = array.sublist(0, array.length - n);
    return result;
  }

  List fill({List array, var value, int start, int end}) {
    List result = [];
    if (start != null && end != null) {
      if (start < 0 || end > array.length || (end - start) < 0) {
        return [];
      }
      List newArray = [];
      for (int i = 0; i < (end - start); i++) {
        newArray.add(value);
      }
      array.replaceRange(start, end, newArray);
      return array;
    }

    for (int i = 0; i < array.length; i++) {
      result.add(value);
    }
    return result;
  }

  String join({@required List<String> array, @required String separator}) {
    return array.join(separator);
  }

  last({@required List array}) {
    return array[array.length - 1];
  }

  nth({@required List array, @required int n}) {
    if (n >= array.length) return null;
    if (n < 0) {
      if (n * (-1) >= array.length) return null;
      return array[(array.length - n * (-1)) - 1];
    }

    return array[n];
  }

  List reverse({@required List array}) {
    List result = [];
    int i = array.length - 1;
    while (i >= 0) {
      result.add(array[i]);
      i--;
    }
    return result;
  }

  List without({@required List array, @required List values}) {
    array.removeWhere((_) => values.contains(_));
    return array;
  }

  head({List array}) {
    return array.length > 0 ? array[0] : null;
  }

  List indexOf({@required List array, @required value}) {
    List result = [];
    for (int i = 0; i < array.length; i++) {
      if (array[i] == value) result.add(i);
    }

    return result;
  }

  List initial({List array}) {
    if (array.isEmpty) return [];
    array.removeLast();
    return array;
  }

  List lastIndexOf({List array, value}) {
    List result = [];
    for (int i = array.length - 1; i >= 0; i--) {
      if (array[i] == value) result.add(i);
    }
    return result;
  }

  List pull({List array, List values}) {
    array.removeWhere((_) => values.contains(_));
    return array;
  }
}
