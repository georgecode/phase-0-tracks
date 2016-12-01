console.log("hello jkashdklfjahsdhflalhjsdf");

var par = document.getElementsByTagName("p")[0];

function changeColor(event){
  console.log(event);
  console.log(par);
  par.style.color = "green";
};

document.addEventListener("click", changeColor);

