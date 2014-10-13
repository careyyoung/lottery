package com.weir.daoImpl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.springframework.stereotype.Repository;

import com.weir.dao.BaseDao;
import com.weir.dao.IAdminDao;
@Repository
public class AdminDaoImpl extends BaseDao implements IAdminDao{

	public List getAdmin() {
		// TODO Auto-generated method stub
		Session session = this.getSession();
		Query query = session.createQuery("from Admin");
		List list = query.list();
		return list;
	}
	
}
