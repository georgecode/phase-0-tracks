/*---------------RELEASE 0--------------*/
/*Release 0 sudo
1. loop through array of words
2. find the word length
3. make a conditional that stores the longest word
5. return the word*/

/*-------What assignment asked for--------*/
var words = ["long phrase","longest phrase","longer phrase"]

function longestWordFinder(wordsArr){
  var wordLength = 0;
  var longestWord ="";
  for(var i in wordsArr){
    if(wordsArr[i].length >= wordLength){
      wordLength = wordsArr[i].length;
      longestWord = wordsArr[i];
    }
  }
  return longestWord;
}

console.log(longestWordFinder(words));

/*------Much better way------------*/
function longestWordFinder2(wordsArr){
  return wordsArr.sort(function (a, b) { return b.length - a.length; })[0];
}

console.log(longestWordFinder2(words));




/*---------------RELEASE 1--------------*/
/*Release 1 sudo
1. store given objects into var's so they are
easier to work with.
2. set results to false to avoid an undefined if no matches are found.
3. for in loop through object.
  3.1 Add conditional to check if there is a value
  match between the two objects
  3.2 If values match set result to true
4. return the result
*/

//Release 1 code
var obj1 = {name: "Steven", age: 54, weight:100};
var obj2 ={name: "Tamir", age: 54, weight:120};

function matchChecker(obj1,obj2){
  var match = false
  for (var key in obj1) {
    if(obj1[key] == obj2[key]){
      match = true
    }
  }
  return match
}

//Driver for test
console.log(matchChecker(obj1,obj2))
