<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<!----------------Head 시작----------------------->

<head>
    <title>챌린지 리스트</title>
    <!--head.html Include-->
    <jsp:include page="../../../commons/head.jsp"/>
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
            <jsp:include page="../../../commons/header.jsp"/>
            <!------------------Header Wrapper : 메뉴 탭 시작------------------>
            <!--menu.html Include-->
            <jsp:include page="../../../commons/menu_main.jsp"/>
            <!------------------Header Wrapper : 메뉴 탭 종료------------------>
            <!--컨테이너 시작-->
            <div class="d-flex flex-row flex-column-fluid container">
                <!--contents.html Include-->
                <!--begin::Content Wrapper 내용물 시작-->
                <div class="main d-flex flex-column flex-row-fluid">
                    <!--Subheader : 서브헤더 페이지 제목란 시작-->
                    <div class="subheader py-2 py-lg-6" id="kt_subheader">
                        <div
                                class="w-100 d-flex align-items-center justify-content-between flex-wrap flex-sm-nowrap">
                            <!--begin::Info-->
                            <div class="d-flex align-items-center flex-wrap mr-1">
                                <!--begin::Page Heading-->
                                <div class="d-flex align-items-baseline flex-wrap mr-5">
                                    <!--Page Title : 페이지 제목 시작-->
                                    <h5 class="text-dark font-weight-bold my-1 mr-5">프로젝트 찾기</h5>
                                    <!--Page Title : 페이지 제목 종료-->
                                    <!--Breadcrumb : 로드맵 시작-->
                                    <ul
                                            class="breadcrumb breadcrumb-transparent breadcrumb-dot font-weight-bold p-0 my-2 font-size-sm">
                                        <li class="breadcrumb-item">
                                            <a href="" class="text-muted">프로젝트</a>
                                        </li>
                                        <li class="breadcrumb-item">
                                            <a href="" class="text-muted">카테고리2</a>
                                        </li>
                                    </ul>
                                    <!--Breadcrumb : 로드맵 종료-->
                                </div>
                                <!--end::Page Heading-->
                            </div>
                            <!--end::Info-->

                        </div>
                    </div>
                    <!--Subheader : 서브헤더 페이지 제목란 종료-->
                    <div class="content flex-column-fluid" id="kt_content">
                        <!--대시보드 시작-->

                        <!--풀 사이즈 카드 시작 / 카드 필요 없으면 여기서부터 밀기☆-->
                        <div class="card card-custom gutter-b card-stretch">

                            <!--카드 Body 시작-->
                            <div class="card-header border-0 pt-5 card-body mt-5">
                                <!-----------------------------------------------이 안에서 자유롭게 채우기------------------------------------------------------>

                                <div class="studylist-header-chal">
                                    <!--스터디리스트 헤더 주황색 부분-->
                                    <h1>챌린지 팀원 찾기</h1>
                                    <h3>인생을 바꿀 습관을 만들어 보세요!삼삼오오가 도와드립니다</h3>
                                </div>

                                <div class="studylist-nav">
                                    <!--스터디리스트 중간 로고 박힌 네비 부분-->

                                    <div class="dropdown-to-sort">


                                        <div class="dropdown-label">유형 : </div>

                                        <div class="dropdown">
                                            <button class="btn btn-secondary dropdown-toggle" type="button"
                                                     data-toggle="dropdown" aria-haspopup="true"
                                                    aria-expanded="false">
                                                유형을 선택해 주세요
                                            </button>
                                            <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                                                <a class="dropdown-item" href="#">유형1</a>
                                                <a class="dropdown-item" href="#">유형2</a>
                                                <a class="dropdown-item" href="#">유형3</a>
                                            </div>
                                        </div>

                                        <div class="dropdown-label">지역 : </div>

                                        <div class="dropdown">
                                            <button class="btn btn-secondary dropdown-toggle" type="button"
                                                    data-toggle="dropdown" aria-haspopup="true"
                                                    aria-expanded="false">
                                                시도
                                            </button>
                                            <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                                                <a class="dropdown-item" href="#">서울특별시</a>
                                                <a class="dropdown-item" href="#">경기도</a>
                                                <a class="dropdown-item" href="#">온라인</a>
                                            </div>
                                        </div>
                                        <div class="dropdown">
                                            <button class="btn btn-secondary dropdown-toggle" type="button"
                                                    data-toggle="dropdown" aria-haspopup="true"
                                                    aria-expanded="false">
                                                시군구
                                            </button>
                                            <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                                                <a class="dropdown-item" href="#">시군구1</a>
                                                <a class="dropdown-item" href="#">시군구2</a>
                                                <a class="dropdown-item" href="#">시군구3</a>
                                            </div>
                                        </div>


                                    </div>

                                </div>

                                <div class="studylist-sort">
                                    <!--스터디리스트 버튼 있는 부분-->
                                    <div class="left-items">최신순</div>
                                    <div class="left-items">인기순</div>
                                    <div class="right-items">
                                        <input type="checkbox" id="closedException" name="closedException"
                                               style="zoom:1.3;">
                                        <label for="closedException">마감 제외</label>
                                    </div>
                                </div>

                                <div class="studylist-content-wrapper">
                                    <!--내용 wrapper-->


                                    <ul class="studylist-content-ul">
                                        <li class="studylist-content">
                                            <p class="studylist-content-title">[잇들] 퇴근후 it서적 독서모임에 초대합니다</p>

                                            <ul class="studylist-content-info">
                                                <li><span class="span-sido">서울시 강남구 </span> 의,</li>
                                                <li><span class="span-cate">자기계발 </span></li>
                                            </ul>

                                            <ul class="studylist-hitAndRepl">
                                                <li><img src="../../../../resources/assets/image/repl.png" width="15px"></li>
                                                <li>2</li>
                                                <li><img src="../../../../resources/assets/image/hit.png" width="15px"></li>
                                                <li>30</li>
                                            </ul>
                                        </li>

                                        <li class="studylist-content">
                                            <p class="studylist-content-title">공부시간인증</p>

                                            <ul class="studylist-content-info">
                                                <li><span class="span-sido">온라인 모임 </span> 의,</li>
                                                <li><span class="span-cate">자기계발 </span></li>
                                            </ul>

                                            <ul class="studylist-hitAndRepl">
                                                <li><img src="../../../../resources/assets/image/repl.png" width="15px"></li>
                                                <li>2</li>
                                                <li><img src="../../../../resources/assets/image/hit.png" width="15px"></li>
                                                <li>30</li>
                                            </ul>
                                        </li>

                                        <li class="studylist-content">test</li>
                                        <li class="studylist-content">test</li>
                                        <li class="studylist-content">test</li>
                                        <li class="studylist-content">test</li>
                                        <li class="studylist-content">test</li>
                                        <li class="studylist-content">test</li>
                                        <li class="studylist-content">test</li>
                                        <li class="studylist-content">test</li>
                                    </ul>

                                </div>









                                <!----------------------------------------------------------------------------------------------------------------------------->
                            </div>
                            <!--카드 Body 종료-->
                        </div>
                        <!--풀 사이즈 카드 종료 / 카드 필요 없으면 여기서까지 밀기☆-->



                        <!--대시보드 종료-->
                    </div>
                    <!--end::Content-->
                </div>
                <!--end::Content Wrapper 내용물 종료-->
            </div>
            <!--컨테이너 종료-->
            <!--footer.html Include-->
            <jsp:include page="../../../commons/footer.jsp"/>
</body>
<!----------------Body 종료----------------------->

</html>