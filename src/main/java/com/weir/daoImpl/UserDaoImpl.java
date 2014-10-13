package com.weir.daoImpl;

import java.math.BigInteger;
import java.util.Iterator;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.springframework.stereotype.Repository;

import com.weir.dao.BaseDao;
import com.weir.dao.IUserDao;
import com.weir.entiy.User;
@Repository
public class UserDaoImpl extends BaseDao implements IUserDao{

	public User getUserById(Integer user_id) {
		// TODO Auto-generated method stub
		Session session = super.getSession();
		Query query = session.createQuery("from User u where u.userId=? ");
		List<BigInteger> list = query.setInteger(0, user_id).list();
		Iterator it = list.iterator();
		User u =null;
		while(it.hasNext()){
			u = (User) it.next();
		}
		return u;
	}

	public int getLotteryCount(Integer userId, String time) {
		// TODO Auto-generated method stub
		Session session = super.getSession();
		Query query = session.createSQLQuery("select count(*) from user_award ua where ua.user_id=? and ua.lottery_time like ?");
		query.setInteger(0, userId);
		query.setString(1, "%"+time+"%");
//		Number count = (Number) query.uniqueResult();
//		return count.intValue();
		 List<BigInteger> list = query.list();
	     int count = list.get(0).intValue();
	     return count;
	}
}
