function specialPythTriplet() {
	var b = 0;
	while (true) {
		b++;
		for (var j = 1; j < b; j++) {
			var a = j;
			var c = a*a + b*b;	
			c = Math.sqrt(c);
			if (a+b+c == 1000) {
				return a*b*c;
			}
		}
	}
};