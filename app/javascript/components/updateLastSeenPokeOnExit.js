function updateLastSeenPokeOnExit() {
  const poke = document.getElementById("poke-show");
  if (poke) {
    const backBtn = document.querySelector(".back-btn");
    const id = poke.dataset.id;
    backBtn.addEventListener("click", (e) => {
      fetch(`/pokes/${id}/update_last_seen`, {
        method: "PATCH",
        headers: {
          'Content-Type': 'application/json',
          'X-CSRF-Token': Rails.csrfToken()
        }
      })
    })
  }
}

export { updateLastSeenPokeOnExit };
