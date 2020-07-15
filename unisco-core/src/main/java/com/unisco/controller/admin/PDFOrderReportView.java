package com.unisco.controller.admin;

import com.lowagie.text.Document;
import com.lowagie.text.PageSize;
import com.lowagie.text.Paragraph;
import com.lowagie.text.Table;
import com.lowagie.text.pdf.PdfWriter;
import com.unisco.entity.OrderEntity;
import org.springframework.web.servlet.view.document.AbstractPdfView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.List;
import java.util.Map;

public class PDFOrderReportView extends AbstractPdfView {
    @Override
    protected void buildPdfDocument(Map<String, Object> map, Document document, PdfWriter pdfWriter, HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse) throws Exception {

        httpServletResponse.setHeader("Content-Disposition", "attachment; filename=\"order_list.pdf\"");

        List<OrderEntity> list = (List<OrderEntity>) map.get("orderList");

        document.add(new Paragraph("LIST OF CURRENT ORDER ON THE SITE"));
        document.add(PageSize.A4);

        Table table = new Table(5);
        float [] columnWidths = new float[] {100f, 100f, 100f, 100f, 100f};
        table.setWidths(columnWidths);
        table.addCell("USER ID");
        table.addCell("COURSE ID");
        table.addCell("ORDER NUMBER");
        table.addCell("ISSUED DATE");
        table.addCell("UNIT PRICE");

        for (OrderEntity o : list) {
            table.addCell(o.getUser().getUserId().toString());
            table.addCell(o.getCourse().getCourseId().toString());
            table.addCell(o.getOrderCode());
            table.addCell(String.valueOf(o.getCreatedDate())==null?"N/A":String.valueOf(o.getCreatedDate()));
            table.addCell(String.valueOf(o.getUnitPrice()));
        }
        document.add(table);
    }
}
