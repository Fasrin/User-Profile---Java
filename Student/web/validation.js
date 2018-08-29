function validate()
{
	var firstname = document.forms["account"]["fname"].value;
	var address=document.forms["account"]["address"].value;
	var contactno=document.forms["account"]["contactno"].value;
	var uname=document.forms["account"]["uname"].value;
        var email=document.forms["account"]["email"].value;
        var password=document.forms["account"]["password"].value;
        var password1=document.forms["account"]["password1"].value;
        var special=document.forms["account"]["special"].value;
        var olyear=document.forms["account"]["olyear"].value;
        var indexnumber=document.forms["account"]["indexnumber"].value;  
	var result=document.forms["account"]["result"].value;
        var pname=document.forms["account"]["pname"].value;
        var pcontactno=document.forms["account"]["pcontactno"].value;
        var occupation=document.forms["account"]["occupation"].value;
        var wpaddress=document.forms["account"]["wpaddress"].value;
	
        if(isAlphebatic(firstname))
        {
            if(adrsValidation(address))
                {
                    if(isAlphanumeric(contactno))
                    {
                        if(isAlphebatic(uname))
                        {
                            if(emailValidation(email))
                            {
                                if(spclValidation(special))
                                {
                                    if(olYearValidation(olyear))
                                    {
                                        if(indexValidation(indexnumber))
                                        {
                                                if(rsltsValidation(result))
                                                {
                                                    if(pNameValidation(pname))
                                                    {
                                                        if(isAlphanumeric(pcontactno))
                                                        {
                                                            if(occValidation(occupation))
                                                            {
                                                                if(adrsValidation(wpaddress))
                                                                {
                                                                    
                                                                            if(password===password1)
                                                                            {
                                                                                if(passValidation(password,8))
                                                                                {
                                                                                    return true;
                                                                                }
                                                                                else
                                                                                {
                                                                                    return false;
                                                                                }
                                                                            }
                                                                            else
                                                                            {
                                                                                alert("Password didn't match");
                                                                                return false;
                                                                            }
                                                                        }   
                                                else{
                                                    return false;
                                                }
                                            }
                                                else
                                                {
                                                    return false;
                                                }
                                            }
                                                else{
                                                    return false;
                                                }
                                            }
                                                else{
                                                    return false;
                                                }
                                            }
                                        else
                                        {
                                            return false;
                                        }
                                    }
                                    else{
                                        return false;
                                    }
                                }
                                    else{
                                        return false;
                                    }
                                }
                            else
                            {
                                return false;
                            }
                            }
                            else
                            {
                                return false;
                            }    
                        }
                        else
                        {
                            return false;
                        }
                    }
                    else
                    {
                        return false;
                    }
                }
                else
                {
                    return false;
                }
        }
        else
        {
            return false;
        }
     
}
function isAlphebatic(elemValue)
{
    var exp = /^[a-zA-Z_ ]*$/;
    if(!isEmpty(elemValue))
    {
        if(elemValue.match(exp))
        {
            return true;
        }
        else
        {
            alert("Enter text only for your first / user name");
            return false;
        }
    }
}

function isAlphanumeric(elemValue)
{
	var exp2 = /^[0-9]+$/;
	if(!isEmpty(elemValue))
	{
		if(elemValue.match(exp2))
		{
			return true;
		}
		else
		{
			alert("Enter only the numbers for Contact number");
			return false;
		}
	}
}

function isEmpty(elemValue)
{
    if(elemValue==""  || elemValue==null)
    {
        alert("You cannot keep fields empty");
        return true;
    }
    else
    {
        return false;
    }
}		

function emailValidation(elemValue)
{
    if(!isEmpty(elemValue))
    {
        var atops = elemValue.indexOf("@");
        var dotops = elemValue.indexOf(".");
        
        if(atops <1 || dotops+2 >=elemValue.length || atops+2>dotops)
        {
            alert("Enter a valid Email Address");
            return false;
        }
        else
        {
            return true;
        }
    }
    else
    {
        return false;
    }
} 

function adrsValidation(elemValue)
{
	if(!isEmpty(elemValue))
	{
                var ex3 = /^[a-zA-Z0-9_ ]*$/;
		if(elemValue.match(ex3))
		{
				return true;
		}
		else
		{
            alert("Enter only text and numbers for address");
            return false;
		}
    }
    else
    {
        return false;
    }
		
	
}

function passValidation(elemValue,min)
{
    var exp3=/^(?=.*[a-zA-Z0-9])(?=.*[!@#$%^&*])[a-zA-Z0-9!@#$%^&*]+$/;

    if(!isEmpty(elemValue))
    {
        if(elemValue.length>=min)
        {
            if(elemValue.match(exp3))
            {
                return true;
            }
            else
            {
                alert("Password should consist at least a upper case, lower case letter,special Character and number");
                return false;
            }
        }
        else
        {
            alert("Password should at least 8 characters long");
            return false;
        }
    }
    else
    {
        return false;
    }
}

function spclValidation(elemValue)
{
	if(!isEmpty(elemValue))
	{
		var ex3=/^[a-zA-Z0-9_ ]+$/;
		if(elemValue.match(ex3))
		{
				return true;
		}
		else
		{
            alert("Enter only text and numbers for special");
            return false;
		}
    }
    else
    {
        return false;
    }
		
	
}


function indexValidation(elemValue)
{
	var exp2 = /^[0-9]+$/;
	if(!isEmpty(elemValue))
	{
		if(elemValue.match(exp2))
		{
			return true;
		}
		else
		{
			alert("Enter only the numbers for Index number");
			return false;
		}
	}
}


function occValidation(elemValue)
{
    var exp = /^[a-zA-Z_ ]+$/;
    if(!isEmpty(elemValue))
    {
        if(elemValue.match(exp))
        {
            return true;
        }
        else
        {
            alert("Enter text only for Occupation");
            return false;
        }
    }
}



function rsltsValidation(elemValue)
{
	if(!isEmpty(elemValue))
	{
		var ex3=/^[a-zA-Z0-9_ ]+$/;
		if(elemValue.match(ex3))
		{
				return true;
		}
		else
		{
            alert("Enter only text and numbers for results");
            return false;
		}
    }
    else
    {
        return false;
    }
		
	
}



function olYearValidation(elemValue)
{
	var exp2 = /^[0-9]+$/;
	if(!isEmpty(elemValue))
	{
		if(elemValue.match(exp2))
		{
			return true;
		}
		else
		{
			alert("Enter only the numbers for O/L Year");
			return false;
		}
	}
}



function pNameValidation(elemValue)
{
    var exp = /^[a-zA-Z_ ]+$/;
    if(!isEmpty(elemValue))
    {
        if(elemValue.match(exp))
        {
            return true;
        }
        else
        {
            alert("Enter text only for parent name");
            return false;
        }
    }
}