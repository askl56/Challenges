function primesSum() {
	var sum = 0;
	var lastPrime = 2;	

	while (lastPrime <= 2000000) {
		sum += lastPrime;
		lastPrime = getNextPrime(lastPrime);		
	}
	return sum;
};

function getNextPrime(last) {
	while (true) {
		last++;
		if (isPrime(last)) {
			return last;
		}
	}
};

function isEven(num) {
	return num % 2 == 0;
};

function isPrime(num) {
	if (isEven(num)) {
		return false;
	}
	var max = Math.sqrt(num);
	for(var i = 3; i <= max; i+=2) {
		if (num % i == 0) {	
			return false;
		}			
	}	
	return true;
};
primesSum();