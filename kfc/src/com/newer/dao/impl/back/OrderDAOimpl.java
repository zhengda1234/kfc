package com.newer.dao.impl.back;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import com.newer.dao.inter.back.OrderDAO;
import com.newer.pojo.Order;
import com.newer.util.HibernateSessionFactory;

public class OrderDAOimpl implements OrderDAO{

	@Override
	public boolean add(Order o) {
		boolean flag = false;
		// 1、获取SessionFactory
		SessionFactory sessionFactory = HibernateSessionFactory
				.getSessionFactory();
		// 2、获取Session
		Session session = sessionFactory.openSession();
		// 3、开启事务
		Transaction tran = session.beginTransaction();
		// 4、执行保存操作
		try {
			session.save(o);
			tran.commit();
			flag = true;
		} catch (HibernateException e) {
			e.printStackTrace();
			tran.rollback();
		} finally {
			// 关闭session
			session.close();
		}
		return flag;
	}

	@Override
	public boolean delete(Order o) {
		boolean flag = false;
		// 1、获取SessionFactory
		SessionFactory sessionFactory = HibernateSessionFactory
				.getSessionFactory();
		// 2、获取Session
		Session session = sessionFactory.openSession();
		// 3、开启事务
		Transaction tran = session.beginTransaction();
		// 4、执行删除操作
		try {
			session.delete(o);
			tran.commit();
			flag = true;
		} catch (HibernateException e) {
			e.printStackTrace();
			tran.rollback();
		} finally {
			// 关闭session
			session.close();
		}
		return flag;
	}

	@Override
	//通过用户id来删除订单
	public boolean deleteByUser_id(int user_id) {
		boolean flag = false;
		// 1、获取SessionFactory
		SessionFactory sessionFactory = HibernateSessionFactory
				.getSessionFactory();
		// 2、获取Session
		Session session = sessionFactory.openSession();
		// 3、开启事务
		Transaction tran = session.beginTransaction();
		// 4、执行删除操作
		try {
			// HQL语句
			String hql = "delete from Order o where o.user_id=?";
			Query query = session.createQuery(hql);
			query.setInteger(0, user_id);
			int i = query.executeUpdate();
			tran.commit();
			if (i > 0)
				flag = true;
		} catch (HibernateException e) {
			e.printStackTrace();
			tran.rollback();
		} finally {
			// 关闭session
			session.close();
		}
		return flag;
	}

	@Override
	public boolean modify(Order o) {
		boolean flag = false;
		// 1、获取SessionFactory
		SessionFactory sessionFactory = HibernateSessionFactory
				.getSessionFactory();
		// 2、获取Session
		Session session = sessionFactory.openSession();
		// 3、开启事务
		Transaction tran = session.beginTransaction();
		// 4、执行更新操作
		try {
			session.update(o);
			tran.commit();
			flag = true;
		} catch (HibernateException e) {
			e.printStackTrace();
			tran.rollback();
		} finally {
			// 关闭session
			session.close();
		}
		return flag;
	}

	@Override
	public Order selectById(int id) {
		// 1、获取SessionFactory
		SessionFactory sessionFactory = HibernateSessionFactory
				.getSessionFactory();
		// 2、获取Session
		Session session = sessionFactory.openSession();
		Order o = null;
		// 4、执行查询操作
		try {
			 o = (Order) session.get(Order.class, id);
		} catch (HibernateException e) {
			e.printStackTrace();
		} finally {
			// 关闭session
			session.close();
		}
		return o;
	}

	@Override
	public List<Order> selectAll() {
		 List<Order> list =new ArrayList<Order>();
			// 1、获取SessionFactory
			SessionFactory sessionFactory = HibernateSessionFactory
					.getSessionFactory();
			// 2、获取Session
			Session session = sessionFactory.openSession();
			// 4、执行查询所有操作
			try {
				// HQL语句
				String hql = "from Order";
				Query query = session.createQuery(hql);
				list= query.list();
			
			}  catch(Exception e){
				e.printStackTrace();
			}finally {
				// 关闭session
				session.close();
			}
			return list;
	}

	@Override
	public Order selectByO_time(String Time) {
		// 1、获取SessionFactory
				SessionFactory sessionFactory = HibernateSessionFactory
						.getSessionFactory();
				// 2、获取Session
				Session session = sessionFactory.openSession();
				Order o = null;
				// 4、执行查询操作
				try {
					 o = (Order) session.get(Order.class, Time);
				} catch (HibernateException e) {
					e.printStackTrace();
				} finally {
					// 关闭session
					session.close();
				}
				return o;
	}

	@Override
	public List<Order> SendOrderById(int id) {
	
		List<Order> orders = selectAll();
		for(Order o:orders){
			if(o.getId()==id){
				o.setBoolean("是");
				modify(o);
		}
	}
		return orders;

	}
}	

