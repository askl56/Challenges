(function() {
    var s;
    for (var i = 1; i <= 100; i++) {
        s = '';
        if (!(i % 3)) {
            s += 'Fizz';
        }
        if (!(i % 5)) {
            s += 'Buzz';
        }
        console.log(s || i);
    }
})();