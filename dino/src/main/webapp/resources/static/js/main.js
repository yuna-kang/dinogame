var canvas = document.getElementById("canvas");
var ctx = canvas.getContext("2d");

// 캔버스가 포커스를 받을 수 있도록 tabindex 속성 추가
canvas.tabIndex = 1;
canvas.style.outline = "none"; // 포커스 시 테두리 없애기

canvas.width = window.innerWidth - 100;
canvas.height = window.innerHeight - 100;

var dinoImg = new Image();
dinoImg.src = '../img/dino.png'; // 공룡 이미지 경로

var cactusImg = new Image();
cactusImg.src = '../img/cactus.png'; // 선인장 이미지 경로

let dino = {
    x: 10,
    y: 230,
    width: 60,
    height: 80,
    draw() {
        ctx.drawImage(dinoImg, this.x, this.y, this.width, this.height);
    }
};

class Cactus {
    constructor() {
        this.x = 500;
        this.y = 230;
        this.width = 20;
        this.height = 40;
    }
    draw() {
        ctx.drawImage(cactusImg, this.x, this.y, this.width, this.height);
    }
}

var timer = 0;
var cactusArr = [];
var jumpTimer = 0;
var animation;
var jumping = false;
var score = 0;

function frame() {
    animation = requestAnimationFrame(frame);
    timer++;

    ctx.clearRect(0, 0, canvas.width, canvas.height);

    if (Math.random() < 0.01) {
        var cactus = new Cactus();
        cactusArr.push(cactus);
    }

    cactusArr.forEach((a, i, o) => {
        a.x -= 1; // 선인장 이동 속도

        if (a.x < 0) {
            o.splice(i, 1);
            score++; // 선인장이 지나갈 때 점수 증가
        }

        collision(dino, a);
        a.draw();
    });

    if (jumping) {
        dino.y -= 4; // 점프 상승 속도
        jumpTimer++;
    }

    if (jumpTimer > 20) {
        jumping = false;
        jumpTimer = 0;
    }

    if (!jumping && dino.y < 230) {
        dino.y += 1; // 점프 하강 속도
    }

    dino.draw();
    drawScore(); // 점수판 그리기
}
frame();

function collision(dino, cactus) {
    var xSubtraction = cactus.x - (dino.x + dino.width);
    var ySubtraction = cactus.y - (dino.y + dino.height);
    if (xSubtraction < 0 && ySubtraction < 0) {
        ctx.clearRect(0, 0, canvas.width, canvas.height);
        cancelAnimationFrame(animation);
        showGameOver();
    }
}

var jumpSwitch = false;
let lastSpacePressTime = 0;

document.addEventListener('keydown', function(e) {
    if (e.code === 'Space') {
        const currentTime = Date.now();
        const timeSinceLastPress = currentTime - lastSpacePressTime;

        if (timeSinceLastPress > 500) {
            jumping = true;
            lastSpacePressTime = currentTime;
        }
    }
});

function drawScore() {
    ctx.font = "20px Arial";
    ctx.fillStyle = "black";
    ctx.fillText("Score: " + score, 10, 20);
}

function showGameOver() {
    ctx.font = "40px Arial";
    ctx.fillStyle = "black";
    ctx.fillText("Game Over", canvas.width / 2 - 100, canvas.height / 2);
    createRestartButton();
}

function createRestartButton() {
    var button = document.createElement("button");
    button.innerHTML = "Restart Game";
    button.style.position = "absolute";
    button.style.top = canvas.height / 2 + "px";
    button.style.left = canvas.width / 2 - 40 + "px";
    button.addEventListener("click", restartGame);
    document.body.appendChild(button);
}

function restartGame() {
    document.querySelector("button").remove();
    cactusArr = [];
    score = 0;
    dino.y = 230;
    frame();
}

// 문서가 준비된 후 캔버스에 포커스 주기
window.onload = () => {
    canvas.focus();
};
