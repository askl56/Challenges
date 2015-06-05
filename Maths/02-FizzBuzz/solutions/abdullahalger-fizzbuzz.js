/*
 * FizzBuzz on an Array
 */

function fizzbuzz(arr) {
  newArr = [];
  for(var i = 0, arrLen = arr.length; i < arrLen; i++) {
    if (arr[i] % 3 === 0 && arr[i] % 5 === 0) {
      newArr.push("FizzBuzz");
    }
    else if (arr[i] % 3 === 0) {
      newArr.push("fizz");
    }
    else if (arr[i] % 5 === 0) {
      newArr.push("buzz");
    }
    else {
      newArr.push(arr[i]);
    }
  }
  return newArr;
}

/*
 * FizzBuzz on preset numbers
 */

function fizzbuzz() {
  for(var number = 0, numLen = 101; number < numLen; number++) {
    if (number % 3 === 0 && number % 5 === 0) {
      console.log("FizzBuzz");
    }
    else if (number % 3 === 0) {
      console.log("Fizz");
    }
    else if (number % 5 === 0) {
      console.log("Buzz");
    }
    else {
      console.log(number);
    }
  }
}