package com.weir.daoImpl;

import java.util.Iterator;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.springframework.stereotype.Repository;

import com.weir.dao.BaseDao;
import com.weir.dao.IActivityDao;
import com.weir.entiy.Activity;
@Repository
public class ActivityDaoImpl extends BaseDao implements IActivityDao {

	public void save(Activity act) {
		// TODO Auto-generated method stub
		super.save(act);

	}

	public List getAllActivity(int pageNum,int pageSize) {
		// TODO Auto-generated method stub
		Session session = this.getSession();
		Query query = session.createQuery("from Activity");
		query.setFirstResult((pageNum-1)*pageSize);
		query.setMaxResults(pageSize);
		List list = query.list();
		return list;
	}

	public int getActivityCount(int pageNum,int pageSize) {
		// TODO Auto-generated method stub
		Session session = this.getSession();
		Query query = session.createQuery("from Activity");
		List list = query.list();
		int count = 0;
		count = list.size();
		return count;
	}

	public Activity getActivityById(Integer activityId) {
		// TODO Auto-generated method stub
		Session session = this.getSession();
		Query query = session.createQuery("from Activity a where a.activityId=?");
		List list = query.setInteger(0, activityId).list();
		Iterator it = list.iterator();
		Activity a= new Activity();
		if(it.hasNext()){
			a=(Activity) it.next();
		}
		return a;
	}

	public int getMaxActivityId() {
		// TODO Auto-generated method stub
		Session session = super.getSession();
		Query query = session.createSQLQuery("select max(activity_id) from activity");
		int maxId = ((Number)query.uniqueResult()).intValue();
		return maxId;
	}

}
