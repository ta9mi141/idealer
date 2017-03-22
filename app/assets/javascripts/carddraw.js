//<!--ドローボタンここ-->
var i = 0;

function CardDraw0(){
  $("#openplace0").replaceWith('<div id="ideacard0" class="card"><div class="mark">'+ ideas[i][1]+'</div><div class="noteleaf">'+ideas[i][0]+'</div></div>');
  return i++;
};
function CardDraw1(){
  $("#openplace1").replaceWith('<div id="ideacard1" class="card"><div class="mark">'+ideas[i][1]+'</div><div class="noteleaf">'+ideas[i][0]+"</div></div>");
  return i++
};
function CardDraw2(){
  $("#openplace2").replaceWith('<div id="ideacard2" class="card"><div class="mark">'+ideas[i][1]+'</div><div class="noteleaf">'+ideas[i][0]+"</div></div>");
  return i++
};
function CardDraw3(){
  $("#openplace3").replaceWith('<div id="ideacard3" class="card"><div class="mark">'+ideas[i][1]+'</div><div class="noteleaf">'+ideas[i][0]+"</div></div>");
  return i++
};
function CardDraw4(){
  $("#openplace4").replaceWith('<div id="ideacard4" class="card"><div class="mark">'+ideas[i][1]+'</div><div class="noteleaf">'+ideas[i][0]+"</div></div>");
  return i++
};
//<!--ドローボタン-->

//カード破棄
function discard0(){
  $("#ideacard0").replaceWith('<div  id=openplace0>zone0</div>')
}
function discard1(){
  $("#ideacard1").replaceWith('<div  id=openplace1>zone0</div>')
}
function discard2(){
  $("#ideacard2").replaceWith('<div  id=openplace2>zone0</div>')
}
function discard3(){
  $("#ideacard3").replaceWith('<div  id=openplace3>zone0</div>')
}
function discard4(){
  $("#ideacard4").replaceWith('<div  id=openplace4>zone0</div>')
}
