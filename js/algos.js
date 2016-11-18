// Code for pretty console.log function
function splitOutput(release){
  console.log("\n----------- "+release+" -----------\n")
}


/*---------------RELEASE 0--------------*/
splitOutput("Release 0")

/*Release 0 pseudocode
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

/*Driver code*/
console.log(longestWordFinder(words));


/*------Much better way------------*/
function longestWordFinder2(wordsArr){
  return wordsArr.sort(function (a, b) { return b.length - a.length; })[0];
}

/*Driver code*/
console.log(longestWordFinder2(words));




/*---------------RELEASE 1--------------*/
splitOutput("Release 1")
/*Release 1 pseudocode
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

function matchChecker(obj1,obj2){
  var match = false
  for (var key in obj1) {
    if(obj1[key] == obj2[key]){
      match = true
    }
  }
  return match
}

//Driver for test true
var obj1 = {name: "Steven", age: 54, weight:100};
var obj2 ={name: "Tamir", age: 54, weight:120};
console.log(matchChecker(obj1,obj2))

//Driver for test false
var obj1Fail = {name: "Steven", age: 51, weight:100};
var obj2Fail ={name: "Tamir", age: 54, weight:120};
console.log(matchChecker(obj1Fail,obj2Fail))

/*---------------RELEASE 2--------------*/
splitOutput("Release 2")
/*Release 2 pseudocode*/
/*Finally something where pseudocode is beneficial
1. Create a function to get a random char code and turn it into a letter
2. Create a function that generates a random word form the random letters
3. create a function that generates an array of those random words
4. Add a loop to print out 10 random arrays of random words
5. use the  longestWordFinder function to print the longest word in the random array
*/

//Genarate a letter from char code
function letterGen(){
   var charCode = parseInt(Math.random() * (123 - 97) + 97)
   return String.fromCharCode(charCode)
}

//Generate a random number between 1 and 10
function randNum1to10(){
  return Math.random() * (11 - 1) + 1;
}


//Generate a word
function wordGen(){
  var num = randNum1to10()
  word = ""
  for(var i = 0;i<num;i++){
    word += letterGen()
  }
  return word
}


//Generate an array of words
function wordArrGen(num){
  var wordArr = [];
  for(var i =0;i<num;i++){
    wordArr.push(wordGen());
  }
  return wordArr;
}


/*Driver code*/
for(var i =0;i< 10;i++){
  //this is just a pretty line break
  splitOutput(" set: "+(i+1))

  var newWordArray = wordArrGen(randNum1to10())
  console.log(newWordArray)
  console.log("The longest word in the above array is: " +longestWordFinder2(newWordArray))
}
