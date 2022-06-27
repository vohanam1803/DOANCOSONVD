const C4 = new Audio("/Content/music/a49.mp3");
const D4 = new Audio("/Content/music/a50.mp3");
const E4 = new Audio("/Content/music/a51.mp3");
const F4 = new Audio("/Content/music/a52.mp3");
const G4 = new Audio("/Content/music/a53.mp3");
const A4 = new Audio("/Content/music/a54.mp3");
const B4 = new Audio("/Content/music/a55.mp3");

const C5 = new Audio("/Content/music/a56.mp3");
const D5 = new Audio("/Content/music/a57.mp3");
const E5 = new Audio("/Content/music/a48.mp3");
const F5 = new Audio("/Content/music/a81.mp3");
const G5 = new Audio("/Content/music/a87.mp3");
const A5 = new Audio("/Content/music/a69.mp3");
const B5 = new Audio("/Content/music/a82.mp3");

const C6 = new Audio("/Content/music/a84.mp3");
const D6 = new Audio("/Content/music/a89.mp3");
const E6 = new Audio("/Content/music/a85.mp3");
const F6 = new Audio("/Content/music/a73.mp3");
const G6 = new Audio("/Content/music/a79.mp3");
const A6 = new Audio("/Content/music/a80.mp3");
const B6 = new Audio("/Content/music/a65.mp3");

const C7 = new Audio("/Content/music/a83.mp3");
const D7 = new Audio("/Content/music/a68.mp3");
const E7 = new Audio("/Content/music/a70.mp3");
const F7 = new Audio("/Content/music/a71.mp3");
const G7 = new Audio("/Content/music/a72.mp3");
const A7 = new Audio("/Content/music/a74.mp3");
const B7 = new Audio("/Content/music/a75.mp3");

const C8 = new Audio("/Content/music/a76.mp3");
const D8 = new Audio("/Content/music/a90.mp3");
const E8 = new Audio("/Content/music/a88.mp3");
const F8 = new Audio("/Content/music/a67.mp3");
const G8 = new Audio("/Content/music/a86.mp3");
const A8 = new Audio("/Content/music/a66.mp3");
const B8 = new Audio("/Content/music/a78.mp3");

const C9 = new Audio("/Content/music/a77.mp3");

//Node Giáng Thăng
const Db4 = new Audio("/Content/music/b49.mp3");
const Eb4 = new Audio("/Content/music/b50.mp3");
const Gb4 = new Audio("/Content/music/b52.mp3");
const Ab4 = new Audio("/Content/music/b53.mp3");
const Bb4 = new Audio("/Content/music/b54.mp3");

const playSound = audio => {
    const clone = audio.cloneNode();
    clone.play();
    setTimeout(() => (clone.volume = 0.8), 400);
    setTimeout(() => (clone.volume = 0.6), 800);
    setTimeout(() => (clone.volume = 0.4), 1200);
    setTimeout(() => (clone.volume = 0.2), 1600);
    setTimeout(() => (clone.volume = 0), 2000);
};
//Tone 4
//C4
var C4Key = document.getElementById("C4");
console.log(C4Key)
const playC4 = () => {
    playSound(C4)
};
C4Key.addEventListener("click", playC4);
//D4
const D4Key = document.getElementById("D4");
const playD4 = () => {
    playSound(D4)
};
D4Key.addEventListener("click", playD4);
//E4
const E4Key = document.getElementById("E4");
const playE4 = () => {
    playSound(E4)
};
E4Key.addEventListener("click", playE4);
//F4
const F4Key = document.getElementById("F4");
const playF4 = () => {
    playSound(F4)
};
F4Key.addEventListener("click", playF4);
//G4
const G4Key = document.getElementById("G4");
const playG4 = () => {
    playSound(G4)
};
G4Key.addEventListener("click", playG4);
//A4
const A4Key = document.getElementById("A4");
const playA4 = () => {
    playSound(A4)
};
A4Key.addEventListener("click", playA4);
//B4
const B4Key = document.getElementById("B4");
const playB4 = () => {
    playSound(B4)
};
B4Key.addEventListener("click", playB4);

//Tone 5
/////////////////////
//C5
var C5Key = document.getElementById("C5");
console.log(C5Key)
const playC5 = () => {
    playSound(C5)
};
C5Key.addEventListener("click", playC5);
//D5
const D5Key = document.getElementById("D5");
const playD5 = () => {
    playSound(D5)
};
D5Key.addEventListener("click", playD5);
//E5
const E5Key = document.getElementById("E5");
const playE5 = () => {
    playSound(E5)
};
E5Key.addEventListener("click", playE5);
//F5
const F5Key = document.getElementById("F5");
const playF5 = () => {
    playSound(F5)
};
F5Key.addEventListener("click", playF5);
//G5
const G5Key = document.getElementById("G5");
const playG5 = () => {
    playSound(G5)
};
G5Key.addEventListener("click", playG5);
//A5
const A5Key = document.getElementById("A5");
const playA5 = () => {
    playSound(A5)
};
A5Key.addEventListener("click", playA5);
//B5
const B5Key = document.getElementById("B5");
const playB5 = () => {
    playSound(B5)
};
B5Key.addEventListener("click", playB5);


//Tone 6
/////////////////////
//C6
var C6Key = document.getElementById("C6");
console.log(C6Key)
const playC6 = () => {
    playSound(C6)
};
C6Key.addEventListener("click", playC6);
//D6
const D6Key = document.getElementById("D6");
const playD6 = () => {
    playSound(D6)
};
D6Key.addEventListener("click", playD6);
//E6
const E6Key = document.getElementById("E6");
const playE6 = () => {
    playSound(E6)
};
E6Key.addEventListener("click", playE6);
//F6
const F6Key = document.getElementById("F6");
const playF6 = () => {
    playSound(F6)
};
F6Key.addEventListener("click", playF6);
//G6
const G6Key = document.getElementById("G6");
const playG6 = () => {
    playSound(G6)
};
G6Key.addEventListener("click", playG6);
//A6
const A6Key = document.getElementById("A6");
const playA6 = () => {
    playSound(A6)
};
A6Key.addEventListener("click", playA6);
//B6
const B6Key = document.getElementById("B6");
const playB6 = () => {
    playSound(B6)
};
B6Key.addEventListener("click", playB6);

//Tone 7
/////////////////////
//C7
var C7Key = document.getElementById("C7");
console.log(C7Key)
const playC7 = () => {
    playSound(C7)
};
C7Key.addEventListener("click", playC7);
//D7
const D7Key = document.getElementById("D7");
const playD7 = () => {
    playSound(D7)
};
D7Key.addEventListener("click", playD7);
//E7
const E7Key = document.getElementById("E7");
const playE7 = () => {
    playSound(E7)
};
E7Key.addEventListener("click", playE7);
//F7
const F7Key = document.getElementById("F7");
const playF7 = () => {
    playSound(F7)
};
F7Key.addEventListener("click", playF7);
//G7
const G7Key = document.getElementById("G7");
const playG7 = () => {
    playSound(G7)
};
G7Key.addEventListener("click", playG7);
//A7
const A7Key = document.getElementById("A7");
const playA7 = () => {
    playSound(A7)
};
A7Key.addEventListener("click", playA7);
//B7
const B7Key = document.getElementById("B7");
const playB7 = () => {
    playSound(B7)
};
B7Key.addEventListener("click", playB7);


//Tone 8
/////////////////////
//C8
var C8Key = document.getElementById("C8");
console.log(C8Key)
const playC8 = () => {
    playSound(C8)
};
C8Key.addEventListener("click", playC8);
//D8
const D8Key = document.getElementById("D8");
const playD8 = () => {
    playSound(D8)
};
D8Key.addEventListener("click", playD8);
//E8
const E8Key = document.getElementById("E8");
const playE8 = () => {
    playSound(E8)
};
E8Key.addEventListener("click", playE8);
//F8
const F8Key = document.getElementById("F8");
const playF8 = () => {
    playSound(F8)
};
F8Key.addEventListener("click", playF8);
//G8
const G8Key = document.getElementById("G8");
const playG8 = () => {
    playSound(G8)
};
G8Key.addEventListener("click", playG8);
//A8
const A8Key = document.getElementById("A8");
const playA8 = () => {
    playSound(A8)
};
A8Key.addEventListener("click", playA8);
//B8
const B8Key = document.getElementById("B8");
const playB8 = () => {
    playSound(B8)
};
B8Key.addEventListener("click", playB8);

//Tone 9
/////
//C9
const C9Key = document.getElementById("C9");
const playC9 = () => {
    playSound(C9)
};
C9Key.addEventListener("click", playC9);

window.addEventListener("keydown", ({ keyCode }) => {
    if (keyCode == 90) return playC4();
    if (keyCode == 88) return playD4();
    if (keyCode == 67) return playE4();
    if (keyCode == 86) return playF4();
    if (keyCode == 66) return playG4();
    if (keyCode == 78) return playA4();
    if (keyCode == 77) return playB4();

    if (keyCode == 32) return playC5();

    if (keyCode == 65) return playC5();
    if (keyCode == 83) return playD5();
    if (keyCode == 68) return playE5();
    if (keyCode == 70) return playF5();
    if (keyCode == 71) return playG5();
    if (keyCode == 72) return playA5();
    if (keyCode == 74) return playB5();

    if (keyCode == 75) return playC6();

    if (keyCode == 81) return playC6();
    if (keyCode == 87) return playD6();
    if (keyCode == 69) return playE6();
    if (keyCode == 82) return playF6();
    if (keyCode == 84) return playG6();
    if (keyCode == 89) return playA6();
    if (keyCode == 85) return playB6();

    if (keyCode == 73) return playC7();

    if (keyCode == 49) return playC7();
    if (keyCode == 50) return playD7();
    if (keyCode == 51) return playE7();
    if (keyCode == 52) return playF7();
    if (keyCode == 53) return playG7();
    if (keyCode == 54) return playA7();
    if (keyCode == 55) return playB7();

    if (keyCode == 56) return playC8();

    if (keyCode == 112) return playC8();
    if (keyCode == 113) return playD8();
    if (keyCode == 114) return playE8();
    if (keyCode == 115) return playF8();
    if (keyCode == 116) return playG8();
    if (keyCode == 117) return playA8();
    if (keyCode == 118) return playB8();

    if (keyCode == 119) return playC9();

})