package com.unisco.utils;

import net.sourceforge.stripes.util.Base64;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;

public class FileUtils {
    //Save the uploaded file to this folder
    private static String UPLOADED_FOLDER = "F:/image/";
    public static void writeOrUpdateFileByBase64(String base64, String name) {
        FileOutputStream outputStream = null;
        try {
            String location = UPLOADED_FOLDER + name;
            File file = new File(location);
            if (file.exists()) {
                file.delete();
            }
            outputStream = new FileOutputStream(location);
            byte[] decodedByte = Base64.decode(base64.split(",")[1]);
            outputStream.write(decodedByte);
        } catch (IOException e) {
            System.out.println("error");
        } finally {
            try {
                if (outputStream != null)
                    outputStream.close();
            } catch (IOException e) {
                System.out.println("error");
            }
        }
    }
}
