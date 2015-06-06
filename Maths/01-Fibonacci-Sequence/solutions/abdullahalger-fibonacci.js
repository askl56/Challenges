/*
 * A JS version of Fibonacci
 */

var x = 0, y = 1;

while (y < 200) { // you can supply another number
  var total = x + y;
  x = y;
  y = total;
  console.log('Fibonacci: ' + total);
}
