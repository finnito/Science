/**
 * Adds a simple back button to take the user up two levels.
 *
 * @author Fin LeSueur (https://finn.lesueur.nz)
 **/
var GoBack = window.GoBack || (function(){
	return {
		init: function() {
			var button = "<a class='back-button' title='Exit Slides' href='../'>Exit</a>";
			var reveal = document.querySelector(".reveal");
			reveal.innerHTML = button + reveal.innerHTML;
		}
	}
})();

Reveal.registerPlugin( 'back', GoBack );
