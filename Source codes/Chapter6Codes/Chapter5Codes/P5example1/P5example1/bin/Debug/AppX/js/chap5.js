var angle1 = 0;
var angle2 = 0;
var scalar = 70;

function setup() {
    createCanvas(1920, 1080);
    noStroke();
    rectMode(CENTER);
}

function draw() {
    background(0);

    var ang1 = radians(angle1);
    var ang2 = radians(angle2);


    var x1 = mouseX + width / 2 + (scalar * cos(ang1));
    var x2 = pmouseX + width / 2 + (scalar * cos(ang2));

    var y1 = mouseY + height / 2 + (scalar * sin(ang1));
    var y2 = pmouseY + height / 2 + (scalar * sin(ang2));

    fill(255);
    rect(width * 0.5, height * 0.5, 140, 140);

    fill(0, 502, 553);
    ellipse(x1, height * 0.5 - 120, scalar, scalar);
    ellipse(x2, height * 0.5 + 120, scalar, scalar);

    fill(655, 604, 0);
    ellipse(width * 0.5 - 120, y1, scalar, scalar);
    ellipse(width * 0.5 + 120, y2, scalar, scalar);

    angle1 += 2;
    angle2 += 3;
}