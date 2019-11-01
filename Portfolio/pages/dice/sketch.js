'use strict';

var die;
//Die die, die1, die2, die3, die4, die5, die6, die7, die8;
var dice = new Array();
var total = 0;
var runningTotal = 0;

function setup() {
    createCanvas(700, 700);
    background(255, 122, 157, 100);

    noLoop();
    dice = new Die();
    for (var i = 0; i < 4; i++) {
        for (var j = 0; j < 4; j++) {
            dice[i * 4 + j] = new Die(50 + 120 * j, 50 + 120 * i);
        }
    }
}

function draw() {
    background(255, 122, 157, 100);
    for (var x = 0; x < 16; x++) {
        dice[x].show();
    }
    //text
    fill(150);
    textSize(25);
    text("Total: " + total, 50, 600);
    fill(150);
    text("Running Total: " + runningTotal, 50, 650);
}

function mousePressed() {
    total = 0;
    redraw();
    for (var i = 0; i < 4; i++) {
        for (var j = 0; j < 4; j++) {
            dice[i * 4 + j] = new Die(50 + 120 * j, 50 + 120 * i);
        }
    }

}

class Die //models one single dice cube
{

    constructor(x, y) //constructor
    {
        this.x = x;
        this.y = y;
        this.rand = Math.floor((Math.random() * 6) + 1);
        total += this.rand;
        runningTotal += this.rand;
    }

    show() {


        //dice
        fill(255, 255, 255);
        rect(this.x, this.y, 100, 100, 17);

        console.log(this.rand);
        if (this.rand == 1) {
            fill(0, 0, 0);
            ellipse(this.x + 50, this.y + 50, 15, 15);
        }
        if (this.rand == 2) {
            fill(0, 0, 0);
            ellipse(this.x + 25, this.y + 25, 15, 15);
            ellipse(this.x + 75, this.y + 75, 15, 15);
        }
        if (this.rand == 3) {
            fill(0, 0, 0);
            ellipse(this.x + 25, this.y + 25, 15, 15);
            ellipse(this.x + 50, this.y + 50, 15, 15);
            ellipse(this.x + 75, this.y + 75, 15, 15);
        }
        if (this.rand == 4) {
            fill(0, 0, 0);
            ellipse(this.x + 25, this.y + 25, 15, 15);
            ellipse(this.x + 75, this.y + 25, 15, 15);
            ellipse(this.x + 25, this.y + 75, 15, 15);
            ellipse(this.x + 75, this.y + 75, 15, 15);
        }
        if (this.rand == 5) {
            fill(0, 0, 0);
            ellipse(this.x + 25, this.y + 25, 15, 15);
            ellipse(this.x + 75, this.y + 25, 15, 15);
            ellipse(this.x + 25, this.y + 75, 15, 15);
            ellipse(this.x + 75, this.y + 75, 15, 15);
            ellipse(this.x + 50, this.y + 50, 15, 15);
        }
        if (this.rand == 6) {
            fill(0, 0, 0);
            ellipse(this.x + 25, this.y + 25, 15, 15);
            ellipse(this.x + 75, this.y + 25, 15, 15);
            ellipse(this.x + 25, this.y + 75, 15, 15);
            ellipse(this.x + 75, this.y + 75, 15, 15);
            ellipse(this.x + 25, this.y + 50, 15, 15);
            ellipse(this.x + 75, this.y + 50, 15, 15);
        }
    }
}
