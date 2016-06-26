package com.baotoan.spring.entity;

import java.util.Iterator;
import java.util.Map;
import java.util.TreeMap;

public class ShoppingCart {
	Map<Integer, CartItem> carts;

	public ShoppingCart() {
		this.carts = new TreeMap<Integer, CartItem>();
	}

	public boolean addCart(CartItem cartItem) {
		Integer id = cartItem.getProduct().getId();
		try {
			if(!carts.containsKey(id)) {
				carts.put(id, cartItem);
				return true;
			}
			return false;
		} catch (Exception e) {
			return false;
		}
	}
	
	public boolean delCart(int cartId) {
		try {
			CartItem cartItem = carts.get(cartId);
			if(cartItem.getQuantity() > 2) {
				cartItem.setQuantity(cartItem.getQuantity() - 1);
				carts.put(cartId, cartItem);
			} else {
				carts.remove(cartId);
			}
			return true;
		} catch (Exception e) {
			return false;
		}
	}
	
	public boolean updateCart(int cartId, int quantity) {
		try {
			CartItem cartItem = carts.get(cartId);
			if(quantity == 0) {
				carts.remove(cartId);
			} else {
				cartItem.setQuantity(quantity);
				carts.put(cartId, cartItem);
			}
			return true;
		} catch (Exception e) {
			return false;
		}
	}
	
	public Map<Integer, CartItem> getCarts() {
		return carts;
	}
	
	public int getTotalPay() {
		int result = 0;
		Iterator<Integer> iter = carts.keySet().iterator();
		while(iter.hasNext()) {
			result += carts.get(iter.next()).getMonetized();
		}
		return result;
	}
	
	public boolean isContain(int cartId) {
		return carts.containsKey(cartId);
	}
	
	public int getQuantity() {
		return carts.size();
	}
	
}