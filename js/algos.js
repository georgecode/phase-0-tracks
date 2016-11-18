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

