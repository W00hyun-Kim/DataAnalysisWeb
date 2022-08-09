package Parsing;

import java.io.BufferedReader;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;

public class Parsing {
	//25개 자치구
	public static ArrayList<String> gangnam = new ArrayList<String>();
	public static ArrayList<String> gangdong = new ArrayList<String>();
	public static ArrayList<String> gangbuk = new ArrayList<String>();
	public static ArrayList<String> gangseo = new ArrayList<String>();
	public static ArrayList<String> gwanak = new ArrayList<String>();
	public static ArrayList<String> gwangJin = new ArrayList<String>();
	public static ArrayList<String> guro = new ArrayList<String>();
	public static ArrayList<String> guemcheon = new ArrayList<String>();
	public static ArrayList<String> nowon = new ArrayList<String>();
	public static ArrayList<String> dobong = new ArrayList<String>();
	public static ArrayList<String> dongdaemun = new ArrayList<String>();
	public static ArrayList<String> dongjak = new ArrayList<String>();
	public static ArrayList<String> mapo = new ArrayList<String>();
	public static ArrayList<String> seodaemun = new ArrayList<String>();
	public static ArrayList<String> seocho = new ArrayList<String>();
	public static ArrayList<String> seongdong = new ArrayList<String>();
	public static ArrayList<String> seongbuk = new ArrayList<String>();
	public static ArrayList<String> songpa = new ArrayList<String>();
	public static ArrayList<String> yangcheon = new ArrayList<String>();
	public static ArrayList<String> yeongdeungpo = new ArrayList<String>();
	public static ArrayList<String> yongsan = new ArrayList<String>();
	public static ArrayList<String> eunpyeong = new ArrayList<String>();
	public static ArrayList<String> jongro = new ArrayList<String>();
	public static ArrayList<String> junggu = new ArrayList<String>();
	public static ArrayList<String> jungrang = new ArrayList<String>();
	
	public void parsing(String fileName) {
//	public static void main(String[] args) {
//		PrintCity printcity = new PrintCity();
//		CsvFileWriter fw = new CsvFileWriter();
		
		String temp = "";
		try {
			BufferedReader br = new BufferedReader(new FileReader(fileName));
			String line;
			while ((line = br.readLine()) != null) {
								
				String[] str = line.split(",");	
//				System.out.println(Arrays.toString(str));
				
				if(!(str[0].contains("서울특별시"))) {
					continue;
				} else {
					
					if(str[0].contains("강남구")) {
						gangnam.add(line);
					}
					if(str[0].contains("강동구")) {
						gangdong.add(line);
					}
					if(str[0].contains("강북구")) {
						gangbuk.add(line);
					}
					if(str[0].contains("강서구")) {
						gangseo.add(line);
					}
					if(str[0].contains("관악구")) {
						gwanak.add(line);
					}
					if(str[0].contains("광진구")) {
						gwangJin.add(line);
					}
					if(str[0].contains("구로구")) {
						guro.add(line);
					}
					if(str[0].contains("금천구")) {
						guemcheon.add(line);
					}
					if(str[0].contains("노원구")) {
						nowon.add(line);
					}
					if(str[0].contains("도봉구")) {
						dobong.add(line);
					}
					if(str[0].contains("동대문구")) {
						dongdaemun.add(line);
					}
					if(str[0].contains("동작구")) {
						dongjak.add(line);
					}
					if(str[0].contains("마포구")) {
						mapo.add(line);
					}
					if(str[0].contains("서대문구")) {
						seodaemun.add(line);
					}
					if(str[0].contains("서초구")) {
						seocho.add(line);
					}
					if(str[0].contains("성동구")) {
						seongdong.add(line);
					}
					if(str[0].contains("성북구")) {
						seongbuk.add(line);
					}
					if(str[0].contains("송파구")) {
						songpa.add(line);
					}
					if(str[0].contains("양천구")) {
						yangcheon.add(line);
					}
					if(str[0].contains("영등포구")) {
						yeongdeungpo.add(line);
					}
					if(str[0].contains("용산구")) {
						yongsan.add(line);
					}
					if(str[0].contains("은평구")) {
						eunpyeong.add(line);
					}
					if(str[0].contains("종로구")) {
						jongro.add(line);
					}
					if(str[0].contains("중구")) {
						junggu.add(line);
					}
					if(str[0].contains("중랑구")) {
						jungrang.add(line);
					}
				}
			} //while
			

//			fw.csv();
			
						
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}
 
 
}