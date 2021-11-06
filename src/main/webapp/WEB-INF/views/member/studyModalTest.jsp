<%--
  Created by IntelliJ IDEA.
  User: bitcamp
  Date: 2021-11-05
  Time: 오후 3:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java"%>
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
<title>studyModalTest</title>
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
			<div class="d-flex flex-column flex-row-fluid wrapper"
				id="kt_wrapper">
				<!------------------header.html Include------------------>
				<jsp:include page="/WEB-INF/commons/header.jsp"></jsp:include>
				<!------------------Header Wrapper : 메뉴 탭 시작------------------>
				<!--menu.html Include-->
				<jsp:include page="/WEB-INF/commons/menu_main.jsp"></jsp:include>
				<!------------------Header Wrapper : 메뉴 탭 종료------------------>
				<!--컨테이너 시작-->
				<div class="d-flex flex-row flex-column-fluid container">

					<!---------------- 지혜: 신청자/멤버 명단 모달창 시작 -------------------->
					<a href="#" class="btn btn-light-danger font-weight-bold"
						data-toggle="modal" data-target="#memberListModal">멤버확인</a>
					<div id="memberListModal" class="modal fade" role="dialog"
						aria-hidden="true">
						<div class="modal-dialog modal-xl">
							<div class="modal-content" style="min-height: 590px;">
								<div class="modal-header py-5" id="studyMemberTab">
									<h5 class="modal-title">현재멤버/버튼으로 
									<span class="d-block text-muted font-size-sm">대충 해당 테이블의 멤버 정보를 나타낸다고 설명하는 중</span></h5>
									<button type="button" class="close" data-dismiss="modal" aria-label="Close">
										<i aria-hidden="true" class="ki ki-close"></i>
									</button>
								</div>
								<div class="modal-body">
									<!--begin::Search Form-->
									<div class="mb-5">
										<div class="row align-items-center">
											<div class="col-lg-9 col-xl-8">
												<div class="row align-items-center">
													<div class="col-md-4 my-2 my-md-0">
														<div class="input-icon">
															<input type="text" class="form-control"
																placeholder="Search..." id="kt_datatable_search_query_3" />
															<span> <i class="flaticon2-search-1 text-muted"></i>
															</span>
														</div>
													</div>
													
<%--													<!-- 해당부분은 신청자 명단에서만 보이면 됨! 시작  -->--%>
<%--													<div class="col-md-4 my-2 my-md-0">--%>
<%--														<div class="d-flex align-items-center">--%>
<%--															<label class="mr-3 mb-0 d-none d-md-block">Status:</label>--%>
<%--															<select class="form-control"--%>
<%--																id="kt_datatable_search_status_3">--%>
<%--																<option value="">All</option>--%>
<%--																<option value="1">Pending</option>--%>
<%--																<option value="2">Delivered</option>--%>
<%--																<option value="3">Canceled</option>--%>
<%--																<option value="4">Success</option>--%>
<%--																<option value="5">Info</option>--%>
<%--																<option value="6">Danger</option>--%>
<%--															</select>--%>
<%--														</div>--%>
<%--													</div>--%>
<%--													--%>
<%--													<div class="col-md-4 my-2 my-md-0">--%>
<%--														<div class="d-flex align-items-center">--%>
<%--															<label class="mr-3 mb-0 d-none d-md-block">Type:</label>--%>
<%--															<select class="form-control"--%>
<%--																id="kt_datatable_search_type_3">--%>
<%--																<option value="">All</option>--%>
<%--																<option value="1">Online</option>--%>
<%--																<option value="2">Retail</option>--%>
<%--																<option value="3">Direct</option>--%>
<%--															</select>--%>
<%--														</div>--%>
<%--													</div>--%>
													
													<!-- 해당부분은 신청자 명단에서만 보이면 됨! 끝 -->
													
												</div>
											</div>
											<div class="col-lg-3 col-xl-4 mt-5 mt-lg-0">
												<a href="#"
													class="btn btn-light-primary px-6 font-weight-bold">Search</a>
											</div>
										</div>
									</div>
									<!--end::Search Form-->
									
									<!--begin: Datatable-->
									<div class="datatable datatable-bordered datatable-head-custom datatable-default datatable-primary datatable-scroll datatable-loaded"
										id="studyMemberList">
										<table class="datatable-table"
													 style="display: block; min-height: 400px; max-height: 400px;">
											
											<thead class="datatable-head">
											<tr class="datatable-row" style="left: 0px;">
												<th data-field="" class="datatable-cell datatable-cell-sort" style="width: 5%; text-align: center;">
													<span>&nbsp;</span></th>
												
												<th data-field="Number" class="datatable-cell datatable-cell-sort" style="width: 10%;">
													<span>#</span></th>
												
												<th data-field="studyTeamName" class="datatable-cell datatable-cell-sort" style="width: 45%; text-align: center;">
													<span style="text-align: center;">study&nbsp;Team&nbsp;Name</span></th>
												
												<th data-field="NickName" class="datatable-cell datatable-cell-sort" style="width: 40%; text-align: center;">
													<span style="text-align: center;">NickName</span></th>
											</tr>
											</thead>
											
											<tbody class="datatable-body ps">
											<tr data-row="0" class="datatable-row" style="left: 0px;">
												<td class="datatable-cell" data-field="" style="width: 5%;"><span>&nbsp;</span>
												</td>
												
												<td class="datatable-cell" data-field="Number"
														aria-label="=순번1el..?" style="width: 10%;"><span>1</span>
												</td>
												
												<td class="datatable-cell" data-field="studyTeamName"
														aria-label="=팀이름el" style="width: 45%;"><span>스터디팀명1</span>
												</td>
												
												<td data-field="NickName" aria-label="=회원닉el" class="datatable-cell" style="width: 40%;">
													<span>
														<img class="symbol symbol-40 symbol-sm flex-shrink-0" src="https://lh3.googleusercontent.com/ogw/ADea4I7X5V09iCZFEJgv24Lx02Z__PQ9LalGRvCTEHE6=s32-c-mo" alt="photo">
													회원닉네임-2</span>
												</td>
												
											</tr>
											<div class="ps__rail-x" style="left: 0px; bottom: 0px;">
												<div class="ps__thumb-x" tabindex="0" style="left: 0px; width: 0px;"></div>
											</div>
											<div class="ps__rail-y" style="top: 0px; right: 0px;">
												<div class="ps__thumb-y" tabindex="0" style="top: 0px; height: 0px;"></div>
											</div>
											</tbody>
										</table>
										
									</div>
									
									<!--end: Datatable-->
								</div>
							</div>
						</div>
					</div>
					<!--end::Modal-->
					<!---------------- 지혜:  신청자/멤버 명단 모달창 종료 -------------------->
					<!--contents.html Include-->
					<jsp:include page="/WEB-INF/commons/example.jsp"></jsp:include>
				</div>
				<!--컨테이너 종료-->
				<!--footer.html Include-->
				<jsp:include page="/WEB-INF/commons/footer.jsp"></jsp:include>
</body>
<!----------------Body 종료----------------------->

</html>