<%--
  Created by IntelliJ IDEA.
  User: bitcamp
  Date: 2021-11-05
  Time: 오후 3:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<!--
Template Name: Metronic - Bootstrap 4 HTML, React, Angular 10 & VueJS Admin Dashboard Theme
Author: KeenThemes
Website: http://www.keenthemes.com/
Contact: support@keenthemes.com
Follow: www.twitter.com/keenthemes
Dribbble: www.dribbble.com/keenthemes
Like: www.facebook.com/keenthemes
Purchase: https://1.envato.market/EA4JP
Renew Support: https://1.envato.market/EA4JP
License: You must have a valid license purchased only from themeforest(the above link) in order to legally use the theme for your project.
-->
<html lang="en">
<!----------------Head 시작----------------------->

<head>
    <title>스터디 내 게시판</title>
    <!--head.html Include-->
    <jsp:include page="/WEB-INF/commons/head.jsp"></jsp:include>
</head>

<!----------------Head 종료----------------------->
<!----------------Body 시작----------------------->


<body id="kt_body" class="header-fixed subheader-enabled page-loading">
<!----------------메인 시작----------------------->
<div class="d-flex flex-column flex-root">
    <!----------------페이지 시작----------------------->
    <div class="d-flex flex-row flex-column-fluid page">
        <!--begin::Wrapper-->
        <div class="d-flex flex-column flex-row-fluid wrapper" id="kt_wrapper">
            <!------------------header.html Include------------------>
            <jsp:include page="/WEB-INF/commons/header.jsp"></jsp:include>
            <!------------------Header Wrapper : 메뉴 탭 시작------------------>
            <!--menu.html Include-->
            <jsp:include page="/WEB-INF/commons/menu_main.jsp"></jsp:include>
            <!------------------Header Wrapper : 메뉴 탭 종료------------------>
            <!--컨테이너 시작-->
            <div class="d-flex flex-row flex-column-fluid container">

                <table class="table">
                    <thead>
                    <tr>
                        <td>
                <span class="label label-inline label-light-primary font-weight-bold">
                    #
                </span>
                        </td>
                        <td>
                <span class="label label-inline label-light-primary font-weight-bold">
                    카테고리
                </span>
                    </td>
                        <td>
                <span class="label label-inline label-light-primary font-weight-bold">
                    제목
                </span>
                        </td>
                        <td>
                <span class="label label-inline label-light-primary font-weight-bold">
                    내용
                </span>
                        </td>                        <td>
                <span class="label label-inline label-light-primary font-weight-bold">
                    닉네임
                </span>
                    </td>
                        <td>
                <span class="label label-inline label-light-primary font-weight-bold">
                    작성일자
                </span>
                        </td>
                    </tr>
                    </thead>
                    <tbody>
                    <tr>
                        <th scope="row">${contNo}</th>
                        <td>${title}</td>
                        <td>${cont}</td>
                        <td>${nickName}</td>
                        <td>${writeDate}</td>
                        <td>
                <span class="label label-inline label-light-primary font-weight-bold">
                    ${writeDate}
                </span>
                        </td>
                    </tr><tr>
                        <th scope="row">2</th>
                        <td>카테고리</td>
                        <td>제목</td>
                        <td>내용</td>
                        <td>닉네임</td>
                        <td>작성일자</td>
                        <td>

                        </td>
                    </tr><tr>
                        <th scope="row">${contNo}</th>
                        <td>${title}</td>
                        <td>${cont}</td>
                        <td>${nickName}</td>
                        <td>${writeDate}</td>
                        <td>
                <span class="label label-inline label-light-primary font-weight-bold">
                    작성일자
                </span>
                        </td>
                    </tr>
                    <tr>
                        <th scope="row">2</th>
                        <td>Ana</td>
                        <td>Jacobs</td>
                        <td>
                <span class="label label-inline label-light-success font-weight-bold">
                    Approved
                </span>
                        </td>
                    </tr>
                    <tr>
                        <th scope="row">3</th>
                        <td>Larry</td>
                        <td>Pettis</td>
                        <td>
                <span class="label label-inline label-light-danger font-weight-bold">
                    New
                </span>
                        </td>
                    </tr>
                    </tbody>
                </table>
            </div>
            <!--컨테이너 종료-->
            <!--footer.html Include-->
            <jsp:include page="/WEB-INF/commons/footer.jsp"></jsp:include>
</body>
<!----------------Body 종료----------------------->

</html>