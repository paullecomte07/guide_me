//= require chartkick
//= require Chart.bundle
//= require rails-ujs
//= require_tree .

function main() {
  var nav = document.getElementById('nav-container');
  var menuBtn = document.getElementById('controller');
      menuBtn.addEventListener('click',function() {
        nav.className = (!nav.classList.contains('active')) ? 'active' : '';
      });
}
addEventListener('load',main);
