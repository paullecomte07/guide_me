const toggleSidebar = () => {
  button = document.getElementById('sidebarCollapse');
  button.addEventListener('click', event => {
    sidebar = document.getElementById('sidebar');
    sidebar.classList.toggle('active');
  });
}

toggleSidebar();
