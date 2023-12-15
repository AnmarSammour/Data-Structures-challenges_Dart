class Node<T> {
  T value;
  Node<T>? next;

  Node(this.value, [this.next]);
}

class LinkedList_ReverseLinkedList {
  Node<T>? reverseLinkedList<T>(Node<T>? head) {
    Node<T>? prev = null;
    var current = head;
    while (current != null) {
      var next = current.next;
      current.next = prev;
      prev = current;
      current = next;
    }
    return prev;
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
  var reverseLinkedList = LinkedList_ReverseLinkedList();

  var node1 = Node(1);
  var node2 = Node(2);
  var node3 = Node(3);
  var node4 = Node(4);
  var node5 = Node(5);

  node1.next = node2;
  node2.next = node3;
  node3.next = node4;
  node4.next = node5;

  print("Linked List: ${reverseLinkedList.formatList(node1)}");

  var reversed = reverseLinkedList.reverseLinkedList(node1);

  print("Reverse Linked List: ${reverseLinkedList.formatList(reversed)}");
}
