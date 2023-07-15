//--------------------------- ERICK MAMANI LIMA ----------------------------//
"use strict";
document.addEventListener("DOMContentLoaded", function () {
    Chart.defaults.global.defaultFontColor = "#75787c";

    const PIECHARTHOME1 = document.getElementById("pieChartHome1");
    var myPieChart = new Chart(PIECHARTHOME1, {
        type: "doughnut",
        options: {
            cutoutPercentage: 90,
            legend: {
                display: false,
            },
        },
        data: {
            labels: ["First", "Second", "Third", "Fourth"],
            datasets: [
                {
                    data: [300, 50, 100, 60],
                    borderWidth: [0, 0, 0, 0],
                    backgroundColor: ["#6933b9", "#8553d1", "#a372ec", "#be9df1"],
                    hoverBackgroundColor: ["#6933b9", "#8553d1", "#a372ec", "#be9df1"],
                },
            ],
        },
    });

    // ------------------------------------------------------- //
    // Pie Chart 2
    // ------------------------------------------------------ //
    const PIECHARTHOME2 = document.getElementById("pieChartHome2");
    var myPieChart = new Chart(PIECHARTHOME2, {
        type: "doughnut",
        options: {
            cutoutPercentage: 90,
            legend: {
                display: false,
            },
        },
        data: {
            labels: ["First", "Second", "Third", "Fourth"],
            datasets: [
                {
                    data: [80, 70, 100, 60],
                    borderWidth: [0, 0, 0, 0],
                    backgroundColor: ["#9528b9", "#b046d4", "#c767e7", "#e394fe"],
                    hoverBackgroundColor: ["#9528b9", "#b046d4", "#c767e7", "#e394fe"],
                },
            ],
        },
    });

    // ------------------------------------------------------- //
    // Pie Chart 3
    // ------------------------------------------------------ //
    const PIECHARTHOME3 = document.getElementById("pieChartHome3");
    var myPieChart = new Chart(PIECHARTHOME3, {
        type: "doughnut",
        options: {
            cutoutPercentage: 90,
            legend: {
                display: false,
            },
        },
        data: {
            labels: ["First", "Second", "Third", "Fourth"],
            datasets: [
                {
                    data: [120, 90, 77, 95],
                    borderWidth: [0, 0, 0, 0],
                    backgroundColor: ["#da4d60", "#e96577", "#f28695", "#ffb6c1"],
                    hoverBackgroundColor: ["#da4d60", "#e96577", "#f28695", "#ffb6c1"],
                },
            ],
        },
    });
});
