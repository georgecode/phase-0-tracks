/*I'll entertain you with the sudo code and the ugly solution asked for, but than i'll add a more eloquent way solution below
1. create an empty function with a string
2. convert the string into a split array
3. loop through the letters of the array
  3.1 reomve a letter off the back of the split array
  3.2 add the removed letter to a new array
4. join the new array
5. output the new array*/

/*Very ugly example, but what the assignment asked for*/
var reverser_ugly = function(str){
  strArr = str.split('')
  var newStr =[]
  strArrLength = strArr.length

  for(var i=0;i<strArrLength;i++){
    newStr.push(strArr.pop())
  }
  return newStr.join('')
}

console.log(reverser_ugly("ugly way"))



/*Eloquent way*/
function reverse_eloquent(str){
return str.split('').reverse().join('')
}

console.log(reverse_eloquent("eloquent way"))

