// https://www.w3schools.com/howto/howto_js_dropdown.asp
function dropDown(x) {
    var x = document.getElementById(x)
    if (x.style.display == "none") {
      x.style.display = "block";
    } else {
      x.style.display = "none";
    }
  }
