const tabs = document.querySelectorAll('.tab');
const sentPokes = document.querySelector('.sent-pokes');
const receivedPokes = document.querySelector('.received-pokes')
const connectionsPokes = document.querySelector('.connections-pokes')
const pokeContainers = document.querySelectorAll('.poke-container')

const initPokesIndexTabs = () => {
  tabs.forEach((tab) => {
    tab.addEventListener('click', (event) => {
      if (!(tab.classList.contains('active'))) {
        const activeTab = document.querySelector('.tab.active');
        activeTab.classList.toggle('active');
        event.target.classList.toggle('active');

        const activeContainer = document.querySelector(`[data-anchor=${activeTab.dataset.target}]`)
        const targetContainer = document.querySelector(`[data-anchor=${event.target.dataset.target}]`)
        activeContainer.classList.toggle('active');
        targetContainer.classList.toggle('active');
      }
    });
  });
}

export { initPokesIndexTabs };
