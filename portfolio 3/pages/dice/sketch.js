'use strict';

var die, die1, die2, die3, die4, die5, die6, die7, die8;
var count1 = 0;
var count2 = 0;
var count3 = 0;
var count4 = 0;
var count5 = 0;
var count6 = 0;
var roll = 1;
var startTime=0;
var dice = new Array();
var total = 0;
var runtotal = 0;
var avg = total;



function setup() {
    createCanvas(500, 500);
    //noLoop();
    //dice = new Die [9];
    //dice = new Array [9];

}

function draw() {


    if (millis() - startTime > 0) {
        startTime += 3000;
        background(215, 72, 72);
        fill(0, 0, 0, 40);
        rect(350, 55, 100, 200, 10, 10, 10, 10);
        total = 0;
        count1 = 0;
        count2 = 0;
        count3 = 0;
        count4 = 0;
        count5 = 0;
        count6 = 0;
        avg = 0;

        for (var i = 0; i < 3; i++) {
            for (var j = 0; j < 3; j++) {
                dice[i * 3 + j] = new Die(110 * i + 10, 110 * j + 10);
            }
        }
        for (var i=0;i<9; i++) {
            dice[i].show();
        }
        roll++;
        fill(255);
        textSize(45);
        text("Total:" + total, 30, 400);
        textSize(25);
        text("Roll:" + roll, 35, 430);
        text("Average Roll:" + avg, 35, 455);
        textSize(20);
        text("Ones:" + count1, 360, 84);
        text("Twos:" + count2, 360, 114);
        text("Threes:" + count3, 360, 144);
        text("Fours:" + count4, 360, 174);
        text("Fives:" + count5, 360, 204);
        text("Sixes:" + count6, 360, 234);
        textSize(25);
        text("Running Total:" + runtotal, 255, 480);



    }
}

function mousePressed() {
    redraw();
    roll++;

}
class Die //models one single dice cube
{

    constructor( x, y)
    {
        this.x = x;
        this.y = y;
        this.rand = Math.floor((Math.random() * 6)) + 1;
//        console.log(this.rand);
        total += this.rand;

    }
    roll() {}
    show() {
        runtotal += this.rand;
        avg = runtotal / roll;

        fill(random(0, 255) % 250, random(0, 255) % 250, random(0, 255) % 250);

        rect(this.x, this.y, 75, 75, 10, 10, 10, 10);

        if (this.rand == 1) {
            
            count1++;
            fill(0);
            ellipse(this.x + 37, this.y + 37, 10, 10);
        }
        if (this.rand == 2) {
            count2++;
            fill(0);
            ellipse(this.x + 54, this.y + 54, 10, 10);
            ellipse(this.x + 20, this.y + 20, 10, 10);
        }
        if (this.rand == 3) {
            count3++;
            fill(0);
            ellipse(this.x + 37, this.y + 37, 10, 10);
            ellipse(this.x + 20, this.y + 20, 10, 10);
            ellipse(this.x + 54, this.y + 54, 10, 10);
        }
        if (this.rand == 4) {
            count4++;
            fill(0);
            ellipse(this.x + 20, this.y + 20, 10, 10);
            ellipse(this.x + 20, this.y + 54, 10, 10);
            ellipse(this.x + 54, this.y + 20, 10, 10);
            ellipse(this.x + 54, this.y + 54, 10, 10);
        }
        if (this.rand == 5) {
            count5++;
            fill(0);
            ellipse(this.x + 20, this.y + 20, 10, 10);
            ellipse(this.x + 20, this.y + 54, 10, 10);
            ellipse(this.x + 54, this.y + 20, 10, 10);
            ellipse(this.x + 54, this.y + 54, 10, 10);
            ellipse(this.x + 37, this.y + 37, 10, 10);
        }
        if (this.rand == 6) {
            count6++;
            fill(0);
            ellipse(this.x + 20, this.y + 20, 10, 10);
            ellipse(this.x + 20, this.y + 54, 10, 10);
            ellipse(this.x + 54, this.y + 20, 10, 10);
            ellipse(this.x + 54, this.y + 54, 10, 10);
            ellipse(this.x + 54, this.y + 37, 10, 10);
            ellipse(this.x + 20, this.y + 37, 10, 10);
        }
    }
}
