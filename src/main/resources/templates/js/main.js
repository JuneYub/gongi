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
    },
    //서버로 전달할 데이터(key:value 형태의 객체 or String)
    success: function(){
    },
    error: function(){
      alert("데이터 통신중 에러발생");
    }
  }).done(function (result) {
    $("#mainTable").replaceWith(result);

    document.getElementsByName('placeSubcity').forEach(function (ele, idx){
      ele.innerText = subCity;
      console.log(subCity);
    })

  })
}









