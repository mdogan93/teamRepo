﻿function func() {
    date = new Date(2016,7,1,15,20,13,13);
    (document).getElementById("firstBox").innerHTML = date;
    console.log("hello");
}

function getReq() {
    var xmlhttp = new XMLHttpRequest();
    var url = "myTutorials.txt";
    xmlhttp.onreadystatechange = function () {
        if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
            var myArr = JSON.parse(xmlhttp.responseText);
            myFunction(myArr);
        }
    };
    xmlhttp.open("GET", url, true);
    xmlhttp.send();
}


function myFunction(arr) {
    var out = "";
    var i;
    for (i = 0; i < arr.length; i++) {
        out += '<a href="' + arr[i].url + '">' +
        arr[i].display + '</a><br>';
    }
    document.getElementById("id01").innerHTML = out;
}
