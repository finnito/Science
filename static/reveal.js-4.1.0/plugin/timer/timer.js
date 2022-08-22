/**
 * Adds a timer (if required) to a slide.
 *
 * @author Finn LeSueur (https://finn.lesueur.nz)
 **/
window.Timer = window.Timer || {
    id: 'Timer',
    init: function(deck){
        var timerInterval;
        document.querySelectorAll(".timer").forEach(function(timer) {
            timer.innerHTML = `
            <p class="countdown">0m 0s</p>
            <div class="timerControls">
                <input type="text" placeholder="15m" pattern="pattern="[0-9]{2}m" value="${timer.getAttribute('data-time')}"/>
                <button class="start">Start</button>
                <button class="stop">Stop</button>
            </div>
            <style>
            .c2 ~ div.timer { width: auto; }
            .timer {
                border-radius: 0.25rem; padding: 0.25rem;
                border: 1px solid #ffda79;
                background-color: #f7f1e3;
                text-align: center;
            }
            .timerControls { display: flex; flex-direction: row; flex-wrap: nowrap; justify-content: center; }
            </style>
            `;

            timer.querySelector("button.start").addEventListener("click", function() {
                clearInterval(timerInterval);

                var start = Date.now();
                var end = start + (parseInt(timer.querySelector("input").value) * 60 * 1000);
                console.log(start, end, end-start);

                timerInterval = setInterval(function() {
                    // var res = timer.querySelector("input").value.split(":");
                    // var countDownDate = new Date();
                    // countDownDate.setMinutes(countDownDate.getMinutes() + parseInt(res[1]));
                    // countDownDate = countDownDate.getTime();

                    // Get today's date and time
                    var now = Date.now();
                    console.log("Remaining: ", Math.round((end-now)/1000));

                    // Find the distance between now and the count down date
                    var distance = Math.round((end - now)/1000);

                    // // Time calculations for days, hours, minutes and seconds
                    var hours = Math.floor((distance % (60 * 60 * 24)) / (60 * 60)) || 0;
                    var minutes = Math.floor((distance % (60 * 60)) / (60)) || 0;
                    var seconds = Math.floor(distance % 60) || 0;

                    // // Display the result in the element with id="demo"
                    timer.querySelector(".countdown").innerHTML = minutes + "m "
                    + seconds + "s ";

                    // // If the count down is finished, write some text 
                    if (distance < 0) {
                        timer.querySelector(".countdown").innerHTML = "Finished!";
                    }
                }, 100);
            });

            timer.querySelector("button.stop").addEventListener("click", function() {
                clearInterval(timerInterval);
            });
        })
    }
};