package com.beshop.db;

import java.io.Reader;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import com.beshop.vo.BE_AuctionListVo;
import com.beshop.vo.BE_AuctionVo;
import com.beshop.vo.BE_ChannelVo;
import com.beshop.vo.BE_ChargePointVo;
import com.beshop.vo.BE_OrderDeliveryVo;
import com.beshop.vo.BE_OrderPurchaseVo;
import com.beshop.vo.BE_PayPointVo;
import com.beshop.vo.BE_PayVo;
import com.beshop.vo.BE_PointBalanceVo;
import com.beshop.vo.BE_ProductVo;
import com.beshop.vo.BE_SubVo;
import com.beshop.vo.BE_Sub_ListVo;
import com.beshop.vo.BE_UserVo;
import com.beshop.vo.Be_NoticeVo;
import com.beshop.vo.Be_QnaVo;
import com.beshop.vo.Be_RankingVo;
import com.beshop.vo.Be_ReviewVo;

public class DBManager {
	
	private static SqlSessionFactory factory;
	static {
		try {
			Reader reader = Resources.getResourceAsReader("com/beshop/db/dbconfig.xml");
			factory = new SqlSessionFactoryBuilder().build(reader);
			reader.close();
		}catch(Exception e) {
			System.out.println(e.getMessage());
		}
	}
	
	public static List<BE_PayPointVo> minusPointList(String beuid)
	{
		List<BE_PayPointVo> mlist = null;
		SqlSession session = factory.openSession();
		mlist = session.selectList("point.MinusPointList");
		session.close();
		return mlist;
	}
	public static List<BE_ChargePointVo> plusPointList(String beuid)
	{
		List<BE_ChargePointVo> plist = null;
		SqlSession session = factory.openSession();
		plist = session.selectList("point.PlusPointList");
		session.close();
		return plist;
	}
	public static BE_PointBalanceVo pointBalance(String beuid)
	{
		HashMap map = new HashMap();
		map.put("beuid", beuid);
		BE_PointBalanceVo  p;
		SqlSession session = factory.openSession();
		p = session.selectOne("point.getPoint", beuid);
		session.close();
		return p;
	}
	
	public static int  chargePoint(BE_ChargePointVo c)
	{
		int re = -1;
		SqlSession session = factory.openSession();
		re = session.insert("point.chargeP", c);
		session.commit();
		session.close();
		
		return re;
	}
	public static int payPoint(BE_PayPointVo p)
	{
		int re = -1;
		SqlSession session = factory.openSession();
		re = session.insert("point.payP", p);
		session.close();
		return re;
	}
	
	public static List<Be_OrderDeliveryVo> orderList(String beuid)
	{
		HashMap map = new HashMap();
		//System.out.println("아이디는 "+beuid);
		map.put("beuid", beuid);
		System.out.println("manager에서 map"+map);
		List<Be_OrderDeliveryVo> list;
		SqlSession session = factory.openSession();
		list = session.selectList("ordered.orderList", map);
		session.close();
		return list;
	}
	
	public static BE_OrderDeliveryVo orderDetail(String beuid, int onum)
	{
		BE_OrderDeliveryVo o;
		HashMap map = new HashMap();
		map.put("beuid", beuid);
		map.put("onum", onum);
		SqlSession session = factory.openSession();
		o = session.selectOne("ordered.orderDetail", map);
		session.close();
		return o;
	}
	
	   public static int insertReview(Be_ReviewVo r)
    {
    	int re = -1;
		SqlSession session = factory.openSession();
		re = session.insert("review.WritingReview", r);
		session.commit();
		session.close();
		return re;
    }
	public static List<Be_ReviewVo> reviewList(int pnum){
    	SqlSession session = factory.openSession();
    	List<Be_ReviewVo> list = null;
    	list = session.selectList("review.reviewList", pnum);
    	System.out.println();
    	session.close();
    	return list;
    }	
    
 

	
	
	public static BE_OrderPurchaseVo listOrderdelivery(int onum)
	{
		
		SqlSession session = factory.openSession();
		BE_OrderPurchaseVo vo = null;
		vo = session.selectOne("Order.selectodpurchase",onum);
		System.out.println(vo);
		session.close();
		
		return vo;
	}
	public static int updateChannel(BE_ChannelVo vo) {
		SqlSession session = factory.openSession();
		int r = session.update("channel.updateChannel", vo);
		System.out.println(r);
		session.commit();
		session.close();
		return r;
	}
	
	
		public static BE_AuctionVo nowAuction() {
			BE_AuctionVo ao= null;
			SqlSession session = factory.openSession();
			ao = session.selectOne("product.nowAuction");
			session.close();
			return ao;
		}
		public static BE_AuctionVo successAuction(int pnum) {
			BE_AuctionVo avo = new BE_AuctionVo();
			SqlSession session = factory.openSession();
			avo = session.selectOne("product.successAuction",pnum);
			session.close();
			return avo;
		}
		public static int insertAuction(BE_AuctionVo ao) {
			int r = 0;
			SqlSession session = factory.openSession();
			r = session.insert("product.insertAuction",ao);
			session.commit();
			session.close();
			return r;
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
	    int r =  session.update("beuser.updatePwd",map);
	    System.out.println(r);
	    session.commit();
		session.close();
		return r;
	}

	public static BE_UserVo getName(HashMap map) {
		// TODO Auto-generated method stub
		BE_UserVo vo = null;
		SqlSession session = factory.openSession();
		String beuid = (String)map.get("beuid");
		String upw = (String)map.get("upw");
		vo = session.selectOne("beuser.loginUser",map);
		System.out.println(vo);
		session.close();
		return vo;
	}

	public static int newPwd(String beuid, String keyCode) {
		// TODO Auto-generated method stub
		SqlSession session = factory.openSession();
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
		System.out.println(re);
		session.commit();
		session.close();
		return re;
	}

	public static int insert(BE_UserVo v) {
		// TODO Auto-generated method stub
		int re=-1;
		SqlSession session=factory.openSession();
		re=session.insert("beuser.insert",v);
		session.commit();
		session.close();
		return re;
	}
	public static int insertProduct(BE_ProductVo po) {
	      int r = 0;
	      SqlSession session = factory.openSession();
	      r = session.insert("product.insert",po);
	      session.commit();
	      session.close();
	      return r;
	   }

	public static List<BE_ProductVo> productList(String beuid) {
		// TODO Auto-generated method stub
		List<BE_ProductVo> list = null;
		SqlSession session = factory.openSession();
		System.out.println(beuid);
		list = session.selectList("product.list",beuid);
		System.out.println(list);
		session.close();
		return list;
	}

	public static List<BE_ProductVo> videoList() {
		// TODO Auto-generated method stub
		List<BE_ProductVo> list = null;
		SqlSession session = factory.openSession();
		list = session.selectList("product.videolist");
		System.out.println(list);
		session.close();
		return list;
	}

	public static BE_UserVo getUser(String beuid) {
		// TODO Auto-generated method stub
		System.out.println(beuid);
		SqlSession session = factory.openSession();
		BE_UserVo vo = session.selectOne("beuser.getUser",beuid);
		System.out.println(vo);
		session.close();
		return vo;
	}

	public static int insertSub(HashMap map) {
		// TODO Auto-generated method stub
		int r = 0;
		SqlSession session = factory.openSession();
		r = session.insert("sub.insertSub", map);
		session.commit();
		session.close();
		return r;
	}

	public static ArrayList<String> subList(String sbeuid) {
		// TODO Auto-generated method stub
		SqlSession session = factory.openSession();
		List<String> listall = null;
		listall =session.selectList("sub.subList",sbeuid);
		ArrayList<String> list = new ArrayList<String>();
		list.addAll(listall);
		System.out.println(list);
		session.close();
		return list;
	}

	public static List<BE_ProductVo> shopList() {
		// TODO Auto-generated method stub
		SqlSession session = factory.openSession();
		List<BE_ProductVo> list = null;
		list = session.selectList("product.shoplist");
		session.close();
		return list;
	}

	public static BE_ProductVo productDetail(int pnum) {
		// TODO Auto-generated method stub
		BE_ProductVo vo = new BE_ProductVo();
		SqlSession session = factory.openSession();
		vo = session.selectOne("product.productDetail", pnum);
		session.close();
		return vo;
	}
	
	
	//�룷�씤�듃 愿��젴
	
	public static int insertODPay(BE_OrderDeliveryVo od)
	{
		int r=-1;
		
	     SqlSession session = factory.openSession();
	     r = session.insert("Order.insertorder",od);
	      session.commit();
	      session.close();
		return r;
	      
	}
	public static int insertPay(BE_PayVo p)
	{
		int r=-1;
		
	     SqlSession session = factory.openSession();
	     r = session.insert("Order.insertodpay",p);
	      session.commit();
	      session.close();
		return r;
	      
	}

	public static BE_UserVo snsIdCheck(String snsid) {
		// TODO Auto-generated method stub
		BE_UserVo vo = new BE_UserVo();
		SqlSession session = factory.openSession();
		vo = session.selectOne("beuser.snscheck", snsid);
		session.close();
		return vo;
	}

	public static int insertChannel(BE_UserVo v) {
		// TODO Auto-generated method stub
		SqlSession session = factory.openSession();
		HashMap map = new HashMap();
		map.put("uname", v.getUname());
		map.put("beuid", v.getBeuid());
		int r = session.insert("beuser.channel",map);
		session.commit();
		session.close();
		return r;
	}
	public static BE_ChannelVo getChannel(String beuid) {
		// TODO Auto-generated method stub
		BE_ChannelVo vo = null;
		SqlSession session = factory.openSession();
		vo = session.selectOne("channel.getChannel", beuid);
		session.close();
		return vo;
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
		re = session.insert("notice.update", nvo);
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

	public static Be_NoticeVo selectNotice(int noticeNum) {
		Be_NoticeVo n = null;
		HashMap map = new HashMap();
		map.put("noticenum", noticeNum);
		SqlSession session = factory.openSession();
		n = session.selectOne("notice.getNotice", map);
		session.close();
		return n;
	}
	public static int insertQna(Be_QnaVo qvo) {
		int re = -1;
		SqlSession session = factory.openSession();
		System.out.println(qvo.toString());
		re = session.insert("qna.insert", qvo);
		System.out.println(re);
		session.commit();
		session.close();
		return re;
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
	
	public static List<Be_RankingVo> listRanking() {
		SqlSession session = factory.openSession();
		List<Be_RankingVo> list = session.selectList("ranking.listRanking");
		session.close();
		return list;
	}
	
	public static List<Be_RankingVo> selectRanking() {
	SqlSession session = factory.openSession();
	List<Be_RankingVo> list = session.selectList("ranking.getselct");
	System.out.println(list);
	session.close();
	return list;
	}
	
	public static List<BE_Sub_ListVo> list_sub(String sbeuid) {
		List<BE_Sub_ListVo> list = null;
		HashMap map = new HashMap();
		map.put("sbeuid", sbeuid);
		SqlSession session = factory.openSession();
		list = session.selectList("sub.list_sub", map);
		session.close();
		return list;
	}

	public static List<BE_AuctionListVo> getAuctionList(String beuid) {
		// TODO Auto-generated method stub
		List<BE_AuctionListVo> list = null;
		SqlSession session = factory.openSession();
		list = session.selectList("product.auctionList",beuid);
		return list;
	}

	 

}
