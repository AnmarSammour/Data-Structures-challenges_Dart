class stacks_StacksReverseAList {
  void reverseListUsingMethod() {
    print("1. Use the 'List.reversed' method: ");

    var listReversed = [1, 2, 3, 4, 5];
    print("List: $listReversed");
    var reversedList = listReversed.reversed.toList();
    print("Reversed a list: $reversedList");
    print("\n");
  }

  void reverseListUsingLoop() {
    print("2. Using the loop: ");
    
    var listLoop = ["a", "b", "c", "d", "e"];
    print("List: $listLoop");
    for (var i = 0; i < listLoop.length ~/ 2; i++) {
      var temp = listLoop[i];
      listLoop[i] = listLoop[listLoop.length - i - 1];
      listLoop[listLoop.length - i - 1] = temp;
    }
    print("Reversed a list: $listLoop");
    print("\n");
  }

  void reverseListUsingListFrom() {
    print("3. Using List.from(): ");
    
    var listFrom = ["a", "n", "m", "a", "r"];
    print("List: $listFrom");
    var reversedListFrom = List.from(listFrom.reversed);
    print("Reversed a list: $reversedListFrom");
  }
}

void main() {
  var stacksReverseAList = stacks_StacksReverseAList();
  print("Reverse list in Dart: ");
  stacksReverseAList.reverseListUsingMethod();
  stacksReverseAList.reverseListUsingLoop();
  stacksReverseAList.reverseListUsingListFrom();
}
