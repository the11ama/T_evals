let a = 5;
let b = 6;
let c = 7;
let d = new Array (1, 2, 3, 4, 5, 6, 7);

function whatIsIt(x) {
    return typeof(x);
}

whatisit(a);


function addThemUp() {
    let y = 0;
    for (let i = 0; i < arguments.length; i++) {
        y += arguments[i];
    }
    return y;
}

addThemUp(a, b, c);


function addUpArray(x) {
    let y = 0;
    for (let i = 0; i < x.length; i++) {
        y += x[i];
    }
    return y;
}

addUpArray(d);