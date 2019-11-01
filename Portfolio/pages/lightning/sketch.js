'use strict';

var size = 0;
var startTime;
var startX = 150;
var startY = 0;
var endX = 150;
var endY = 0;
var pumpkinsmile;
var pumpkinangry;
var light = false;

function preload() {
     pumpkinangry = loadImage("data/pumpkinmad.png");
     pumpkinsmile = loadImage("data/pumpkinsmile.png");
}
function setup() {
    createCanvas(600, 600);
    strokeWeight(5);
    pumpkinangry.resize(150, 150);
    pumpkinsmile.resize(200, 200);
}

function draw() {
    background(0);
    fill(0, 0, 0, 25);
    rect(-10, -10, width + 20, height + 20);
       //pumpkinangry = loadImage("data/pumpkinmad.png");
    if (!light)
        image(pumpkinsmile, 200, 400);
    // image(pumpkinangry, 220, 450);
    textSize(40);
    fill('#FF6828');
    text("Spooky Season", 150, 175);
    if (frameCount % 90 == 0) {
        light = !light;

    }
    stroke(255, 255, 0);
    if (light) {
        textSize(40);
        fill(0);
        text("Spooky Season", 150, 175);
        while (endY < 465) {
            var f = map(startX, 0, width, 10, -10);
            endY = startY + (Math.random() * 10);
            endX = startX + (Math.random() * f);
            line(startX, startY, endX, endY);
            startX = endX;
            startY = endY;
           var time = millis() - startTime;
           image(pumpkinangry, 220, 450);
            
        }
    }

    reset();
}



function reset() {
    startX = (Math.random() * width);
    startY = 0;
    endX = 150;
    endY = 0;
}
