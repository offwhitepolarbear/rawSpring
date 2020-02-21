function dateFormatChanger(dbDate){
	
	var rawDate = new Date(dbDate);
	
	var returnDate = rawDate.getFullYear()+"-";
	returnDate += oneDigitDateChanger((rawDate.getMonth()+1)) +"-" ;
	returnDate += oneDigitDateChanger(rawDate.getDate()) + " ";
	returnDate += oneDigitDateChanger(rawDate.getHours()) + ":";
	returnDate += oneDigitDateChanger(rawDate.getMinutes()) + ":";
	returnDate += oneDigitDateChanger(rawDate.getSeconds());
	return returnDate;
}

function oneDigitDateChanger(rawDate){
	if(rawDate<10){
		return "0"+rawDate+"";
	}
	else{
		return rawDate;
	}
}