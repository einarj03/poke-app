import "bootstrap";

import { initAutoResizeTextArea } from '../components/initAutoResizeTextArea';
import { initPokeSuggestions } from '../components/initPokeSuggestions';
import { initPokesIndexTabs } from '../components/initPokesIndexTabs';
import { initNavbarScroll } from '../components/initNavbarScroll';
import { updateLastSeenPokeOnExit } from '../components/updateLastSeenPokeOnExit';

initNavbarScroll();
initPokeSuggestions();
initAutoResizeTextArea();
initPokesIndexTabs();
updateLastSeenPokeOnExit();
