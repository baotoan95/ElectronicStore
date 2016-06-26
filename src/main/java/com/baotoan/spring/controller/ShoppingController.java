package com.baotoan.spring.controller;

import java.beans.PropertyEditorSupport;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.joda.time.LocalDate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.ServletRequestDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.baotoan.spring.entity.CartItem;
import com.baotoan.spring.entity.Delivery;
import com.baotoan.spring.entity.Order;
import com.baotoan.spring.entity.OrderDetail;
import com.baotoan.spring.entity.Payment;
import com.baotoan.spring.entity.Product;
import com.baotoan.spring.entity.ShoppingCart;
import com.baotoan.spring.entity.User;
import com.baotoan.spring.entity.UserLogin;
import com.baotoan.spring.service.DeliverService;
import com.baotoan.spring.service.OrderService;
import com.baotoan.spring.service.PaymentService;
import com.baotoan.spring.service.PlaceService;
import com.baotoan.spring.service.ProductService;

@Controller
@SessionAttributes({"carts", "user", "returnTo"})
public class ShoppingController {
	@Autowired
	private ProductService productService;
	@Autowired
	private PaymentService paymentService;
	@Autowired
	private DeliverService deliverService;
	@Autowired
	private PlaceService placeService;
	@Autowired
	private OrderService orderService;
	
	@RequestMapping(value = "cart.html", method = RequestMethod.GET)
	public String cartPage() {
		return "cart";
	}
	
	@RequestMapping(value = "cart.html/add", method = RequestMethod.GET)
	@ResponseBody
	public String addCart(@RequestParam(value = "prodId", required = true) int prodId, ModelMap model) {
		String message = "error";
		ShoppingCart carts = (ShoppingCart) model.get("carts");
		if(null == carts) {
			carts = new ShoppingCart();
		}
		Product product = productService.getProductById(prodId);
		if(carts.addCart(new CartItem(product, 1))) {
			message = String.valueOf(carts.getQuantity());
		} else {
			message = "fail";
		}
		model.addAttribute("carts", carts);
		return message;
	}
	
	@RequestMapping(value = "cart.html/update", method = RequestMethod.GET, headers="Accept=*/*", produces = "application/json")
	@ResponseBody
	public Map<String, String> updateCart(@RequestParam(value = "prodId", required = true) int prodId, 
			@RequestParam(value = "quantity", required = true) int quantity, @ModelAttribute("carts") ShoppingCart carts) {
		Map<String, String> result = new HashMap<String, String>();
		Product product = productService.getProductById(prodId);
		CartItem cartItem = new CartItem(product, quantity);
		if(carts.updateCart(prodId, quantity)) {
			result.put("status", quantity == 0 ? "delete" : "update");
		} else {
			result.put("status", "error");
		}
		result.put("totalPay", String.valueOf(carts.getTotalPay()));
		result.put("payItem", String.valueOf(cartItem.getMonetized()));
		return result;
	}
	
	@RequestMapping(value = "cart.html/delete", method = RequestMethod.GET)
	@ResponseBody
	public String deleteCart(@RequestParam("prodId") int prodId, HttpSession session) {
		ShoppingCart carts = (ShoppingCart) session.getAttribute("carts");
		if(carts.delCart(prodId)) {
			session.setAttribute("carts", carts);
			return "success";
		}
		return "error";
	}
	
	@RequestMapping(value = "order.html", method = RequestMethod.GET)
	public String orderPage(ModelMap model) {
		if(null == model.get("carts") || ((ShoppingCart)model.get("carts")).getCarts().size() == 0) {
			return "redirect:/";
		}
		if(model.get("user") == null) {
			model.put("returnTo", "order");
			model.addAttribute("userLogin", new UserLogin());
			return "login";
		} else {
			model.remove("returnTo");
		}
		model.put("order", new Order());
		model.put("payments", paymentService.getAll());
		model.put("delivers", deliverService.getAll());
		return "order";
	}
	
	@InitBinder
	protected void initBinder(HttpServletRequest request, ServletRequestDataBinder binder) throws Exception {
	    binder.registerCustomEditor(Payment.class, "payment", new PropertyEditorSupport() {
		    @Override
		    public void setAsText(String paymentId) {
		        Payment payment = paymentService.getPaymentById(Integer.parseInt(paymentId));
		        System.out.println(payment);
		        setValue(payment);
		    }
	    });
	    binder.registerCustomEditor(Delivery.class, "delivery", new PropertyEditorSupport() {
		    @Override
		    public void setAsText(String deliveryId) {
		        Delivery delivery = deliverService.getDeliveryById(Integer.parseInt(deliveryId));
		        System.out.println(delivery);
		        setValue(delivery);
		    }
	    });
	}
	
	@RequestMapping(value = "order.html", method = RequestMethod.POST)
	public String order(@ModelAttribute("order") Order order, @ModelAttribute("user") User user, 
			@ModelAttribute("carts") ShoppingCart carts, ModelMap model, HttpServletRequest request) {
		order.setOrderDate(new LocalDate());
		order.setMonetized(carts.getTotalPay());
		order.setOrderUser(user);
		Iterator<Integer> keys = carts.getCarts().keySet().iterator();
		List<OrderDetail> orderDetails = new ArrayList<OrderDetail>();
		while(keys.hasNext()) {
			CartItem cartItem = carts.getCarts().get(keys.next());
			orderDetails.add(new OrderDetail(0, order, cartItem.getProduct(), cartItem.getQuantity(), cartItem.getMonetized()));
		}
		order.setOrderDetails(orderDetails);
		order.setId(1);
		order.setPayName(user.getPay_name());
		order.setPayPhone(user.getPhone());
		order.setPayDistrict(user.getPay_district());
		order.setPayProvince(user.getPay_province());
		order.setPayAddress(user.getPay_address());
		order.setRecieName(user.getRecie_name());
		order.setRecieAddress(user.getRecie_address());
		order.setReciePhone(user.getRecie_phone());
		order.setRecieDistrict(user.getRecie_district());
		order.setRecieProvince(user.getRecie_province());
		if(orderService.insertOrder(order)) {
			System.out.println("ok");
		}
		return "";
	}
	
	@RequestMapping(value = "transaction", method = RequestMethod.GET)
	public String trans(ModelMap model, @RequestParam("action") String action, 
			@RequestParam(value = "k", required = false) String key, @ModelAttribute("user") User user) {
		if(action.equalsIgnoreCase("index")) {
			model.addAttribute("action", "trans");
			List<Order> orders = orderService.getOrdersByEmail(user.getEmail()); 
			model.addAttribute("orders", orders);
			model.addAttribute("numOfOrders", orders.size());
		} else  if(action.equalsIgnoreCase("view")) {
			model.addAttribute("order", orderService.getOrderById(Integer.parseInt(key)));
			model.addAttribute("action", "trans_view");
		}
		return "profile";
	}
}
