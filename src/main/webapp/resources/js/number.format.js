var element = document.getElementById('numb').innerHTML;
var numOfChar = element.length;
var result = "";
if (numOfChar > 3) {
	for (var i = 0; i < numOfChar; i++) {
		result += element.charAt(i);
		if (i % 3 == 2) {
			result += '.';
		}
	}
	result = result.length % 3 == 0 ? result.substring(0, result.length - 2)
			: result;
} else {
	result = element;
}
