package com.weir.serviceImpl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.weir.dao.BaseDao;
import com.weir.dao.IActivityAwardDao;
import com.weir.dao.IActivityDao;
import com.weir.entiy.Activity;
import com.weir.entiy.ActivityAward;
import com.weir.service.IAdminService;
@Service
public class AdminServiceImpl extends BaseDao implements IAdminService{
	@Resource
	private IActivityDao activityDao;
	@Resource
	private IActivityAwardDao activityAwardDao;	
	public void addActivity(Activity act) {
		// TODO Auto-generated method stub
		activityDao.save(act);
	}
	public List getAllActivity(int pageNum,int pageSize) {
		// TODO Auto-generated method stub
		return activityDao.getAllActivity(pageNum,pageSize);
	}
	public int getActivityCount(int pageNum,int pageSize) {
		// TODO Auto-generated method stub
		return activityDao.getActivityCount(pageNum,pageSize);
	}
	public void saveAward(ActivityAward aa) {
		// TODO Auto-generated method stub
		activityAwardDao.save(aa);
	}
	public List getActivityAwardById(Integer activityId) {
		// TODO Auto-generated method stub
		return activityAwardDao.getActivityAwardById(activityId);
	}
	public int getMaxActivitId() {
		// TODO Auto-generated method stub
		return activityDao.getMaxActivityId();
	}

}
