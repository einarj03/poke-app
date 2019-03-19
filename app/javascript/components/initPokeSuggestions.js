
const initPokeSuggestions = () => {
  const pokeSuggestions = document.querySelectorAll('.poke-suggestions-content-container')
  const pokeContent = document.querySelector('.message-content')
  pokeSuggestions.forEach((poke_suggestion) => {
    poke_suggestion.addEventListener('click', (event) => {
      pokeContent.value = event.target.innerText
    });
  });
}


export { initPokeSuggestions };
