const initPokeSuggestions = () => {
  const pokeSuggestions = document.querySelectorAll('.poke-suggestions-content-container')
  const pokeContent = document.getElementById('poke_content')
  pokeSuggestions.forEach((poke_suggestion) => {
    poke_suggestion.addEventListener('click', (event) => {
      pokeContent.value = event.target.innerText
      const textArea = document.getElementById('poke_content');
      var rows;
      textArea.rows = 1;
      rows = Math.ceil((document.scrollHeight - document.baseScrollHeight) / 21) + 1;
      textArea.rows = rows;
    });
  });
}

export { initPokeSuggestions };
