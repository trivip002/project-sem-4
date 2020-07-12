package com.unisco.controller.admin;

import com.unisco.entity.UserEntity;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.usermodel.Workbook;
import org.springframework.web.servlet.view.document.AbstractXlsView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.List;
import java.util.Map;

public class ExcelUserReportView extends AbstractXlsView {
    @Override
    protected void buildExcelDocument(Map<String, Object> map, Workbook workbook, HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse) throws Exception {
        httpServletResponse.setHeader("Content-disposition", "attachment; filename=\"user_list.xls\"");

        List<UserEntity> list = (List<UserEntity>) map.get("userList");

        Sheet sheet = workbook.createSheet("User List");

        Row header = sheet.createRow(0);
        header.createCell(0).setCellValue("ID");
        header.createCell(1).setCellValue("USERNAME");
        header.createCell(2).setCellValue("FULL NAME");
        header.createCell(3).setCellValue("E-MAIL");
        header.createCell(4).setCellValue("TELEPHONE");
        header.createCell(5).setCellValue("ADDRESS");
        header.createCell(6).setCellValue("CITY");
        header.createCell(7).setCellValue("COUNTRY");
        header.createCell(8).setCellValue("STATUS");


        int rowNum = 1;

        for(UserEntity user : list){
            Row row = sheet.createRow(rowNum++);
            row.createCell(0).setCellValue(user.getUserId());
            row.createCell(1).setCellValue(user.getUserName());
            row.createCell(2).setCellValue(user.getFullName());
            row.createCell(3).setCellValue(user.getUserEmail());
            row.createCell(4).setCellValue(user.getTelephone());
            row.createCell(5).setCellValue(user.getAddress());
            row.createCell(6).setCellValue(user.getCity());
            row.createCell(7).setCellValue(user.getCountry());
            row.createCell(8).setCellValue(user.getIsActive()==1?"Active":"Inactive");
        }
    }
}
