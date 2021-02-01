/**
 * Adds a simple back button to take the user up two levels.
 *
 * @author Fin LeSueur (https://finn.lesueur.nz)
 **/
window.GoBack = window.GoBack || {
	id: 'GoBack',
	init: function(deck){
		console.log("Adding back button");
		var button = "<a class='back-button' title='Exit Slides' href='../'>Exit</a>";
		var reveal = document.querySelector(".reveal");
		reveal.innerHTML = button + reveal.innerHTML;
	}
};
