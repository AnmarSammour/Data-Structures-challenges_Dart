class Node<T> {
  T value;
  Node<T>? next;

  Node(this.value, [this.next]);
}

class LinkedList_RemoveAllOccurrences {
  Node<T>? removeAllOccurrences<T>(Node<T>? head, T element) {
    var dummy = Node<T>(element);
    dummy.next = head;
    var prev = dummy;
    var current = head;
    while (current != null) {
      if (current.value == element) {
        prev.next = current.next;
      } else {
        prev = current;
      }
      current = current.next;
    }
    return dummy.next;
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
}

void main() {
  var removeAllOccurrences = LinkedList_RemoveAllOccurrences();

  var node1 = Node(1);
  var node2 = Node(2);
  var node3 = Node(3);
  var node4 = Node(1);
  var node5 = Node(5);

  node1.next = node2;
  node2.next = node3;
  node3.next = node4;
  node4.next = node5;

  print("Linked List: ${removeAllOccurrences.formatList(node1)}");

  var removed = removeAllOccurrences.removeAllOccurrences(node1, 1);

  print("List after removing all occurrences: ${removeAllOccurrences.formatList(removed)}");
}
