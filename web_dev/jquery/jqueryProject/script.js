console.log("js works!!!")

count = 0;

$( "#sendInfo" ).click(function() {
  var name = document.getElementById("name").value;
  var blog = document.getElementById("blogInput").value;
  count++;
  $("article").append("<div class='blogPost'>post:"+count+"<br><em>User Name: "+name+"</em></br>"+blog+"</div>");
});