package models;

import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class brokerdeleteDao {
	@Autowired
	SqlSessionFactory factory;
	
	public int brokerDelete(Map map){
		int r = 0;
		
		SqlSession session = factory.openSession();
		try{
			r = session.delete("broker.delete",map);
			if(r==1)
			session.commit();
		}catch(Exception e){
			e.printStackTrace();
			session.rollback();
		}finally{
			session.close();
		}
		
		return r;
	}
	
	
	public int roomDelete(Map map){
		int r = 0;
		System.out.println(map.toString()+"!!!!");
		SqlSession session = factory.openSession();
		try{
			r = session.delete("broker.deleteroom",map);
			if(r==1)
			session.commit();
		}catch(Exception e){
			e.printStackTrace();
			session.rollback();
		}finally{
			session.close();
		}
		
		return r;
	}

}
