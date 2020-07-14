package com.unisco.utils;

import lombok.extern.java.Log;
import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.UUID;

@Log
public class FileUtils {
    //Save the uploaded file to this folder
    private static String UPLOADED_FOLDER = "F:/upload/";
    public static void uploadFile(MultipartFile fileupload) {
        try{
            File directory = new File(UPLOADED_FOLDER);
            File file = new File(UPLOADED_FOLDER+ fileupload.getOriginalFilename());
            String fileName = fileupload.getOriginalFilename();
            if(!directory.exists()){
                directory.mkdir();
            }
            if(file.exists()){
                fileName = fileName.split("\\.")[0] +  "-" + UUID.randomUUID().toString() + "." + fileName.split("\\.")[1];
            }
            String uploadFilePath = UPLOADED_FOLDER + fileName;
            byte[] bytes = fileupload.getBytes();
            Path path = Paths.get(uploadFilePath);
            Files.write(path, bytes);
        }catch (IOException e){
            log.info("upload file error");
        }
    }
}
