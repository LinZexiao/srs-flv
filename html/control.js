// 控制 脚本

// let opt = []

console.log("control.js")


document.onkeydown = Keydown

function Keydown(e) {
    //console.log(e)
    if (e.key === "ArrowUp") {
        // console.log("up")
        send('u')
    } else if (e.key === "ArrowDown") {
        // console.log("d")
        send('d')

    } else if (e.key === "ArrowRight") {
        // console.log("r")
        send('r')

    } else if (e.key === "ArrowLeft") {
        // console.log("l")
        send('l')

    }
}

// window.setInterval(sendAction, 100)

function send(opt) {
    console.log(opt);
}