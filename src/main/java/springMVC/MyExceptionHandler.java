package springMVC;

import java.io.IOException;

import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;

//jei controller er vetor jei exception handler likhi seta sudu oi controller er vetorei kaj kore 
//tai amra @ControllerAdvice likhe ekta class banai jekhane sob exception rakhi , ebr jei controller-ei
//exception asuk , sobai handle hoye jabe 

@ControllerAdvice
public class MyExceptionHandler {

	@ExceptionHandler(value = IOException.class)
	public String IOExceptionHandler() {
		return "success";
	}

}
