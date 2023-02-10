<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.util.*" %>
<%@ page import="com.musclebeach.product.model.entity.Product" %>
<%@ page import="com.musclebeach.product.model.service.ProductTypeService" %>
<%@ page import="org.springframework.context.ApplicationContext" %>
<%@ page import="com.musclebeach.common.util.ApplicationContextUtil" %>
<%@ page import="com.musclebeach.product.model.entity.ProductType" %>

<%
    Product prodVO = (Product) request.getAttribute("prodVO");
    ApplicationContext context = ApplicationContextUtil.getContext();
    ProductTypeService prodTypeSvc = context.getBean(ProductTypeService.class);
    List<ProductType> list = prodTypeSvc.getAll();
    pageContext.setAttribute("list", list);
%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <title>Muscle Beach 後台首頁</title>
    <link
            rel="canonical"
            href="https://getbootstrap.com/docs/5.3/examples/headers/"
    />
    <link
            rel="stylesheet"
            href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.3/font/bootstrap-icons.css"
    />
    <link
            rel="canonical"
            href="https://getbootstrap.com/docs/5.3/examples/sidebars/"
    />
    <link href="<%=request.getContextPath()%>/back-end/resources/assets/dist/css/bootstrap.min.css" rel="stylesheet"/>
    <style type="text/css"></style>
    <link href="<%=request.getContextPath()%>/back-end/resources/index/index.css" rel="stylesheet"/>
    <!-- Flaticon Font -->
    <link href="<%=request.getContextPath()%>/back-end/resources/lib/flaticon/font/flaticon.css" rel="stylesheet"/>
</head>
<body>
<!-- ======================================== header 開始 ======================================== -->
<header class="p-3 text-bg-dark">
    <div class="container">
        <div
                class="d-flex flex-wrap align-items-center justify-content-between"
        >
            <div class="header_1">
                <i class="flaticon-barbell"></i>
                <span>Muscle Beach</span>
            </div>
            <div class="header_2">
                <span style="margin-right: 50px">Welcome, user !</span>
                <button
                        type="button"
                        class="btn btn-outline-light"
                        style="margin-right: 5px"
                >
                    修改密碼
                </button>
                <button type="button" class="btn btn-outline-light">登出</button>
            </div>
        </div>
    </div>
</header>

<!-- ======================================== sidebar 開始 ======================================== -->
<main class="d-flex flex-nowrap">
    <div
            class="d-flex flex-column flex-shrink-0 p-3"
            style="width: 280px; background-color: rgb(110, 109, 109)"
    >
        <ul
                class="nav nav-pills flex-column mb-auto"
                id="v-pills-tab"
                role="tablist"
                aria-orientation="vertical"
                style="text-align: center"
        >
            <li class="nav-item">
                <a
                        class="nav-link text-white"
                        id="v-pills-home-tab"
                        data-bs-toggle="pill"
                        data-bs-target="#v-pills-home"
                        type="button"
                        role="tab"
                        aria-controls="v-pills-home"
                        aria-selected="true"
                        aria-current="page"
                        style="font-size: 1.5rem"
                >
                    <i class="bi bi-house-door" style="margin-right: 8px"></i>
                    首頁
                </a>
            </li>
            <li class="nav-item">
                <a
                        class="nav-link text-white"
                        id="v-pills-employee-tab"
                        data-bs-toggle="pill"
                        data-bs-target="#v-pills-employee"
                        type="button"
                        role="tab"
                        aria-controls="v-pills-employee"
                        aria-selected="false"
                >
                    <i class="bi bi-person" style="color: white; margin: 5px"></i>
                    員工管理
                </a>
            </li>
            <li>
                <a
                        class="nav-link text-white"
                        id="v-pills-member-tab"
                        data-bs-toggle="pill"
                        data-bs-target="#v-pills-member"
                        type="button"
                        role="tab"
                        aria-controls="v-pills-member"
                        aria-selected="false"
                >
                    <i
                            class="bi bi-person-circle"
                            style="color: white; margin: 5px"
                    ></i>
                    會員管理
                </a>
            </li>
            <li>
                <a
                        class="nav-link active text-white"
                        id="v-pills-shop-tab"
                        data-bs-toggle="pill"
                        data-bs-target="#v-pills-shop"
                        type="button"
                        role="tab"
                        aria-controls="v-pills-shop"
                        aria-selected="false"
                >
                    <i class="bi bi-shop" style="color: white; margin: 5px"></i>
                    商城管理
                </a>
            </li>
            <li>
                <a
                        class="nav-link text-white"
                        id="v-pills-coach-tab"
                        data-bs-toggle="pill"
                        data-bs-target="#v-pills-coach"
                        type="button"
                        role="tab"
                        aria-controls="v-pills-coach"
                        aria-selected="false"
                >
                    <i
                            class="bi bi-universal-access"
                            style="color: white; margin: 5px"
                    ></i>
                    教練管理
                </a>
            </li>
            <li>
                <a
                        class="nav-link text-white"
                        id="v-pills-class-tab"
                        data-bs-toggle="pill"
                        data-bs-target="#v-pills-class"
                        type="button"
                        role="tab"
                        aria-controls="v-pills-class"
                        aria-selected="false"
                >
                    <i
                            class="bi bi-calendar2-week"
                            style="color: white; margin: 5px"
                    ></i>
                    課程管理
                </a>
            </li>
            <li>
                <a
                        class="nav-link text-white"
                        id="v-pills-room-tab"
                        data-bs-toggle="pill"
                        data-bs-target="#v-pills-room"
                        type="button"
                        role="tab"
                        aria-controls="v-pills-room"
                        aria-selected="false"
                >
                    <i class="bi bi-building" style="color: white; margin: 5px"></i>
                    場地管理
                </a>
            </li>
            <li>
                <a
                        class="nav-link text-white"
                        id="v-pills-article-tab"
                        data-bs-toggle="pill"
                        data-bs-target="#v-pills-article"
                        type="button"
                        role="tab"
                        aria-controls="v-pills-article"
                        aria-selected="false"
                >
                    <i
                            class="bi bi-chat-right-text"
                            style="color: white; margin: 5px"
                    ></i>
                    論壇管理
                </a>
            </li>
            <li>
                <a
                        class="nav-link text-white"
                        id="v-pills-service-tab"
                        data-bs-toggle="pill"
                        data-bs-target="#v-pills-service"
                        type="button"
                        role="tab"
                        aria-controls="v-pills-service"
                        aria-selected="false"
                >
                    <i class="bi bi-envelope" style="color: white; margin: 5px"></i>
                    客服管理
                </a>
            </li>
        </ul>
        <hr/>
        <div class="mx-auto d-flex mt-3 mb-3 text-muted">&copy; 2022</div>
    </div>
    <div class="tab-content" id="v-pills-tabContent">
        <!-- ============================================ 首頁 ============================================ -->
        <div
                class="tab-pane fade"
                id="v-pills-home"
                role="tabpanel"
                aria-labelledby="v-pills-home-tab"
                tabindex="0"
        >
            <img src="/image/welcome.gif" style="width: 96%" alt=""/>
        </div>

        <!-- ========================================= 商城管理 ========================================= -->
        <div
                class="tab-pane fade show active"
                id="v-pills-shop"
                role="tabpanel"
                aria-labelledby="v-pills-shop-tab"
                tabindex="0"
                style="border: 2px solid white"
        >
            <div class="main-panel">
                <div class="content-wrapper">
                    <div class="row">
                        <div class="col-sm-6">
                            <h3 class="mb-0 font-weight-bold">商品管理</h3>
                        </div>
                        <div class="col-sm-6">
                            <div class="d-flex align-items-center justify-content-md-end">
                                <div class="mb-3 mb-xl-0 pr-1">
                                    <div class="dropdown">
                                        <button style="margin-right:10px;">
                                            <a href="<%=request.getContextPath()%>/back-end/product//listAllProd.jsp">
                                                <img
                                                        src="<%=request.getContextPath()%>/back-end/product/images/home.png"
                                                        title="返回所有商品"
                                                        width="30px" height="30px"></a>
                                        </button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row  mt-3">
                        <div class="col-lg-12 grid-margin stretch-card">
                            <div class="card">
                                <div class="card-body">
                                    <h4 class="card-title">新增商品</h4>
                                    <div class="table-responsive">
                                        <%-- 錯誤表列 --%>
                                        <c:if test="${not empty errorMsgs}">
                                            <font style="color:red">請修正以下錯誤:</font>
                                            <ul>
                                                <c:forEach var="message" items="${errorMsgs}">
                                                    <li style="color:red">${message}</li>
                                                </c:forEach>
                                            </ul>
                                        </c:if>
                                        <FORM METHOD="post"
                                              ACTION="<%=request.getContextPath() %>/back-end/product/addOneProd"
                                              enctype="multipart/form-data" name="form1">
                                            <table>
                                                <tr>
                                                    <td>名稱:</td>
                                                    <td><input type="TEXT" name="proName" size="45"
                                                               value="<%= (prodVO==null)? "瘦身果汁" : prodVO.getProName()%>"/>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>類別:<font color=red><b>*</b></font></td>
                                                    <td>
                                                        <select size="1" name="typeID">
                                                            <c:forEach var="prodTypeVO" items="${list}">
                                                            <option value="${prodTypeVO.typeID}"
                                                                ${(prodVO.typeID==prodTypeVO.typeID)? 'selected':'' }>${prodTypeVO.typeName}
                                                                </c:forEach>
                                                        </select>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>數量:</td>
                                                    <td><input type="TEXT" name="proQty" size="45"
                                                               value="<%= (prodVO==null)? "10" : prodVO.getProQty()%>"/>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>價錢:</td>
                                                    <td><input type="TEXT" name="proPrice" size="45"
                                                               value="<%= (prodVO==null)? "500" : prodVO.getProPrice()%>"/>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>內容:</td>
                                                    <td><input type="TEXT" name="proContent" size="45"
                                                               value="<%= (prodVO==null)? "喝完立馬瘦，非常讚!" : prodVO.getProContent()%>"/>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td><input type="file" name="proImg" value="上傳圖片" size="45"
                                                               id="p_file" accept="image/*"/></td>
                                                    <td>
                                                        <div id="preview">
                                                            <span class="text"></span>
                                                        </div>
                                                    </td>
                                                </tr>
                                            </table>

                                            <input type="hidden" name="action" value="insert">
                                            <br><br>
                                            <input type="submit" value="送出新增">
                                        </FORM>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</main>
<script src="<%=request.getContextPath()%>/back-end/resources/js/popper.min.js"></script>
<script src="<%=request.getContextPath()%>/back-end/resources/js/bootstrap.min.js"></script>
<script src="<%=request.getContextPath()%>/back-end/resources/assets/dist/js/bootstrap.bundle.min.js"></script>
<script src="<%=request.getContextPath()%>/back-end/resources/index/sidebars.js"></script>
<!-- 預覽圖 -->
<script>
    window.addEventListener("load", function (e) {
        var preview_el = document.getElementById("preview");
        var p_file_el = document.getElementById("p_file");
        var preview_img = function (file) {
            var reader = new FileReader(); // 用來讀取檔案
            reader.readAsDataURL(file); // 讀取檔案
            reader.addEventListener("load", function () {
                var img_str = '<img src="' + reader.result + '" class="preview_img">';
                preview_el.innerHTML = img_str;

            });
        };
        p_file_el.addEventListener("change", function (e) {
            if (this.files.length > 0) {
                preview_img(this.files[0]);
            } else {
                preview_el.innerHTML = '<span class="text">預覽圖</span>';
            }
        });
    });
</script>
</body>
</html>
