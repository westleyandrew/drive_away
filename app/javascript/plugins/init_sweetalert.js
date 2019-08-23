import swal from 'sweetalert';

const initSweetalert = (selector, options = {}, callback) => {
  const form = document.querySelector("#new_booking");

  if (form) { // protect other pages
    form.addEventListener('submit', () => {
      event.preventDefault();
      $('#exampleModal').modal('hide');
      swal(options).then(callback);
    });
  }
};

export { initSweetalert };
