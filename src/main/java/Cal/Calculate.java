package Cal;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;

import Parsing.Parsing;

//거래 금액의 평균,중앙값,최댓값,최솟값,분산,표준편차

public class Calculate {
	public static Parsing parse = new Parsing();
	public static List<Integer> price = new ArrayList<Integer>();
	
//	public static void main(String[] args) {
//		
//		parse.parsing("C:\\Users\\whKim\\newWorkspace\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\LandWeb\\fileSave\\아파트(매매)__실거래가_202208081945081.csv");
//		
//		System.out.println(getAvg(parse.gangnam));
//		System.out.println(getMedian(parse.gangnam));
//		System.out.println(getMax(parse.gangnam));
//		System.out.println(getMin(parse.gangnam));
//		
//		System.out.println(getAvg(parse.gangdong));
//		System.out.println(getMedian(parse.gangdong));
//		System.out.println(getMax(parse.gangdong));
//		System.out.println(getMin(parse.gangdong));
//					
//	}
	
	//거래금액 배열에 넣기
	public static void makeArr(ArrayList<String> str) {
		price.clear();
		for (int j = 0; j < str.size(); j++) {
			
			String temp = str.get(j).replace("\",\"", "&");
			String temp2 = temp.replace("\"", "");
			String temp3 = temp.replace(",", "");
			String tmp[] = temp3.split("&");
			
			price.add(Integer.parseInt(tmp[8]));	
			
		}
	}
		
	//평균값 구하기
	public static int getAvg(ArrayList<String> str) {
		int sum = 0;
		makeArr(str);						
		for (int j = 0; j < str.size(); j++) {		
			sum += price.get(j);			
		}	
		return sum/price.size();
	}
	
	//중앙값 구하기
	public static double getMedian(ArrayList<String> str) {
		makeArr(str);		
		
		Collections.sort(price);
		int size = price.size();
		double result;
		
		if(size % 2 ==0) {
			int m = size / 2;
			int n = size /  2 - 1;
			result = Double.valueOf((price.get(m) + price.get(n))) / 2;
		} else {
			int m = size /2;
			result = price.get(m);
		}		
		return result;
	}
	
	//최대값
	public static int getMax(ArrayList<String> str) {
		makeArr(str);		
	
		int max = price.get(0);	
		int result= 0;
		for (int i = 0; i < price.size(); i++) {
			if(price.get(i) > max) {
				max = price.get(i);
			}
		}		
		result = max;
		return result;
	}
	//최소값
	public static int getMin(ArrayList<String> str) {
		makeArr(str);
		int min = price.get(0);		
		int result = 0;
		for (int i = 0; i < price.size(); i++) {
			if(price.get(i) < min) {
				min = price.get(i);
			}
		}		
		result = min;
		return result;
	}
	
//	//분산
//	public static double getVar(ArrayList<String> str) {
//		int avg = getAvg(str);
//		makeArr(str);
//		double sum = 0;
//		double var = 0;
//				
//		for (int i = 0; i < price.size(); i++) {
//			sum += Math.pow( price.get(i) - avg, 2);
//		}		
//		var = (double)sum / price.size();		
//		return var;
//	}
//	
//	
//	//표준편차
//	public static double getDev(ArrayList<String> str) {
//		makeArr(str);		
//		double var = getVar(str);		
//		return Math.sqrt(var);		
//	}
}
