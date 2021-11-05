<%--
  Created by IntelliJ IDEA.
  User: bitcamp
  Date: 2021-11-05
  Time: 오후 3:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!------------------메인 메뉴 시작------------------>
<div class="header-menu-wrapper header-menu-wrapper-left" id="kt_header_menu_wrapper">
  <div class="container">
    <!--begin::Header Menu-->
    <div id="kt_header_menu" class="header-menu header-menu-left header-menu-mobile header-menu-layout-default header-menu-root-arrow">
      <!--begin::Header Nav-->
      <ul class="menu-nav">
        <!------------------첫번째 탭 시작------------------>
        <li class="menu-item menu-item-submenu menu-item-rel menu-item-open menu-item-here" data-menu-toggle="click" aria-haspopup="true">
          <a href="" class="menu-link menu-toggle">
            <span class="menu-text">프로젝트</span>
          </a>
        </li>
        <!------------------첫번째 탭 종료------------------>
        <!------------------두번째 탭 시작------------------>
        <li class="menu-item menu-item-submenu menu-item-rel" data-menu-toggle="click" aria-haspopup="true">
          <a href="index2.html" class="menu-link menu-toggle">
            <span class="menu-text">챌린지</span>
          </a>

        </li>
        <!------------------두번째 탭 종료------------------>
        <!------------------세번째 탭 시작------------------>
        <li class="menu-item menu-item-submenu menu-item-rel" data-menu-toggle="click" aria-haspopup="true">
          <a href="javascript:;" class="menu-link menu-toggle">
            <span class="menu-text">스터디 카페</span>
            <span class="menu-desc"></span>
            <i class="menu-arrow"></i>
          </a>
          <!--서브 메뉴 시작-->
          <div class="menu-submenu menu-submenu-classic menu-submenu-left">
            <!--1차 서브 메뉴 시작-->
            <ul class="menu-subnav">
              <li class="menu-item menu-item-submenu" data-menu-toggle="hover" aria-haspopup="true">
                <a href="" class="menu-link">
                  <i class="menu-bullet menu-bullet-dot">
                    <span></span>
                  </i>
                  <span class="menu-text">스터디 카페 리스트</span>
                </a>
              </li>
              <li class="menu-item menu-item-submenu" data-menu-toggle="hover" aria-haspopup="true">
                <a href="" class="menu-link">
                  <i class="menu-bullet menu-bullet-dot">
                    <span></span>
                  </i>
                  <span class="menu-text">예약 내역 조회</span>
                </a>
              </li>
            </ul>
            <!--1차 서브 메뉴 종료-->
          </div>
          <!--서브 메뉴 종료-->
        </li>
        <!------------------세번째 탭 종료------------------>
        <!------------------네번째 탭 시작------------------>
        <li class="menu-item menu-item-submenu menu-item-rel" data-menu-toggle="click" aria-haspopup="true">
          <a href="javascript:;" class="menu-link menu-toggle">
            <span class="menu-text">서브메뉴 예시</span>
            <span class="menu-desc"></span>
            <i class="menu-arrow"></i>
          </a>
          <!--서브 메뉴 시작-->
          <div class="menu-submenu menu-submenu-classic menu-submenu-left">
            <!--1차 서브 메뉴 시작-->
            <ul class="menu-subnav">
              <li class="menu-item menu-item-submenu" data-menu-toggle="hover" aria-haspopup="true">
                <a href="javascript:;" class="menu-link menu-toggle">
                                                    <span class="svg-icon menu-icon">
                                        <!--begin::Svg Icon | path:assets/media/svg/icons/Shopping/Box2.svg-->
                                        <svg xmlns="http://www.w3.org/2000/svg"
                                             xmlns:xlink="http://www.w3.org/1999/xlink" width="24px"
                                             height="24px" viewBox="0 0 24 24" version="1.1">
                                            <g stroke="none" stroke-width="1" fill="none"
                                               fill-rule="evenodd">
                                                <rect x="0" y="0" width="24" height="24" />
                                                <path
                                                    d="M4,9.67471899 L10.880262,13.6470401 C10.9543486,13.689814 11.0320333,13.7207107 11.1111111,13.740321 L11.1111111,21.4444444 L4.49070127,17.526473 C4.18655139,17.3464765 4,17.0193034 4,16.6658832 L4,9.67471899 Z M20,9.56911707 L20,16.6658832 C20,17.0193034 19.8134486,17.3464765 19.5092987,17.526473 L12.8888889,21.4444444 L12.8888889,13.6728275 C12.9050191,13.6647696 12.9210067,13.6561758 12.9368301,13.6470401 L20,9.56911707 Z"
                                                    fill="#000000" />
                                                <path
                                                    d="M4.21611835,7.74669402 C4.30015839,7.64056877 4.40623188,7.55087574 4.5299008,7.48500698 L11.5299008,3.75665466 C11.8237589,3.60013944 12.1762411,3.60013944 12.4700992,3.75665466 L19.4700992,7.48500698 C19.5654307,7.53578262 19.6503066,7.60071528 19.7226939,7.67641889 L12.0479413,12.1074394 C11.9974761,12.1365754 11.9509488,12.1699127 11.9085461,12.2067543 C11.8661433,12.1699127 11.819616,12.1365754 11.7691509,12.1074394 L4.21611835,7.74669402 Z"
                                                    fill="#000000" opacity="0.3" />
                                            </g>
                                        </svg>
                                                      <!--end::Svg Icon-->
                                    </span>
                  <span class="menu-text">1차 서브메뉴</span>
                  <i class="menu-arrow"></i>
                </a>
                <!--2차 서브 메뉴 시작-->
                <div class="menu-submenu menu-submenu-classic menu-submenu-right">
                  <ul class="menu-subnav">
                    <li class="menu-item menu-item-submenu" data-menu-toggle="hover" aria-haspopup="true">
                      <a href="javascript:;" class="menu-link menu-toggle">
                        <i class="menu-bullet menu-bullet-dot">
                          <span></span>
                        </i>
                        <span class="menu-text">2차 서브메뉴</span>
                        <i class="menu-arrow"></i>
                      </a>
                      <!--3차 서브 메뉴 시작-->
                      <div class="menu-submenu menu-submenu-classic menu-submenu-right">
                        <ul class="menu-subnav">
                          <li class="menu-item" aria-haspopup="true">
                            <a href="crud/forms/controls/base.html" class="menu-link">
                              <i class="menu-bullet menu-bullet-dot">
                                <span></span>
                              </i>
                              <span class="menu-text">3차 서브메뉴</span>
                            </a>
                          </li>
                        </ul>
                      </div>
                      <!--3차 서브 메뉴 종료-->
                    </li>
                  </ul>
                </div>
                <!--2차 서브 메뉴 종료-->
              </li>
            </ul>
            <!--1차 서브 메뉴 종료-->
          </div>
          <!--서브 메뉴 종료-->
        </li>
        <!------------------네번째 탭 종료------------------>

      </ul>
      <!--end::Header Nav-->
    </div>
    <!--end::Header Menu-->
  </div>
</div>
<!------------------메인 메뉴 종료------------------>

