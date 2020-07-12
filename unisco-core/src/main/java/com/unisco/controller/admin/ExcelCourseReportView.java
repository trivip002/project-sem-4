package com.unisco.controller.admin;

import com.unisco.entity.CategoryEntity;
import com.unisco.entity.CourseEntity;
import com.unisco.entity.UserEntity;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.usermodel.Workbook;
import org.springframework.web.servlet.view.document.AbstractXlsView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.List;
import java.util.Map;
import java.util.Set;

public class ExcelCourseReportView extends AbstractXlsView {
    @Override
    protected void buildExcelDocument(Map<String, Object> map, Workbook workbook, HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse) throws Exception {
        httpServletResponse.setHeader("Content-disposition", "attachment; filename=\"course_list.xls\"");

        List<CourseEntity> list = (List<CourseEntity>) map.get("courseList");

        Sheet sheet = workbook.createSheet("Course List");

        Row header = sheet.createRow(0);
        header.createCell(0).setCellValue("ID");
        header.createCell(1).setCellValue("NAME");
        header.createCell(2).setCellValue("CATEGORY");
        header.createCell(3).setCellValue("LANGUAGE");
        header.createCell(4).setCellValue("PRICE");
        header.createCell(5).setCellValue("STATUS");

        int rowNum = 1;

        for (CourseEntity course : list) {
            Row row = sheet.createRow(rowNum++);
            Set<CategoryEntity> cate = course.getCategory();
            StringBuilder cateName = new StringBuilder();
            for (CategoryEntity c : cate) {
                cateName.append("|").append(c.getCateName());
            }
            row.createCell(0).setCellValue(course.getCourseId());
            row.createCell(1).setCellValue(course.getCourseName());
            row.createCell(2).setCellValue(cateName.toString());
            row.createCell(3).setCellValue(course.getCourseLanguage());
            row.createCell(4).setCellValue(course.getCoursePrice());
            row.createCell(5).setCellValue(course.getIsActive()==1?"Active":"Inactive");
        }
    }
}
