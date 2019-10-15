'use strict';

var startX = 600 / 2;
var startY = 125;
var endX = 600 / 2;
var endY = 0;
var rain;


var cloud;
var newcloud;
var tree2;

var size = 0;
var startTime=0;

var x;
var y;
var r;
var speed;
var myRain = new Array();


function setup() {
    createCanvas(600, 600)
    rain = new Rain();
    x = random(600);
    y = random(600);
    r = random(10);
    speed = random(2);
    for (var i = 0; i < 400; i++) {
        myRain[i] = new Rain();
    }
    tree2 = loadImage("data/tree2.png");
    tree2.resize(700, 250);
    cloud = loadImage("data/cloud2.png");
    newcloud = loadImage("data/newcloud.png");
    strokeWeight(5);
    background(5);


}


function draw() {
    background(0);

    for (var i = 0; i < myRain.length; i++) {
        myRain[i].display();
    }


    image(tree2, 0, 350);
    stroke(192, 192, 192);

    while (endY < 600) {
        endX = startX + (Math.random() * 19) - 9;
        endY = startY + ((Math.random() * 10));
        line(startX, startY, endX, endY);
        startX = endX;
        startY = endY;
    }
    //reset();
    image(cloud, 60, 0);
    image(newcloud, 0, 0);

    var time = millis() - startTime;
    console.log(time);
    if (time > 250) {
        startTime = millis();
        reset();
    }
}

function reset() {
    startX = 600 / 2;
    startY = 125;
    endX = 600 / 2;
    endY = 0;
}


function mousePressed() {
    startX = 600 / 2;
    startY = 125;
    endX = 600 / 2;
    endY = 0;

}


class Rain {
    constructor() {
        this.x = (Math.random() * 600) + 10;
        this.y = (Math.random() * 600) + 150;
        this.r = Math.random() * 2;
        this.speed = (Math.random() * 2) + 1;
    }

    display() {
        fill(255);
        ellipse(this.x, this.y, this.r, this.r);
        this.y += this.speed;
        //console.log(this.y);
        if (this.y > 600) {
            this.y = 150;
            this.x = (Math.random() * 600) + 10;
        }
    }
}
