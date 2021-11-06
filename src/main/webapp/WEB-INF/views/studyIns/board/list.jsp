<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>

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
                        </td>
                        <td>
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
                    <c:forEach items="${list}" var="list">

                        <tr>
                            <th scope="row">${list.category}</th>
                            <td>${list.title}</td>
                            <td>${list.cont}</td>
                            <td>${list.member_Name}</td>
                            <td>${list.write_Date}</td>
                            <td>

                                <span class="label label-inline label-light-primary font-weight-bold">
                                        ${list.write_Date}
                                </span>
                            </td>

                        </tr>
                    </c:forEach>
                    <tr>
                        <th scope="row">2</th>
                        <td>카테고리</td>
                        <td>제목</td>
                        <td>내용</td>
                        <td>닉네임</td>
                        <td>작성일자</td>
                        <td>

                        </td>
                    </tr>
                    <tr>
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