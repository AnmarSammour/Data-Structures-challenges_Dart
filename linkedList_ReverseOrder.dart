class Node<T> {
  T value;
  Node<T>? next;

  Node(this.value, [this.next]);
}

class LinkedList_ReverseOrder {
  void printListInReverseOrder<T>(Node<T>? head) {
    var stack = <T>[];
    var current = head;
    while (current != null) {
      stack.add(current.value);
      current = current.next;
    }

    print("Linked List: ${formatList(head)}");
    print("Reversed Linked List: ${formatListInReverse(stack)}");
  }

  String formatList<T>(Node<T>? head) {
    var result = "";
    var current = head;
    while (current != null) {
      result += "${current.value} ";
      current = current.next;
    }
    return result.trim();
  }

  String formatListInReverse<T>(List<T> elements) {
    var result = "";
    for (var element in elements.reversed) {
      result += "$element ";
    }
    return result.trim();
  }
}

void main() {
  var reverseOrder = LinkedList_ReverseOrder();

  var node1 = Node(1);
  var node2 = Node(2);
  var node3 = Node(3);
  
  node1.next = node2;
  node2.next = node3;

  reverseOrder.printListInReverseOrder(node1);
}
