<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>

<html lang="ko">
<!----------------Head 시작----------------------->

<head>
    <title>게시물 상세 페이지입니다</title>
    <!--head.html Include-->
    <jsp:include page="/WEB-INF/commons/head.jsp"></jsp:include>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-migrate/3.3.2/jquery-migrate.min.js"></script>

    <script>
        $(function () {
            console.clear();
            console.debug("제이쿼리 시작 ㅇㅇ");

            $(`#modifyBtn`).on('click', function () {
                console.log("수정 버튼 클릭");

                self.location = '/studyIns/board/detail/modify?cont_No=<c:out value="${detail.cont_No}"/>';
            }); // onclick

            $(`#removeBtn`).on('click', function () {
                console.log("삭제 버튼 클릭");

                <%--self.location = '/studyIns/board/detail/remove?cont_No=<c:out value="${detail.cont_No}"/> ';--%>
                let formObj = $('form');

                formObj.attr('method', 'POST');
                formObj.attr('action', '/studyIns/board/detail/remove');
                formObj.submit();
            }); // onclick
        }); // jq
    </script>
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
                <form action="/studyIns/board/detail/modify" method="POST">
                    <input type="hidden" name="cont_No" value="<c:out value='${detail.cont_No}' />">
                    <table style="width: 70%; border: 2px!important;">
                        <tr>
                            <th align="left" height="50px"><a href="javascript:history.back()">뒤로가기 들어갈곳</a></th>
                        </tr>
                        <tr>
                            <th style="text-align: center; font-weight: bold; font-size: 32px;height: 200px">제목 들어가는 곳${detail.title}</th>
                        </tr>
                        <tr style="height: 100px; width: 80%">
                            <td colspan="3">카테고리들어가는곳${detail.category}</td>
                            <td>${detail.hit}조회수</td>
                            <%--세션아이디와 현재글 닉네임과 동일한 경우 수정 삭제버튼 보입니다. --%>

                            <td colspan="3">
                                <button type="button" id="modifyBtn">수정</button>
                                <button type="button" id="removeBtn">삭제</button>
                            </td>

                            <%----%>
                            <td>${detail.member_Name}닉네임</td>
                        </tr>
                        <tr>
                            <th colspan="4">다운로드</th>
                            <td colspan="4"><a href="">파일이름</a></td>
                        </tr>
                        <tr style="height: 600px; width: 80%">
                            <td colspan="8">컨텐츠 내용컨텐츠 내용컨텐츠 내용컨텐츠 내용컨텐츠 내용컨텐츠 내용컨텐츠 내용컨텐츠 내용컨텐츠 내용컨텐츠 내용컨텐츠 내용
                        </tr>
                        <tr>
                            <td> 첨부 파일</td>
                            <td>

                                파일네임

                            </td>
                        </tr>


                    </table>
                </form>
            </div>
            <%--컨테이너 종료--%>
            <!--footer.html Include-->
            <jsp:include page="/WEB-INF/commons/footer.jsp"></jsp:include>
</body>
<!----------------Body 종료----------------------->
</html>