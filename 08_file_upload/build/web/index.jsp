<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Upload a file</h1>
        <form action="process_upload.jsp" method="post" enctype="multipart/form-data">
            <p>Select a file to upload:</p>
            <input type="file" name="file" size="50">
            <input type="submit" value="Upload!">
        </form>
    </body>
</html>
