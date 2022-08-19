let main_city = [
  {v:"", t:""},
  {v:"서울", t:"서울"},
  {v:"경기", t:"경기"},
  {v:"인천", t:"인천"}
]

let seoul_city = [
  {v:"노원구", t:"노원구"},
  {v:"중랑구", t:"중랑구"},
  {v:"광진구", t:"광진구"},
  {v:"도봉구", t:"도봉구"},
  {v:"강북구", t:"강북구"},
  {v:"동대문구", t:"동대문구"},
  {v:"성동구", t:"성동구"},
  {v:"성북구", t:"성북구"},
  {v:"종로구", t:"종로구"},
  {v:"중구", t:"중구"},
  {v:"용산구", t:"용산구"},
  {v:"은평구", t:"은평구"},
  {v:"서대문구", t:"서대문구"},
  {v:"마포구", t:"마포구"},
  {v:"강서구", t:"강서구"},
  {v:"양천구", t:"양천구"},
  {v:"구로구", t:"구로구"},
  {v:"영등포구", t:"영등포구"},
  {v:"금천구", t:"금천구"},
  {v:"동작구", t:"동작구"},
  {v:"관악구", t:"관악구"},
  {v:"서초구", t:"서초구"},
  {v:"강남구", t:"강남구"},
  {v:"송파구", t:"송파구"},
  {v:"강동구", t:"강동구"}
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
  }
  document.getElementById("sub_city").innerHTML = h.join("");
}

// Ajax를 통해서 주소 select 값을 controller로 전달 (안씀)
/*
function searchCity() {


  var city_main = $('#main_city').val();
  var city_sub = $('#sub_city').val();


  $.ajax({
    url: "/dataSend",
    type: 'post',
    async: true, // true(비동기), false(동기)
    data: {
      mainCity:city_main.toString(),
      subCity:city_sub.toString()
    },
    //서버로 전달할 데이터(key:value 형태의 객체 or String)
    success: function(data){
      console.log(city_main);
      console.log(city_sub);
    },
    error: function(){
      alert("데이터 통신중 에러발생");
    }
  }).done(function (result) {
    console.log(result);

   $("#resultPosition").replaceWith(result);

  })
}
*/








