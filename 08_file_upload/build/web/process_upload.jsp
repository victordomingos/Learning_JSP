<%@page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" language="java"%>
<%@ page import="java.io.*, java.util.*" %>
<%@ page import="org.apache.commons.fileupload.*" %>
<%@ page import="org.apache.commons.fileupload.disk.*" %>
<%@ page import="org.apache.commons.fileupload.servlet.*" %>

<%
    int MAX_MEMORY_SIZE = 1024*1024*2;
    int MAX_REQUEST_SIZE = 1024*1024;

    DiskFileItemFactory factory = new DiskFileItemFactory();
    factory.setSizeThreshold(MAX_MEMORY_SIZE);
    factory.setRepository(new File(System.getProperty("java.io.tmpdir")));
    String uploadFolder = "c:\\upload-tests";
    ServletFileUpload upload = new ServletFileUpload(factory);
    upload.setSizeMax(MAX_REQUEST_SIZE);
    
    try {
        List requestItems = upload.parseRequest(request);
        for (Object i : requestItems) {
            FileItem item = (FileItem) i;
            if (!item.isFormField()) {  
                String fileName = new File(item.getName()).getName();
                String filePath = uploadFolder + File.separator + fileName;
                File uploadedFile = new File(filePath);
                item.write(uploadedFile);
            }
        }
        response.sendRedirect("upload-success.jsp");
    } catch (Exception e) {
        response.sendRedirect("upload-error.jsp");
    }
%>
