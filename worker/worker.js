// worker.js
self.onmessage = function (event) {
    var data = event.data;
    // var ans = fibonacci(data);
	// data.a = 2
    this.postMessage(data);
};
function fibonacci(n) { 
    return n < 2 ? n : arguments.callee(n - 1) + arguments.callee(n - 2);
}
