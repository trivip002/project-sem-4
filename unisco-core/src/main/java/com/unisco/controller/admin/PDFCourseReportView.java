package com.unisco.controller.admin;

import com.lowagie.text.Document;
import com.lowagie.text.PageSize;
import com.lowagie.text.Paragraph;
import com.lowagie.text.Table;
import com.lowagie.text.pdf.PdfWriter;
import com.unisco.entity.CategoryEntity;
import com.unisco.entity.CourseEntity;
import com.unisco.entity.UserEntity;
import org.springframework.web.servlet.view.document.AbstractPdfView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.List;
import java.util.Map;
import java.util.Set;

public class PDFCourseReportView extends AbstractPdfView {
    @Override
    protected void buildPdfDocument(Map<String, Object> map, Document document, PdfWriter pdfWriter, HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse) throws Exception {

        httpServletResponse.setHeader("Content-Disposition", "attachment; filename=\"course_list.pdf\"");

        List<CourseEntity> list = (List<CourseEntity>) map.get("courseList");

        document.add(new Paragraph("LIST OF CURRENT COURSE ON THE SITE"));
        document.add(PageSize.A4);

        Table table = new Table(6);
        float [] columnWidths = new float[] {20f, 150f, 100f, 60f, 60f, 60f};
        table.setWidths(columnWidths);
        table.addCell("ID");
        table.addCell("NAME");
        table.addCell("CATEGORY");
        table.addCell("LANGUAGE");
        table.addCell("PRICE");
        table.addCell("STATUS");

        for (CourseEntity course : list) {
            Set<CategoryEntity> cate = course.getCategory();
            StringBuilder cateName = new StringBuilder();
            for (CategoryEntity c : cate) {
                cateName.append("|").append(c.getCateName());
            }
            table.addCell(course.getCourseId().toString());
            table.addCell(course.getCourseName());
            table.addCell(cateName.toString());
            table.addCell(course.getCourseLanguage());
            table.addCell(String.valueOf(course.getCoursePrice()));
            table.addCell(course.getIsActive()==1?"Active":"Inactive");
        }

        document.add(table);
    }
}
