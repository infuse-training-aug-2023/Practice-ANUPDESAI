const timeElement = document.getElementById('time');
const modeToggle = document.getElementById('modeToggle');
const watch = document.getElementById('watch');
let isDarkMode = false;

function updateTime() {
  const clock_time = new Date();
  const hours = String(clock_time.getHours()).padStart(2, '0');
  const minutes = String(clock_time.getMinutes()).padStart(2, '0');
  const seconds = String(clock_time.getSeconds()).padStart(2, '0');
  const period = hours >= 12 ? 'PM' : 'AM';

  const formattedHours = hours % 12 === 0 ? 12 : hours % 12;
  timeElement.textContent = `${formattedHours}:${minutes}:${seconds} ${period}`;
}

function toggleMode() {
  isDarkMode = !isDarkMode;
  document.body.style.backgroundColor = isDarkMode ? '#0E2954' : '#f0f0f0';
  document.body.style.color = isDarkMode ? '#0E2954' : '#333';
  watch.style.backgroundColor = isDarkMode ? '#1F6E8C' : '#f0f0f0';
  modeToggle.style.color = isDarkMode? "#fff":"#2E8A99";
}

watch.addEventListener('click', toggleMode);
setInterval(updateTime, 1000);