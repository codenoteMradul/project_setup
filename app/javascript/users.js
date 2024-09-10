// app/javascript/packs/application.js

document.addEventListener('DOMContentLoaded', () => {
  const button = document.getElementById('change-color-button');

  button.addEventListener('click', () => {
    // Generate a random color
    const randomColor = '#' + Math.floor(Math.random()*16777215).toString(16);
    document.body.style.backgroundColor = randomColor;
  });
});

