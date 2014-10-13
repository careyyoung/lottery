package com.weir.daoImpl;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.Session;
import org.springframework.stereotype.Repository;

import com.weir.dao.BaseDao;
import com.weir.dao.IUserAwardDao;
import com.weir.entiy.UserAward;
@Repository
public class UserAwardDaoImpl extends BaseDao implements IUserAwardDao {

	public int getAwardCountById(Integer activityId, Integer awardId) {
		// TODO Auto-generated method stub
		Session session = super.getSession();
		Query query=  session.createSQLQuery("select count(*) from user_award ua where ua.activity_id=? and award_id =?");
		query.setInteger(0, activityId);
		query.setInteger(1, awardId);
		Number count =(Number) query.uniqueResult();
		return count.intValue();
	}

	public void save(UserAward ua) {
		// TODO Auto-generated method stub
		super.save(ua);
	}

	public List<UserAward> getUserAward(Integer userId) {
		// TODO Auto-generated method stub
		Session session = super.getSession();
		Query query = session.createQuery("from UserAward ua where ua.userId = ? ");
		List list = query.setInteger(0, userId).list();
		return list;
	}

}
