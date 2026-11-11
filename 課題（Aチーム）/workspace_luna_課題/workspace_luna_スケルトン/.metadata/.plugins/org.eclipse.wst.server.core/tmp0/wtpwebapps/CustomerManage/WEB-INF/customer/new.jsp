
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<jsp:useBean class="user.UserBean" id="user" scope="session" />

<!DOCTYPE html>
<html lang="ja">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>顧客管理</title>

    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/style.css">
</head>
<body>
    <h1>顧客管理</h1>
    <div class="main">
    <h2>新規登録</h2>
        <form name="form1"
              action="${pageContext.request.contextPath}/CustomerServlet"
              method="post"
              onsubmit="return funcConfirm();">

            <table>
                <tr>
                    <td class="title">
                        <label for="name">氏名</label>
                    </td>
                    <td>
                        <input type="text"id="name"name="name"maxlength="20">
                    </td>
                </tr>

                <tr>
                    <td class="title">
                        <label for="zip">郵便番号</label>
                    </td>
                    <td>
                        <input type="text"id="zip"name="zip"maxlength="20">
                    </td>
                </tr>

                <tr>
                    <td class="title">
                        <label for="address1">住所1</label>
                    </td>
                    <td>
                        <input type="text"id="address1"name="address1"maxlength="100">
                    </td>
                </tr>

                <tr>
                    <td class="title">
                        <label for="address2">住所2</label>
                    </td>
                    <td>
                        <input type="text"id="address2"name="address2"maxlength="100">
                    </td>
                </tr>

                <tr>
                    <td class="title">
                        <label for="tel">TEL</label>
                    </td>
                    <td>
                        <input type="tel"id="tel"name="tel"maxlength="20">
                    </td>
                </tr>

                <tr>
                    <td class="title">
                        <label for="fax">FAX</label>
                    </td>
                    <td>
                        <input type="tel"id="fax"name="fax"maxlength="20">
                    </td>
                </tr>

                <tr>
                    <td class="title">
                        <label for="email">E-mail</label>
                    </td>
                    <td>
                        <input type="email"id="email"name="email"maxlength="100">
                    </td>
                </tr>
            </table>

            <p>
                <button type="submit" name="state" value="new_confirm">送信</button>
                <button type="button" onclick="history.back()"> 戻る</button>
            </p>
        </form>
    </div>

    <script>
    function funcConfirm() {
        // TODO バリデーションチェック･alertダイアログ処理
            const form = document.forms["form1"];

            if (form.name.value == "") {
                alert("氏名が入力されていません。");
                return false;
            }
            if (!/^\d{3}\-\d{4}$/.test(form.zip.value)) {
                alert("郵便番号は半角数字3桁、ハイフン、半角数字4桁の順番で入力してください。");
                return false;
            }
            if (form.address1.value == "") {
                alert("住所1が入力されていません。");
                return false;
            }
            if (!/^(?:[0-9]{4}-[0-9]{2}-[0-9]{4}|[0-9]{3}-[0-9]{3}-[0-9]{4}|[0-9]{2}-[0-9]{4}-[0-9]{4})$/.test(form.tel.value)) {
                alert("電話番号は半角数字とハイフンで入力してください。");
                return false;

            }
            if ((form.fax.value != "") && (!/^(?:[0-9]{4}-[0-9]{2}-[0-9]{4}|[0-9]{3}-[0-9]{3}-[0-9]{4}|[0-9]{2}-[0-9]{4}-[0-9]{4})$/.test(form.fax.value))) {
                alert("FAXは半角数字とハイフンで入力してください。");
                return false;
            }
            if (form.email.value == "") {
                alert("E-mailが入力されていません。");
                return false;
            }

            return true;

        }
    </script>
</body>
</html>
