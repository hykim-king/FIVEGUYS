package com.pcwk.ehr;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.FileOutputStream;
import java.io.FileWriter;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;

public class apiTest {
    public static void main(String[] args) throws IOException {
        String result = "";
        StringBuilder urlBuilder = new StringBuilder("http://apis.data.go.kr/1471000/DrbEasyDrugInfoService/getDrbEasyDrugList"); /* URL */
        urlBuilder.append("?" + URLEncoder.encode("serviceKey", "UTF-8")
                + "=7g5vSz6O7oF1oyMa%2FdCiUUwmaRA10IlVnv0qa4qOrdUJmiHzR2eMi5upWITgkX2DM6F4FwiSn1mkFa9iVFBDcA%3D%3D"); /*
                                                                                                                            * Service
                                                                                                                            * Key
                                                                                                                            */
        urlBuilder.append("&" + URLEncoder.encode("pageNo", "UTF-8") + "=" + URLEncoder.encode("1", "UTF-8")); /* 페이지번호 */
        urlBuilder.append("&" + URLEncoder.encode("numOfRows", "UTF-8") + "=" + URLEncoder.encode("100", "UTF-8")); /* 한 페이지 결과 수 */
        urlBuilder.append("&" + URLEncoder.encode("entpName", "UTF-8") + "=" + URLEncoder.encode("", "UTF-8")); /* 업체명 */
        urlBuilder.append("&" + URLEncoder.encode("itemName", "UTF-8") + "=" + URLEncoder.encode("", "UTF-8")); /* 제품명 */
        urlBuilder.append("&" + URLEncoder.encode("itemSeq", "UTF-8") + "=" + URLEncoder.encode("", "UTF-8")); /* 품목기준코드 */
        urlBuilder.append("&" + URLEncoder.encode("efcyQesitm", "UTF-8") + "=" + URLEncoder.encode("", "UTF-8")); /* 이 약의 효능은 무엇입니까? */
        urlBuilder.append("&" + URLEncoder.encode("useMethodQesitm", "UTF-8") + "=" + URLEncoder.encode("", "UTF-8")); /* 이 약은 어떻게 사용합니까? */
        urlBuilder.append("&" + URLEncoder.encode("atpnWarnQesitm", "UTF-8") + "=" + URLEncoder.encode("", "UTF-8")); /* 이 약을 사용하기 전에 반드시 알아야 할 내용은 무엇입니까? */
        urlBuilder.append("&" + URLEncoder.encode("atpnQesitm", "UTF-8") + "=" + URLEncoder.encode("", "UTF-8")); /* 이 약의 사용상 주의사항은 무엇입니까? */
        urlBuilder.append("&" + URLEncoder.encode("intrcQesitm", "UTF-8") + "=" + URLEncoder.encode("", "UTF-8")); /* 이 약을 사용하는 동안 주의해야 할 약 또는 음식은 무엇입니까? */
        urlBuilder.append("&" + URLEncoder.encode("seQesitm", "UTF-8") + "=" + URLEncoder.encode("", "UTF-8")); /* 이 약은 어떤 이상반응이 나타날 수 있습니까? */
        urlBuilder.append("&" + URLEncoder.encode("depositMethodQesitm", "UTF-8") + "=" + URLEncoder.encode("", "UTF-8")); /* 이 약은 어떻게 보관해야 합니까? */
        urlBuilder.append("&" + URLEncoder.encode("openDe", "UTF-8") + "=" + URLEncoder.encode("", "UTF-8")); /* 공개일자 */
        urlBuilder.append("&" + URLEncoder.encode("updateDe", "UTF-8") + "=" + URLEncoder.encode("", "UTF-8")); /* 수정일자 */
        urlBuilder.append("&" + URLEncoder.encode("type", "UTF-8") + "=" + URLEncoder.encode("json", "UTF-8")); /* 응답데이터 형식(xml/json) Default:xml */
        URL url = new URL(urlBuilder.toString());
        System.out.println(url);
        HttpURLConnection conn = (HttpURLConnection) url.openConnection();
        conn.setRequestMethod("GET");
        conn.setRequestProperty("Content-type", "application/json");
        System.out.println("Response code: " + conn.getResponseCode());
        BufferedReader rd;
        rd = new BufferedReader(new InputStreamReader(url.openStream(), "UTF-8"));
        result = rd.readLine();
        if (conn.getResponseCode() >= 200 && conn.getResponseCode() <= 300) {
            rd = new BufferedReader(new InputStreamReader(conn.getInputStream()));
        } else {
            rd = new BufferedReader(new InputStreamReader(conn.getErrorStream()));
        }
        StringBuilder sb = new StringBuilder();
        String line;
        while ((line = rd.readLine()) != null) {
            sb.append(line);
        }
        rd.close();

        conn.disconnect();
        System.out.println(sb.toString());

        // Save sb content to CSV file
        BufferedWriter writer = new BufferedWriter(new OutputStreamWriter(new FileOutputStream("sbData.csv"), "UTF-8"));
        writer.write(sb.toString());
        writer.close();
        System.out.println("sbData.csv file has been created successfully.");
    }
}
