(function() {
    'use strict';
   
    window.addEventListener('load', function() {
      $('#table_id').DataTable();
      // Fetch all the forms we want to apply custom Bootstrap validation styles to
      var forms = document.getElementsByClassName('needs-validation');
      // Loop over them and prevent submission
      var validation = Array.prototype.filter.call(forms, function(form) {
        form.addEventListener('submit', function(event) {
          if (form.checkValidity() === false) {
            event.preventDefault();
            event.stopPropagation();
          }
          form.classList.add('was-validated');
        }, false);
      });
    }, false);
  })();
  function notifyError(msg) {
    toastr.error(msg);
  }
  function notifySuccess(msg) {
    toastr.success(msg);
  }

  function notifyWarning(msg) {
    toastr.warning(msg);
  }

  function notifyInfo(msg) {
    toastr.info(msg);
  }

