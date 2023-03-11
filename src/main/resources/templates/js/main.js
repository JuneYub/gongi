let main_city = [
  {v:"", t:""},
  {v:"서울", t:"서울"},
  {v:"경기", t:"경기"},
  {v:"인천", t:"인천"}
]

let seoul_city = [
  {v:"노원구", t:"노원구", latitude: 0 , logitude: 0},
  {v:"중랑구", t:"중랑구", latitude: 0 , logitude: 0},
  {v:"광진구", t:"광진구", latitude: 0 , logitude: 0},
  {v:"도봉구", t:"도봉구", latitude: 0 , logitude: 0},
  {v:"강북구", t:"강북구", latitude: 0 , logitude: 0},
  {v:"동대문구", t:"동대문구", latitude: 0 , logitude: 0},
  {v:"성동구", t:"성동구", latitude: 0 , logitude: 0},
  {v:"성북구", t:"성북구", latitude: 0 , logitude: 0},
  {v:"종로구", t:"종로구", latitude: 0 , logitude: 0},
  {v:"중구", t:"중구", latitude: 0 , logitude: 0},
  {v:"용산구", t:"용산구", latitude: 0 , logitude: 0},
  {v:"은평구", t:"은평구", latitude: 0 , logitude: 0},
  {v:"서대문구", t:"서대문구", latitude: 0 , logitude: 0},
  {v:"마포구", t:"마포구", latitude: 0 , logitude: 0},
  {v:"강서구", t:"강서구", latitude: 0 , logitude: 0},
  {v:"양천구", t:"양천구", latitude: 0 , logitude: 0},
  {v:"구로구", t:"구로구", latitude: 0 , logitude: 0},
  {v:"영등포구", t:"영등포구", latitude: 0 , logitude: 0},
  {v:"금천구", t:"금천구", latitude: 0 , logitude: 0},
  {v:"동작구", t:"동작구", latitude: 37.5124532868516 , logitude: 126.93946438269933},
  {v:"관악구", t:"관악구", latitude: 0 , logitude: 0},
  {v:"서초구", t:"서초구", latitude: 0 , logitude: 0},
  {v:"강남구", t:"강남구", latitude: 0 , logitude: 0},
  {v:"송파구", t:"송파구", latitude: 0 , logitude: 0},
  {v:"강동구", t:"강동구", latitude: 0 , logitude: 0}
]

function loadMainCity() {
  let h = [];
  main_city.forEach(item => {
    h.push('<option value="' + item.v + '">' + item.t + '</option>'); 
  });

  document.getElementById("main_city").innerHTML = h.join("");
}

loadMainCity();

function loadSubCity() {

  let city_main = document.getElementById("main_city").value;
  let h = [];
  if(city_main == ""){
    
  } else {
    if(city_main == "서울"){
      seoul_city.forEach(item => {
        h.push('<option value=' + item.v + '>' + item.t + '</option>');
      });

  }
  document.getElementById("sub_city").innerHTML = h.join("");
}
}




// Ajax를 통해서 주소 select 값을 controller로 전달 (안씀)

function listChange() {

  $.ajax({
    url: "/viewCntDes",
    type: 'post',
    async: true, // true(비동기), false(동기)
    data: {
      "admcode" : parseInt(admcode)
    },
    //서버로 전달할 데이터(key:value 형태의 객체 or String)
    success: function(){
    },
    error: function(request,status,error){
      alert("데이터 통신 주 에러 발생 code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);

    }
  }).done(function (result) {
    console.log(result);
    $("#tableBody").replaceWith(result);

    document.getElementsByName('placeSubcity').forEach(function (ele, idx){
      ele.innerText = subCity;
    })

  })
}

function callLink(item) {
  var place = $(item).text();
  var url = "https://search.naver.com/search.naver?where=nexearch&sm=top_hty&fbm=1&ie=utf8&query="+subCity+"+"+place;
  window.open(url);
}

$(document).ready(function(){
  $('table tr').mouseover(function(){
    $(this).css("backgroundColor","buttonface");
  });
  $('table tr').mouseout(function(){
    $(this).css("backgroundColor","#fff");
  });
});

$(function () {
  $(window).scroll(function () {
    if($(this).scrollTop() > 300) {
      $('#moveTop').fadeIn();
    } else {
      $('#moveTop').fadeOut();
    }
  })
});

$("#moveTop").click(function () {
  $('html, body').animate({
    scrollTop : 0
  }, 400);
  return false;
})

/*
function new_window(placeName) {
  window.open(
      "placeInfo.html",
      placeName,
      "width=400, height=300, top=50, left=50"
  );
}
*/


function openDetail() {
  $('input[name=detailSubcity]').attr('value',subCity);
  var wintype = "toolbar=no, width=400, height=300, top=150, left=150, directories=no, menubar=no, scrollbars=yes";
  window.open("", "childeView", wintype);

}












