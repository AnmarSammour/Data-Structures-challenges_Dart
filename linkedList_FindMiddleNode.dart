class Node<T> {
  T value;
  Node<T>? next;

  Node(this.value, [this.next]);
}

class LinkedList_FindMiddleNode {
  Node<T>? findMiddleNode<T>(Node<T>? head) {
    var slow = head;
    var fast = head;
    while (fast?.next != null) {
      slow = slow?.next;
      fast = fast?.next?.next;
    }
    return slow;
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
  var middleNodeFinder = LinkedList_FindMiddleNode();

  var node1 = Node(1);
  var node2 = Node(2);
  var node3 = Node(3);
  var node4 = Node(4);
  var node5 = Node(5);
  
  node1.next = node2;
  node2.next = node3;
  node3.next = node4;
  node4.next = node5;

  print("Linked List: ${middleNodeFinder.formatList(node1)}");

  var middleNode = middleNodeFinder.findMiddleNode(node1);
  print("Middle node: ${middleNode?.value}");
}
