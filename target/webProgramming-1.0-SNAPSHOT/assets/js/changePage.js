document.addEventListener('DOMContentLoaded', function() {
  var radioInputs = document.querySelectorAll('.change-page');

  radioInputs.forEach(function(input) {
    input.addEventListener('click', function() {
      var selectedValue = input.value;

      if (selectedValue === 'option1') {
        window.location.href = '../../child/chap06_ex1';
      } else if (selectedValue === 'option2') {
        window.location.href = '../../child/chap06_ex2';
      } else if (selectedValue === 'option3') {
        window.location.href = '../../child/chap07_ex2';
      }
    });
  });
});