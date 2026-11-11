<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<jsp:useBean class="user.UserBean" id="user" scope="session" />
<jsp:useBean class="customer.CustomerBean" id="customer" scope="session" />
<!doctype html>
<html>
<head>
<title>顧客管理</title>
<link rel="stylesheet"
    href="${pageContext.request.contextPath}/style.css">
</head>
<body>
    <h1>顧客管理</h1>
    <div class="main">
    <h2>入力の確認</h2>
    <form name="form1" action="${pageContext.request.contextPath}/CustomerServlet" method="post">
    <table>
             <tr>
               <td class="title">氏名 </td>
                <td class="left"><%=customer.getName()%></td>
             </tr>
             <tr>
                <td class="title">郵便番号</td>
                <td class="left"><%=customer.getZip()%></td>
             </tr>
             <tr>
                <td class="title">住所1</td>
                <td class="left"><%=customer.getAddress1()%></td>
             </tr>
             <tr>
                <td class="title">住所2</td>
                <td class="left"><%=customer.getAddress2()%></td>
             </tr>
             <tr>
                <td class="title">TEL</td>
                <td class="left"><%=customer.getTel()%></td>
             </tr>
             <tr>
               <td class="title">FAX</td>
                <td class="left"><%=customer.getFax()%></td>
             </tr>
             <tr>
                <td class="title">E-mail</td>
                <td class="left"><%=customer.getEmail()%></td>
             </tr>
        </table>
        <p>
        <button type="submit" name="state" value="add">OK</button>
        <input type="button" value="戻る" onclick="history.back()">
        </p>
    </form>
    </div>
</body>
</html>
