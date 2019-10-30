package com.bit.myBeShop.db;

import java.io.Reader;
import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import com.bit.myBeShop.vo.ChargePointVo;
import com.bit.myBeShop.vo.PayPointVo;
import com.bit.myBeShop.vo.PointBalanceVo;

public class DBManager {

		private static SqlSessionFactory factory;
		
		static {
			try {
				Reader reader = org.apache.ibatis.io.Resources.getResourceAsReader("com/bit/myBeShop/db/dbConfig.xml");
				factory = new SqlSessionFactoryBuilder().build(reader);
				reader.close();
			} catch (Exception e) {
				// TODO: handle exception
				System.out.println(e.getMessage());
			}
		}
		
		public static List<ChargePointVo> plusPointList(String beuid)
		{
			List<ChargePointVo> plist = null;
			SqlSession session = factory.openSession();
			plist = session.selectList("point.PlusPointList");
			session.close();
			return plist;
		}
		public static List<PayPointVo> minusPointList(String beuid)
		{
			List<PayPointVo> mlist = null;
			SqlSession session = factory.openSession();
			mlist = session.selectList("point.MinusPointList");
			session.close();
			return mlist;
		}
		public static PointBalanceVo pointBalance(String beuid)
		{
			HashMap map = new HashMap();
			map.put(beuid, beuid);
			PointBalanceVo point;
			SqlSession session = factory.openSession();
			point = session.selectOne("point.getPoint", map);
			session.close();
			return point;
		}
		
		public static int  chargePoint(ChargePointVo c)
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
		
		public static int payPoint(PayPointVo p)
		{
			int re = -1;
			SqlSession session = factory.openSession();
			re = session.insert("point.payP", p);
			session.close();
			return re;
		}
		
}
