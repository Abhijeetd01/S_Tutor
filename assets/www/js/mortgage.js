 Appyscript.getLoanAmount=function(){
    var price = document.getElementById("price").value;
    var down_payment = document.getElementById("down_payment").value;
    if(price != null || price != ''){
        if(down_payment != null || down_payment != ''){
            if (parseInt(price) > parseInt(down_payment)){
                var loan_amt= price - down_payment;
                loan_amt=round_number(loan_amt,2);
                $$("#loan_amt").html(loan_amt);
            }
            else{
                document.getElementById("down_payment").value="";
            }
        }else {
        	 Appyscript.alert('Please enter the Down Payment Amount!');
        }
    }else {
    	 Appyscript.alert('Please enter the Price Amount!'); 
    }
}

function round_number(value,decimal_len)
{
    return Math.round(value * Math.pow(10,decimal_len))/Math.pow(10,decimal_len);
}

 Appyscript.getMonthlyPayment=function(){
    var price = document.getElementById("price").value;
    var down_payment = document.getElementById("down_payment").value;
    var insurance = document.getElementById("insurance").value;
    var interestValue = document.getElementById("interest_rate");
    var interest_rate = interestValue.options[interestValue.selectedIndex].text;
    interest_rate = interest_rate.substring(0,interest_rate.length - 1);
    var propTexes = document.getElementById("proptexes").value;
    var loantermValue = document.getElementById("loan_term");
    var loan_term = loantermValue.options[loantermValue.selectedIndex].text;
    loan_term = loan_term.substring(0,loan_term.length - 3);
    if(price == null || price == ''){
    	Appyscript.alert('Please Enter the Price Amount');
        document.getElementById("price").focus();
        return false;
    } if(down_payment == null || down_payment == ''){
    	Appyscript.alert('Please Enter the Down Payment Amount');
        document.getElementById("down_payment").focus();
        return false;
    }
	
    var PR = price - down_payment;
    var IN = (interest_rate * 0.01) / 12;
    var PE = loan_term * 12;
    if(insurance.length > 0) {
        var payment = ((PR * IN) / (1 - Math.pow(1 + IN, -PE))) + (insurance/12) + ((propTexes)/12);
    }else {
        var payment = ((PR * IN) / (1 - Math.pow(1 + IN, -PE))) + ((propTexes)/12);
    }
    payment = round_number(payment,2);
    $$("#monthly_payment").html(payment);
}