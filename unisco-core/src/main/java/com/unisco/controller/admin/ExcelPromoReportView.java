package com.unisco.controller.admin;

import com.unisco.entity.CategoryEntity;
import com.unisco.entity.CourseEntity;
import com.unisco.entity.PromotionEntity;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.usermodel.Workbook;
import org.springframework.web.servlet.view.document.AbstractXlsView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.List;
import java.util.Map;
import java.util.Set;

public class ExcelPromoReportView extends AbstractXlsView {
    @Override
    protected void buildExcelDocument(Map<String, Object> map, Workbook workbook, HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse) throws Exception {
        httpServletResponse.setHeader("Content-disposition", "attachment; filename=\"promo_list.xls\"");

        List<PromotionEntity> list = (List<PromotionEntity>) map.get("promoList");

        Sheet sheet = workbook.createSheet("Promotion List");

        Row header = sheet.createRow(0);
        header.createCell(0).setCellValue("ID");
        header.createCell(1).setCellValue("CODE");
        header.createCell(2).setCellValue("DISCOUNT AMOUNT");
        header.createCell(3).setCellValue("STATUS");

        int rowNum = 1;

        for (PromotionEntity promo : list) {
            Row row = sheet.createRow(rowNum++);
            row.createCell(0).setCellValue(promo.getPromotionId());
            row.createCell(1).setCellValue(promo.getPromotionCode());
            row.createCell(2).setCellValue(promo.getDiscountPrice());
            row.createCell(3).setCellValue(promo.getIsActive()==1?"Active":"Inactive");
        }
    }
}
