<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="f" uri="http://java.sun.com/jsf/core" %>
<%@ taglib prefix="h" uri="http://java.sun.com/jsf/html" %>
<div class="header_top">
    <ul class="phone">
        <li class="phone_left"><i class="mobile"> </i><span>1-200-346-2986</span></li>
        <li class="phone_right">Free Ground Shipping for Products over $100</li>
        <div class="clearfix"></div>
    </ul>
    <ul class="social">
        <li><a href=""> <i class="tw"> </i> </a></li>
        <li><a href=""><i class="fb"> </i> </a></li>
        <li><a href=""><i class="rss"> </i> </a></li>
        <li><a href=""><i class="msg"> </i> </a></li>
        <div class="clearfix"></div>
    </ul>
    <ul class="account">
        <li><a href="person.action">我的账单</a></li>
    </ul>
    <ul class="shopping_cart">
        <a href="cart0.jsp">
            <li class="shop_left"><i class="cart"> </i><span>商品${cart }件</span></li>
        </a>
        <a href="#">
            <li class="shop_right"><span>共${price }元</span></li>
        </a>
        <div class="clearfix"></div>
    </ul>
    <div class="clearfix"></div>
</div>