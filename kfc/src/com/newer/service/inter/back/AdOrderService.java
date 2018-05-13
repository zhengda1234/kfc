package com.newer.service.inter.back;

import java.util.List;

import com.newer.pojo.Order;

public interface AdOrderService {
	

	/**
	 * 增加订单
	 * @param m
	 * boolean 类型
	 */	
	public boolean add(Order o);
	
	/**
	 * 删除订单
	 * @param 0
	 * boolean 类型
	 */	
	public boolean delete(Order o);
	
	/**
	 * 根据用户id删除订单
	 * @param user_id
	 * boolean 类型
	 */	
	public boolean deleteByUser_id(int user_id);
	
	/**
	 * 修改订单
	 */
	public boolean modify(Order o);
	
	/**
	 * 根据订单id查询订单
	 * @param id
	 * @return Order
	 */
	public Order selectById(int id);
	
	/**
	 * 查询所有订单
	 * @return List<Order>
	 */
	public List<Order> selectAll();
	
	/**
	 * 根据下单时间查询订单
	 * @param O_time
	 * @return Order
	 */
	public Order selectByO_time(String Time);
	/**
	 * 根据配送查询订单-不知是否是一个集合
	 * @param send
	 * @return Order
	 */
	public List<Order> SendOrderById(int id) ;
}
