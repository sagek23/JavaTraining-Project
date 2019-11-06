package com.beshop.db;

import java.io.Reader;
import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import com.beshop.vo.Be_UserVo;
import com.beshop.vo.BE_ProductVo;
import com.beshop.vo.Be_ChargePointVo;
import com.beshop.vo.Be_NoticeVo;
import com.beshop.vo.Be_PayPointVo;
import com.beshop.vo.Be_PointBalanceVo;
import com.beshop.vo.Be_QnaVo;

public class DBManager {

		private static SqlSessionFactory factory;
		
		static {
			try {
				Reader reader = org.apache.ibatis.io.Resources.getResourceAsReader("com/beshop/db/dbConfig.xml");
				factory = new SqlSessionFactoryBuilder().build(reader);
				reader.close();
			} catch (Exception e) {
				// TODO: handle exception
				System.out.println(e.getMessage());
			}
		}
		
		public static List<Be_ChargePointVo> plusPointList(String beuid)
		{
			List<Be_ChargePointVo> plist = null;
			SqlSession session = factory.openSession();
			plist = session.selectList("point.PlusPointList");
			session.close();
			return plist;
		}
		public static List<Be_PayPointVo> minusPointList(String beuid)
		{
			List<Be_PayPointVo> mlist = null;
			SqlSession session = factory.openSession();
			mlist = session.selectList("point.MinusPointList");
			session.close();
			return mlist;
		}
		public static Be_PointBalanceVo pointBalance(String beuid)
		{
			HashMap map = new HashMap();
			//System.out.println("아이디는 "+beuid);
			map.put("beuid", beuid);
			System.out.println("manager에서 map"+map);
			Be_PointBalanceVo  p;
			SqlSession session = factory.openSession();
			p = session.selectOne("point.getPoint", beuid);
			session.close();
			return p;
		}
		
		public static int  chargePoint(Be_ChargePointVo c)
		{
			int re = -1;
			SqlSession session = factory.openSession();
			re = session.insert("point.chargeP", c);
			//System.out.println("동작 dbmng");
			//System.out.println("re: "+re);
			session.commit();
			session.close();
			
			return re;
			
		}
		
		public static int payPoint(Be_PayPointVo p)
		{
			int re = -1;
			SqlSession session = factory.openSession();
			re = session.insert("point.payP", p);
			session.close();
			return re;
		}
		
		public static  String searchId(HashMap map) {
			// TODO Auto-generated method stub
			String beuid = "";	
			SqlSession session = factory.openSession();
			String uname = (String)map.get("uname");
			System.out.println(uname);
			beuid += session.selectOne("beuser.searchId",map);
			System.out.println(beuid);
			session.close();
			return	beuid;
		}

		public static int updatePwd(HashMap map) {
			// TODO Auto-generated method stub
			SqlSession session = factory.openSession();
			String beuid = (String)map.get("beuid");
			String pwd = (String)map.get("pwd");
			String new_pwd = (String)map.get("new_pwd");
			System.out.println("���̵� : "+beuid+"��й�ȣ : "+pwd+"�� ��� : "+new_pwd);
		    int r =  session.update("beuser.updatePwd",map);
		    System.out.println(r);
		    session.commit();
			session.close();
			return r;
		}

		public static Be_UserVo getName(HashMap map) {
			// TODO Auto-generated method stub
			Be_UserVo vo = null;
			SqlSession session = factory.openSession();
			String beuid = (String)map.get("beuid");
			String upw = (String)map.get("upw");
			System.out.println("�α��� �õ��� ���̵� : "+beuid+" ��й�ȣ : "+upw);
			vo = session.selectOne("beuser.loginUser",map);
			System.out.println(vo);
			session.close();
			return vo;
		}

		public static int newPwd(String beuid, String keyCode) {
			// TODO Auto-generated method stub
			SqlSession session = factory.openSession();
			System.out.println("�Ŵ������� �� �Գ��� ���̵� :"+beuid+"keycode�� ��"+keyCode);
			HashMap map = new HashMap();
			map.put("beuid", beuid);
			map.put("new_pwd", keyCode);
			int r = session.update("beuser.newPwd", map);
			System.out.println(r);
			session.commit();
			session.close();
			return r;
		}

		public static int deleteUser(HashMap map) {
			// TODO Auto-generated method stub
			int re = -1;
			SqlSession session = factory.openSession();
			re = session.delete("beuser.deleteUser", map);
			//System.out.println(re);
			session.commit();
			session.close();
			return re;
		}

		public static int insert(Be_UserVo v) {
			// TODO Auto-generated method stub
			int re=-1;
			SqlSession session=factory.openSession();
			System.out.println("�Ŵ��������� ��Ȯ��"+v);
			re=session.insert("beuser.insert",v);
			session.commit();
			session.close();
			return re;
		}
		
		public static int deleteNotice(int noticenum) {
			int re = -1;
			HashMap map = new HashMap();
			map.put("noticenum", noticenum);
			SqlSession session = factory.openSession(true);
			re = session.delete("notice.delete", map);
			session.commit();
			session.close();
			return re;
		}
		
		public static int updateNotice(Be_NoticeVo nvo) {
			int re = -1;
			SqlSession session = factory.openSession();
			re =session.insert("notice.update", nvo);
			session.commit();
			session.close();
			return re;
		}
		
		public static int getCountQna(HashMap map) {
			int cnt = 0;
			SqlSession session = factory.openSession();
			cnt = session.selectOne("qna.getCount", map);
			session.close();
			return cnt;
		}
		
		
		public static int getCountNotice(HashMap map) {
			int cnt = 0;
			SqlSession session = factory.openSession();
			cnt = session.selectOne("notice.getCount", map);
			session.close();
			return cnt;
		}
		
		public static Be_QnaVo selectQna(int qnanum) {
			Be_QnaVo n = null;
			HashMap map = new HashMap();
			map.put("qnanum", qnanum);
			SqlSession session = factory.openSession();
			n = session.selectOne("qna.getQna", map);
			session.close();
				
			return n;
		}
		
		public static Be_NoticeVo selectNotice(int noticeNum)
		{
			Be_NoticeVo n = null;
			HashMap map = new HashMap();
			map.put("noticenum", noticeNum);
			SqlSession session = factory.openSession();
			n = session.selectOne("notice.getNotice", map);
			session.close();
			return n;
		}
		
		public static int insertNotice(Be_NoticeVo nvo) {
			int re = -1;
			SqlSession session = factory.openSession(true);
			re = session.insert("notice.insert", nvo);
			session.close();
			return re;
		}
		
		
		public static List<Be_QnaVo> listAllQna(HashMap map) {
			SqlSession session = factory.openSession();
			List<Be_QnaVo> list = session.selectList("qna.selectAll", map);
			session.close();
			return list;
		}
			
		
		public static List<Be_NoticeVo> listAllNotice(HashMap map) {
			SqlSession session = factory.openSession();
			List<Be_NoticeVo> list = session.selectList("notice.selectAll", map);
			session.close();
			return list;
		}
		
		public static int insertProduct(BE_ProductVo po) {
		      int r = 0;
		      SqlSession session = factory.openSession();
		      r = session.insert("product.insert",po);
		      session.commit();
		      session.close();
		      return r;
		   }

			
		
		
	
}
