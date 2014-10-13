package com.weir.daoImpl;

import java.util.Iterator;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.springframework.stereotype.Repository;

import com.weir.dao.BaseDao;
import com.weir.dao.IActivityAwardDao;
import com.weir.entiy.ActivityAward;
@Repository
public class ActivityAwardDaoImpl extends BaseDao implements IActivityAwardDao {

	public void save(ActivityAward aa) {
		// TODO Auto-generated method stub
		super.save(aa);
	}

	public List getActivityAwardById(Integer activityId) {
		// TODO Auto-generated method stub
		Session session = super.getSession();
		Query query = session.createQuery("from ActivityAward aa where aa.activityId=?");
		query.setInteger(0, activityId);
		List list = query.list();
		return list;
	}

	public int getAwardIdByProbility(Float rate,Integer activityId) {
		// TODO Auto-generated method stub
		Session session = super.getSession();
		Query query = session.createSQLQuery("select award_id from activity_award aa where aa.activity_id=? and aa.award_probability=?");
		query.setInteger(0, activityId);
		query.setFloat(1, rate);
		Integer awardId1 = (Integer) query.uniqueResult();
		int awardId = awardId1.intValue();
		return awardId;
	}

	public ActivityAward getAward(Integer activityId, Integer awardId) {
		// TODO Auto-generated method stub
		Session session = super.getSession();
		Query query = session.createQuery("from ActivityAward aa where aa.activityId=? and aa.awardId=?");
		query.setInteger(0, activityId);
		query.setInteger(1, awardId);
		List<ActivityAward> list = query.list();
		ActivityAward aa = new ActivityAward();
		Iterator<ActivityAward> it = list.iterator();
		if(it.hasNext()){
			aa = it.next();
		}
		return aa;
	}

}
