/**
 * Adds a whakatauki to each slide.
 *
 * @author Finn LeSueur (https://finn.lesueur.nz)
 **/
window.Whakatauki = window.Whakatauki || {
    id: 'Whakatakui',
    init: function(deck){
        var whakatauki = [
            [
                "He pai ake te iti i te kore",
                "A little is better than none",
            ],[
                "Whaowhia te kete mātauranga",
                "Fill the basket of knowledge",
            ],[
                "I orea te tuatara ka puta ki waho",
                "A problem is solved by continuing to find solutions",
            ],[
                "He manawa tītī",
                "A person of great endurance",
            ],[
                "Whāia te mātauranga hei oranga mō koutou",
                "Seek after learning for the sake of your wellbeing",
            ],[
                "He kai kei aku ringa",
                "There is food at the end of my hands",
            ],[
                "E kore te patiki e hoki ki tona puehu",
                "The flounder does not return to his dust",
            ],[
                "Kua takoto te manuka",
                "The leaves of the manuka tree have been laid down",
            ],[
                "Mauri mahi, mauri ora; mauri noho, mauri mate",
                "Industry begets prosperity, idleness begets poverty",
            ],[
                "Mā whero, mā pango ka oti ai te mahi",
                "With red and black the work will be complete",
            ],[
                "Whatungarongaro te tangata, toitū te whenua",
                "As people disappear form sight, the land remains",
            ],[
                "He iti te mokoroa, nāna i kati te kahikatea",
                "The mokoroa may be small, but it cuts through the Kahikatea",
            ],[
                "He waka eke noa",
                "A canoe which we are all in with no exception",
            ],[
                "He toa taumata rau",
                "Bravery has many resting places",
            ],[
                "Whakapuputia mai o manuka, kia kore ai e whati",
                "Cluster the branches of the manuka so they will not break",
            ],[
                "He manako te kōura e kore ai",
                "The wish for fish will bring none",
            ],[
                "Kore te hoe, kore te taataa",
                "Alas! Without paddles and a baler!",
            ],[
                "He tina ki runga, he tāmore ki raro",
                "In order to flourish above, one must be rooted below",
            ],[
                "Kotahi te kākano, he nui ngā hua o te rākau",
                "A tree comes from one seed but bears many fruit",
            ],[
                "Whāia e koe te iti kahurangi ki te tūohu koe, me he maunga teitei",
                "Pursue excellence - should you stumble, let it be to a lofty mountain",
            ],[
                "Tū whitia, te hopo",
                "Feel the fear, do it anyway!",
            ],[
                "He iti hau marangai e tū te pāhokahoka",
                "Just like a rainbow after the storm, success follows failure",
            ],[
                "Mā te huruhuru ka rere te manu",
                "Adorn the bird with feathers so it may soar",
            ],[
                "I hea koe i te ao te kōwhai?",
                "Where were you at the time of the kōwhai?",
            ]
        ];

        var today = new Date();
        var weekNumber = today.getWeek();
        console.log(weekNumber);
        // currentdate = new Date();
        // var oneJan = new Date(currentdate.getFullYear(),0,1);
        // var numberOfDays = Math.floor((currentdate - oneJan) / (24 * 60 * 60 * 1000));
        // var weekNumber = Math.ceil(numberOfDays / 7);
        // console.log(numberOfDays, weekNumber);

        var i;
        switch (weekNumber) {
            // Term 1
            case 6: i = 0; break;
            case 7: i = 1; break;
            case 8: i = 2; break;
            case 9: i = 3; break;
            case 10: i = 4; break;
            case 11: i = 5; break;
            case 12: i = 6; break;
            case 13: i = 7; break;
            case 14: i = 8; break;
            case 15: i = 9; break;
            case 16: i = 10; break;

            // Term 2
            case 19: i = 11; break;
            case 20: i = 12; break;
            case 21: i = 13; break;
            case 22: i = 14; break;
            case 23: i = 15; break;
            case 24: i = 16; break;
            case 25: i = 17; break;
            case 26: i = 18; break;
            case 27: i = 19; break;
            case 28: i = 20; break;

            // Term 3
            case 31: i = 21; break;
            case 32: i = 22; break;
            case 33: i = 23; break;
            case 34: i = 24; break;
            case 35: i = 25; break;
            case 36: i = 26; break;
            case 37: i = 27; break;
            case 38: i = 28; break;
            case 39: i = 29; break;

            // Term 4
            case 43: i = 30; break;
            case 44: i = 31; break;
            case 45: i = 32; break;
            case 46: i = 33; break;
            case 47: i = 34; break;
            case 48: i = 35; break;
            case 49: i = 36; break;
            case 50: i = 37; break;

            default: i = 0; break;
        }
        // var date = new Date();
        // var i = date.getDate();
        // var i = Math.floor(Math.random() * whakatauki.length);
        var reveal = document.querySelector(".reveal");
        reveal.innerHTML = "<p class='whakatauki'>" + whakatauki[i][0] + "<br/><em>" + whakatauki[i][1] + "</em></p>" + reveal.innerHTML;
    }
};

Date.prototype.getWeek = function() {
  var date = new Date(this.getTime());
  date.setHours(0, 0, 0, 0);
  // Thursday in current week decides the year.
  date.setDate(date.getDate() + 3 - (date.getDay() + 6) % 7);
  // January 4 is always in week 1.
  var week1 = new Date(date.getFullYear(), 0, 4);
  // Adjust to Thursday in week 1 and count number of weeks from date to week1.
  return 1 + Math.round(((date.getTime() - week1.getTime()) / 86400000
                        - 3 + (week1.getDay() + 6) % 7) / 7);
}
