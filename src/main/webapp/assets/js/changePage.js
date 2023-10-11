document.addEventListener('DOMContentLoaded', function() {
  var radioInputs = document.querySelectorAll('.change-page');

  radioInputs.forEach(function(input) {
    input.addEventListener('click', function() {
      var selectedValue = input.value;

      if (selectedValue === 'option1') {
        window.location.href = 'emailServlet.html';
      } else if (selectedValue === 'option2') {
        window.location.href = 'surveyServlet.html';
      } else if (selectedValue === 'option3') {
        window.location.href = 'sessionCookie.html';
      } else if (selectedValue === 'option4') {
        window.location.href = 'cartServlet.html';
      }
    });
  });
});