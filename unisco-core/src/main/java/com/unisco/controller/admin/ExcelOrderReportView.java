package com.unisco.controller.admin;

import com.unisco.entity.OrderEntity;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.usermodel.Workbook;
import org.springframework.web.servlet.view.document.AbstractXlsView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.List;
import java.util.Map;

public class ExcelOrderReportView extends AbstractXlsView {
    @Override
    protected void buildExcelDocument(Map<String, Object> map, Workbook workbook, HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse) throws Exception {
        httpServletResponse.setHeader("Content-disposition", "attachment; filename=\"order_list.xls\"");

        List<OrderEntity> list = (List<OrderEntity>) map.get("orderList");

        Sheet sheet = workbook.createSheet("Order List");

        Row header = sheet.createRow(0);
        header.createCell(0).setCellValue("USER ID");
        header.createCell(1).setCellValue("COURSE ID");
        header.createCell(2).setCellValue("ORDER NUMBER");
        header.createCell(3).setCellValue("ISSUED DATE");
        header.createCell(4).setCellValue("UNIT PRICE");

        int rowNum = 1;

        for (OrderEntity o : list) {
            Row row = sheet.createRow(rowNum++);
            row.createCell(0).setCellValue(o.getUser().getUserId());
            row.createCell(1).setCellValue(o.getCourse().getCourseId());
            row.createCell(2).setCellValue(o.getOrderCode());
            row.createCell(3).setCellValue(String.valueOf(o.getCreatedDate())==null?"N/A":String.valueOf(o.getCreatedDate()));
            row.createCell(4).setCellValue(o.getUnitPrice());
        }
    }
}
