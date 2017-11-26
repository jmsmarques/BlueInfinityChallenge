function onLoad(){
  $("#hid").css("text-decoration", "underline");
  $(".mycards").hide();
  $(".seeMoreTest").hide();
  $(".createQuestion").hide();
  $(".createdQuestion").hide();
}

function activeCard(){
  $("#hid").css("text-decoration", "underline");
  $("#hid2").css("text-decoration", "none");
  $("#hid3").css("text-decoration", "none");
  $(".questions").show();
  $(".mycards").hide();
}

function activeCard2(){
  $("#hid2").css("text-decoration", "underline");
  $("#hid").css("text-decoration", "none");
  $("#hid3").css("text-decoration", "none");
  $(".mycards").show();
  $(".questions").hide();
}

function activeCard3(){
  $("#hid3").css("text-decoration", "underline");
  $("#hid").css("text-decoration", "none");
  $("#hid2").css("text-decoration", "none");
}

function seeMore(){
  $(".seemore").hide();
  $(".seeMoreTest").show();
}

function createBtn(){
  $(".createQuestion").show();
  $(".myQuestions").hide();
  $(".createdQuestion").hide();
}

function createAquestion(){
  var question = $("#questionToAsk").val();
  var details = $("#details").val();
  var tag = $("#tagToAdd").val();
  var deadline = $("#deadlineAdd").val();


  $("#theQuestion").append(question);
  //$(".createdQuestion").append("<p>"+details+"</p>");
  $(".rightQ").append(tag);
  $(".right2Q").append("<b>Deadline: </b>"+deadline);

  $(".createQuestion").hide();
  $(".createdQuestion").show();
}
