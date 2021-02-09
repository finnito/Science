/**
 * Adds the fragment class to equations.
 *
 * @author Finn LeSueur (https://finn.lesueur.nz)
 **/
window.EquationFragments = window.EquationFragments || {
    id: 'EquationFragments',
    init: function(deck){
        document.querySelectorAll("span.math.display,figure,blockquote,p.instruction,section > p").forEach((element) => {
            element.classList.add("fragment");
        });
    }
};
// var EquationFragments = ( function( _Reveal ){
//     var Reveal = _Reveal;

//     Plugin.id = 'EquationFragments';
//     Plugin.init = function( _Reveal ){
//         document.querySelectorAll("span.math.display").forEach((element) => {
//             element.parentNode.classList.add("fragment");
//         });
//     }
//     return Plugin;
// })( Reveal )

// var AddFragments = window.AddFragments || (function(){

//     return {
//         init: function() {
//             document.querySelectorAll("span.math.display").forEach((element) => {
//                 console.log(element);
//                 element.parentNode.classList.add("fragment");
//             });
//         }
//     }
// })();

// Reveal.registerPlugin( 'fragments', AddFragments );
