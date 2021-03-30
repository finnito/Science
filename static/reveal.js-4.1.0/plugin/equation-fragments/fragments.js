/**
 * Adds the fragment class to equations.
 *
 * @author Finn LeSueur (https://finn.lesueur.nz)
 **/
window.EquationFragments = window.EquationFragments || {
    id: 'EquationFragments',
    init: function(deck){
        document.querySelectorAll("span.math.display,blockquote,p.instruction,section > p").forEach((element) => {
            element.classList.add("fragment");
        });
    }
};
