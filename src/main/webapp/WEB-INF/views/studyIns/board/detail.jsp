<%--
  Created by IntelliJ IDEA.
  User: bitcamp
  Date: 2021-11-05
  Time: 오후 3:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
    <title>게시물 작성 페이지입니다</title>
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
                <table style="width: 70%; border: 2px!important;">
                    <tr>
                        <th align="left" height="50px"><a href="javascript:history.back()">뒤로가기 들어갈곳</a></th>
                    </tr>
                    <tr>
                        <th style="text-align: center; font-weight: bold; font-size: 32px;height: 200px">제목 들어가는 곳${title}</th>
                    </tr>
                    <tr style="height: 100px; width: 80%">
                        <td colspan="3">카테고리들어가는곳${category}</td>
                        <td>조회수</td>
                        <%--세션아이디와 현재글 닉네임과 동일한 경우 수정 삭제버튼 보입니다. --%>
                        <c:if test="${sessionScope.userName==member_Name}">

                            <td colspan="3">
                                <input type="button" value="수정"/>
                                <input type="button" value="삭제"/>
                            </td>

                        </c:if>
                        <%----%>
                        <td >닉네임</td>
                    </tr>
                    <tr>
                        <th colspan="4">다운로드</th>
                        <td colspan="4"><a href="">파일이름</a> </td>
                    </tr>
                    <tr style="height: 600px; width: 80%">
                        <td colspan="8">컨텐츠 내용컨텐츠 내용컨텐츠 내용컨텐츠 내용컨텐츠 내용컨텐츠 내용컨텐츠 내용컨텐츠 내용컨텐츠 내용컨텐츠 내용컨텐츠 내용
                    </tr>
                    <tr>
                        <td> 첨부 파일</td>
                        <td>
                            <c:if test="${fileName !=null && !empty fileName}">
                                ${fileName} 파일네임
                            </c:if>
                        </td>
                    </tr>


                </table>

            </div>
            <!--컨테이너 종료-->
            <!--footer.html Include-->
            <jsp:include page="/WEB-INF/commons/footer.jsp"></jsp:include>
</body>
<!----------------Body 종료----------------------->
<script>
    // Class definition
    var KTQuilDemos = function () {

        // Private functions
        var demo1 = function () {
            var quill = new Quill('#kt_quil_1', {
                modules: {
                    toolbar: [
                        [{
                            header: [1, 2, false]
                        }],
                        ['bold', 'italic', 'underline'],
                        ['image', 'code-block']
                    ]
                },
                placeholder: 'Type your text here...',
                theme: 'snow' // or 'bubble'
            });
        }

        return {
            // public functions
            init: function () {
                demo1();
                demo2();
            }
        };
    }();

    jQuery(document).ready(function () {
        KTQuilDemos.init();
    });
</script>
</html>