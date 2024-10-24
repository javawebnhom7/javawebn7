<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@include file="/common/taglib.jsp" %>
<!DOCTYPE html >
<html>
<head>
    <title><dec:title default="Đăng ký"/></title>
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

    <style>
        body {
            margin: 0;
            color: #5761b1;
            background: #3062bf;
            font: 600 16px/18px 'Open Sans', sans-serif;
        }

        *, :after, :before {
            box-sizing: border-box
        }

        .clearfix:after, .clearfix:before {
            content: '';
            display: table
        }

        .clearfix:after {
            clear: both;
            display: block
        }

        a {
            color: inherit;
            text-decoration: none
        }

        .login-wrap {
            width: 100%;
            margin: auto;
            margin-top: 10px;
            margin-bottom: 10px;
            max-width: 525px;
            min-height: 670px;
            position: relative;
            background: url(https://i.pinimg.com/550x/18/fe/fc/18fefc45b6f130440d649379ad92517b.jpg) no-repeat center;
            box-shadow: 0 12px 15px 0 rgba(0, 0, 0, .24), 0 17px 50px 0 rgba(0, 0, 0, .19);
        }

        .login-html {
            width: 100%;
            height: 100%;
            position: absolute;
            padding: 90px 70px 50px 70px;
            background: rgba(40, 57, 101, .9);
        }



        /*.login-html .tab,*/
        /*.login-form .group .label,*/
        /*.login-form .group .button {*/
        /*    text-transform: uppercase;*/
        /*}*/

        /*.login-html .tab {*/
        /*    font-size: 22px;*/
        /*    margin-right: 15px;*/
        /*    padding-bottom: 5px;*/
        /*    margin: 0 15px 10px 0;*/
        /*    display: inline-block;*/
        /*    border-bottom: 2px solid transparent;*/
        /*}*/

        /*.login-html .sign-in:checked + .tab,*/
        /*.login-html .sign-up:checked + .tab {*/
        /*    color: #fff;*/
        /*    border-color: #1161ee;*/
        /*}*/

        .login-form {
            min-height: 345px;
            position: relative;
            perspective: 1000px;
            transform-style: preserve-3d;
        }

        .group {
            margin-bottom: 15px;
        }

        .label{
            width: 100%;
            color: #fff;
            display: block;
        }
        .input{
            width: 100%;
            color: #fff;
            display: block;
        }

        .button {
            width: 100%;
            color: #fff;
            display: block;
        }

        .input{
            border: none;
            padding: 15px 20px;
            border-radius: 25px;
            background: rgba(255, 255, 255, .1);
        }
        .button {
            border: none;
            padding: 15px 20px;
            border-radius: 25px;
            background: rgba(255, 255, 255, .1);
        }

        .login-form .group input[data-type="password"] {
            text-security: circle;
            -webkit-text-security: circle;
        }

        .label {
            color: #aaa;
            font-size: 12px;
        }

        .button {
            background: #1161ee;
        }

        .icon {
            width: 15px;
            height: 15px;
            border-radius: 2px;
            position: relative;
            display: inline-block;
            background: rgba(255, 255, 255, .1);
        }

        .icon:before,
        .icon:after {
            content: '';
            width: 10px;
            height: 2px;
            background: #fff;
            position: absolute;
            transition: all .2s ease-in-out 0s;
        }

        .login-form .group label .icon:before {
            left: 3px;
            width: 5px;
            bottom: 6px;
            transform: scale(0) rotate(0);
        }

        .login-form .group label .icon:after {
            top: 6px;
            right: 0;
            transform: scale(0) rotate(0);
        }

        .login-form .group .check:checked + label {
            color: #fff;
        }

        .login-form .group .check:checked + label .icon {
            background: #1161ee;
        }

        .login-form .group .check:checked + label .icon:before {
            transform: scale(1) rotate(45deg);
        }

        .login-form .group .check:checked + label .icon:after {
            transform: scale(1) rotate(-45deg);
        }

        .login-html .sign-in:checked + .tab + .sign-up + .tab + .login-form .sign-in-htm {
            transform: rotate(0);
        }

        .login-html .sign-up:checked + .tab + .login-form .sign-up-htm {
            transform: rotate(0);
        }

        .hr {
            height: 2px;
            margin: 60px 0 50px 0;
            background: rgba(255, 255, 255, .2);
        }

        .foot-lnk {
            text-align: center;
        }


        .button6 {
            align-items: center;
            appearance: none;
            background-image: radial-gradient(100% 100% at 100% 0, #5adaff 0, #5468ff 100%) !important;
            border: 0;
            border-radius: 25px;
            box-shadow: rgba(45, 35, 66, .4) 0 2px 4px, rgba(45, 35, 66, .3) 0 7px 13px -3px, rgba(58, 65, 111, .5) 0 -3px 0 inset;
            box-sizing: border-box;
            color: #fff;
            cursor: pointer;
            display: inline-flex;
            height: 40px;
            justify-content: center;
            line-height: 1;
            list-style: none;
            overflow: hidden;
            padding-left: 16px;
            padding-right: 16px;
            position: relative;
            text-align: left;
            text-decoration: none;
            transition: box-shadow .15s, transform .15s;
            user-select: none;
            -webkit-user-select: none;
            touch-action: manipulation;
            white-space: nowrap;
            will-change: box-shadow, transform;
            font-size: 18px;

        }

    </style>
</head>
<body id="LoginForm">
<dec:body/>

</body>
</html>