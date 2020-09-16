/**
 * Adds a clock to the slides.
 *
 * @author Finn LeSueur (https://finn.lesueur.nz)
 **/
var AddClock = window.AddClock || (function(){
    function updateClock () {
        var date = new Date();

        const days = [
            "Rātapu"
            "Rāhina",
            "Rātu",
            "Rāapa",
            "Rāpare",
            "Rāmere",
            "Rāhoroi",
        ];
        const months = [
            "Kohi-tātea",
            "Hui-tanguru",
            "Poutū-te-rangi",
            "Paenga-whāwhā",
            "Haratua",
            "Pipiri",
            "Hōngongoi",
            "Here-turi-kōkā",
            "Mahuru",
            "Whiringa-ā-nuku",
            "Whiringa-ā-rangi",
            "Hakihea"
        ];

        var dte = days[date.getDay()]
            + ", "
            + date.getDate()
            + " "
            + months[date.getMonth()];

        document.getElementById('clock').innerHTML = dte + "<br>" + date.toLocaleTimeString();
        setTimeout(updateClock, 100);
    }

    return {
        init: function() {
            var clock = "<span id='clock'></span>";
            var reveal = document.querySelector(".reveal");
            reveal.innerHTML = clock + reveal.innerHTML;
            reveal.innerHTML = "<div class='kowhaiwhai'></div>" + reveal.innerHTML;
            updateClock();
        }
    }
})();

Reveal.registerPlugin( 'clock', AddClock );
