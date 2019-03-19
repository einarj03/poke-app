const tabs = document.querySelectorAll('.tab');
const pokeContainers = document.querySelectorAll('.poke-container')

const initPokesIndexTabs = () => {
  tabs.forEach((tab) => {
    tab.addEventListener('click', (event) => {
      if (!(tab.classList.contains('active'))) {
        tabs.forEach((tab) => {
          tab.classList.toggle('active');
        });
        pokeContainers.forEach((pokeContainer) => {
          pokeContainer.classList.toggle('active');
        });
      }
    });
  });
}

export { initPokesIndexTabs };
