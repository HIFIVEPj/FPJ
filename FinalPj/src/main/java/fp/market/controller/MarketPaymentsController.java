package fp.market.controller;

import java.util.Locale;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Log4j
@Controller
@AllArgsConstructor
public class MarketPaymentsController {
	
	@RequestMapping(value = "market-payments", method = RequestMethod.GET)
	public String market_payments(HttpServletRequest request, HttpServletResponse response) {
		
	//	RequestDispatcher rd = request.getRequestDispatcher("market/market-payments");

	//	rd.forward(request, response);
		return "forward:market/market-payments";	
	}
	@RequestMapping(value = "market-payments-done", method = RequestMethod.GET)
	public String market_paymentsDone(Locale locale, Model model) {

		return "market/market-payments-done";
	}
}
