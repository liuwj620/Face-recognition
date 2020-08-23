package com.facecom.common.utils;

import java.util.ArrayList;

public class QpsLimit {
	/**
	 * 请求时间窗口
	 */
	private static ArrayList<Long> accessTime=new ArrayList<Long>();
	/**
	 * 并发数
	 */
	private static ArrayList<Long> accTime=new ArrayList<Long>();
	/**
	 * 请求次数
	 */
	private static int limit;
	/**
	 * 并发请求次数
	 */
	private static int limits;
	/**
	 * 指向最早请求时间的位置
	 */
	private static int curPosition;
	/**
	 * 时间间隔
	 */
	private static long period; 
	
	/**
	 * 返回time(秒)时间范围内的请求次数
	 * @param time
	 * @return
	 */
	public static int qpsIng(int time) {
		int qps=0;
		long totalMilliSeconds = System.currentTimeMillis();
        long curTime = totalMilliSeconds / 1000;
		accessTime.add(curTime);
		limit++;
		//System.out.println("请求次数"+limit);
		if(accessTime.size()>2) {
			int second=(int) (accessTime.get(accessTime.size()-1)-accessTime.get(0));
			if(second>=time) {
				qps=limit;
				limit=0;
				accessTime.clear();
			}
		}
		return qps;
	}
	
	/**
	 * 返回2秒时间范围内的请求次数
	 * @param time
	 * @return
	 */
	public static int qpsIngOne() {
		int qps=0;
		long totalMilliSeconds = System.currentTimeMillis();
        long curTime = totalMilliSeconds / 1000;
		accTime.add(curTime);
		limits++;
		//System.out.println("请求次数"+limit);
		if(accTime.size()>2) {
			int second=(int) (accTime.get(accTime.size()-1)-accTime.get(0));
			if(second>=2) {
				qps=limits;
				limits=0;
				accTime.clear();
			}
		}
		return qps;
	}
}
