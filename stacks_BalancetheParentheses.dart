class stacks_BalancetheParentheses  {
  
bool isBalanced(String str) {

  var stack = [];

  //Scroll through all the characters in the text
  for (var i = 0; i < str.length; i++) {
    //If the letter is' (', we add' ('to stack
    if (str[i] == '(') {
      stack.add('(');
    } 
    //If the letter is') ', we check the presence of' ('in stack
    else if (str[i] == ')') {
      //If the stack is empty, the text is unbalanced
      if (stack.isEmpty) {
        return false;
      } 
      //If there is' ('in stack, we delete it
      else {
        stack.removeLast();
      }
    }
  }

  //If the stack is empty at the end, the brackets are balanced
  return stack.isEmpty;
}



}

void main() {
    var BalancetheParentheses = stacks_BalancetheParentheses();

  var str1 = '()()()';
  var str2 = '(())';
  var str3 = '(()))';
  var str4 = '(anmar))';
  
  print("${str1} - Are the balanced parentheses? ${BalancetheParentheses.isBalanced(str1) ? 'Yes' : 'No'}");
  print("${str2} - Are the balanced parentheses? ${BalancetheParentheses.isBalanced(str2) ? 'Yes' : 'No'}");
  print("${str3} - Are the balanced parentheses? ${BalancetheParentheses.isBalanced(str3) ? 'Yes' : 'No'}");
  print("${str4} - Are the balanced parentheses? ${BalancetheParentheses.isBalanced(str4) ? 'Yes' : 'No'}");

}