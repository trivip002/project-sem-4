package com.unisco.controller.admin;

import com.lowagie.text.Document;
import com.lowagie.text.PageSize;
import com.lowagie.text.Paragraph;
import com.lowagie.text.Table;
import com.lowagie.text.pdf.PdfWriter;
import com.unisco.entity.CategoryEntity;
import com.unisco.entity.CourseEntity;
import com.unisco.entity.PromotionEntity;
import org.springframework.web.servlet.view.document.AbstractPdfView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.List;
import java.util.Map;
import java.util.Set;

public class PDFPromoReportView extends AbstractPdfView {
    @Override
    protected void buildPdfDocument(Map<String, Object> map, Document document, PdfWriter pdfWriter, HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse) throws Exception {

        httpServletResponse.setHeader("Content-Disposition", "attachment; filename=\"promo_list.pdf\"");

        List<PromotionEntity> list = (List<PromotionEntity>) map.get("promoList");

        document.add(new Paragraph("LIST OF CURRENT PROMOTION ON THE SITE"));
        document.add(PageSize.A4);

        Table table = new Table(4);
        float [] columnWidths = new float[] {20f, 100f, 60f, 60f};
        table.setWidths(columnWidths);
        table.addCell("ID");
        table.addCell("CODE");
        table.addCell("DISCOUNT AMOUNT");
        table.addCell("STATUS");

        for (PromotionEntity promo : list) {
            table.addCell(promo.getPromotionId().toString());
            table.addCell(promo.getPromotionCode());
            table.addCell(String.valueOf(promo.getDiscountPrice()));
            table.addCell(promo.getIsActive()==1?"Active":"Inactive");
        }

        document.add(table);
    }
}
