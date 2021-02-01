/**
 * Adds the fragment class to equations.
 *
 * @author Finn LeSueur (https://finn.lesueur.nz)
 **/
var AddFragments = window.AddFragments || (function(){

    return {
        init: function() {
            document.querySelectorAll("span.math.display").forEach((element) => {
                console.log(element);
                element.parentNode.classList.add("fragment");
            });
        }
    }
})();

Reveal.registerPlugin( 'fragments', AddFragments );
