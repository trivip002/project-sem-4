package com.unisco.controller.admin;

import com.lowagie.text.Document;
import com.lowagie.text.PageSize;
import com.lowagie.text.Paragraph;
import com.lowagie.text.Table;
import com.lowagie.text.pdf.PdfWriter;
import com.unisco.entity.UserEntity;
import org.springframework.web.servlet.view.document.AbstractPdfView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.awt.*;
import java.util.List;
import java.util.Map;

public class PDFUserReportView extends AbstractPdfView {
    @Override
    protected void buildPdfDocument(Map<String, Object> map, Document document, PdfWriter pdfWriter, HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse) throws Exception {

        httpServletResponse.setHeader("Content-Disposition", "attachment; filename=\"user_list.pdf\"");

        List<UserEntity> list = (List<UserEntity>) map.get("userList");

        document.add(new Paragraph("LIST OF CURRENT USER ON THE SITE"));
        document.add(PageSize.A4);

        Table table = new Table(9);
        float [] columnWidths = new float[] {20f, 60f, 60f, 100f, 60f, 100f, 60f, 60f, 60f};
        table.setWidths(columnWidths);
        table.addCell("ID");
        table.addCell("USERNAME");
        table.addCell("FULL NAME");
        table.addCell("E-MAIL");
        table.addCell("TELEPHONE");
        table.addCell("ADDRESS");
        table.addCell("CITY");
        table.addCell("COUNTRY");
        table.addCell("STATUS");

        for (UserEntity user : list) {
            table.addCell(user.getUserId().toString());
            table.addCell(user.getUserName());
            table.addCell(user.getFullName());
            table.addCell(user.getUserEmail());
            table.addCell(user.getTelephone());
            table.addCell(user.getAddress());
            table.addCell(user.getCity());
            table.addCell(user.getCountry());
            table.addCell(user.getIsActive()==1?"Active":"Inactive");
        }

        document.add(table);
    }
}
