package Parsing;

import java.io.BufferedReader;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;

public class Parsing {
	//25�� ��ġ��
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
				
				if(!(str[0].contains("����Ư����"))) {
					continue;
				} else {
					
					if(str[0].contains("������")) {
						gangnam.add(line);
					}
					if(str[0].contains("������")) {
						gangdong.add(line);
					}
					if(str[0].contains("���ϱ�")) {
						gangbuk.add(line);
					}
					if(str[0].contains("������")) {
						gangseo.add(line);
					}
					if(str[0].contains("���Ǳ�")) {
						gwanak.add(line);
					}
					if(str[0].contains("������")) {
						gwangJin.add(line);
					}
					if(str[0].contains("���α�")) {
						guro.add(line);
					}
					if(str[0].contains("��õ��")) {
						guemcheon.add(line);
					}
					if(str[0].contains("�����")) {
						nowon.add(line);
					}
					if(str[0].contains("������")) {
						dobong.add(line);
					}
					if(str[0].contains("���빮��")) {
						dongdaemun.add(line);
					}
					if(str[0].contains("���۱�")) {
						dongjak.add(line);
					}
					if(str[0].contains("������")) {
						mapo.add(line);
					}
					if(str[0].contains("���빮��")) {
						seodaemun.add(line);
					}
					if(str[0].contains("���ʱ�")) {
						seocho.add(line);
					}
					if(str[0].contains("������")) {
						seongdong.add(line);
					}
					if(str[0].contains("���ϱ�")) {
						seongbuk.add(line);
					}
					if(str[0].contains("���ı�")) {
						songpa.add(line);
					}
					if(str[0].contains("��õ��")) {
						yangcheon.add(line);
					}
					if(str[0].contains("��������")) {
						yeongdeungpo.add(line);
					}
					if(str[0].contains("��걸")) {
						yongsan.add(line);
					}
					if(str[0].contains("����")) {
						eunpyeong.add(line);
					}
					if(str[0].contains("���α�")) {
						jongro.add(line);
					}
					if(str[0].contains("�߱�")) {
						junggu.add(line);
					}
					if(str[0].contains("�߶���")) {
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