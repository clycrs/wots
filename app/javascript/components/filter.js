const initFilter = () => {
  const control1 = document.getElementById('cat-1');
  const content1 = document.getElementById('content-1');

  const control2 = document.getElementById('cat-2');
  const content2 = document.getElementById('content-2');

  const control3 = document.getElementById('cat-3');
  const content3 = document.getElementById('content-3');

  if(control1) {
    control1.addEventListener('click', function(event) {
      content1.classList.toggle("hidden");
    });

    control2.addEventListener('click', function(event) {
      content2.classList.toggle("hidden");
    });

    control3.addEventListener('click', function(event) {
      content3.classList.toggle("hidden");
    });
  }
}

export { initFilter }
