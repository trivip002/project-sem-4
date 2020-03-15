<%--
  Created by IntelliJ IDEA.
  User: hugh.intern
  Date: 2/12/2020
  Time: 10:42 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/common/tag.jsp"%>
<stripes:layout-definition>
    <html>
    <head>
        <title>Title</title>
        <stripes:layout-component name="html_user"/>
        <script type='text/javascript' src='<c:url value="/static/admin/plugins/jquery/jquery.min.js"/>'></script>
        <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.9/angular.min.js"></script>
    <style>
    * {
    -webkit-box-sizing: border-box;
    -moz-box-sizing: border-box;
    box-sizing: border-box;
    }

    html,body {
    height: 100%;
    overflow: hidden;
    }

    body {
    margin: 0;
    padding: 0;
    font-weight: 400;
    font-family: "Helvetica Neue", Helvetica, Arial, sans-serif;
    font-size: 1rem;
    line-height: 1.58;
    color: #333;
    background-color: #f4f4f4;
    height: 100%;
    }

    body:before {
    height: 50%;
    width: 100%;
    position: absolute;
    top: 0;
    left: 0;
    background: #128ff2;
    content: "";
    z-index: 0;
    }

    .clearfix:after {
    display: block;
    content: "";
    clear: both;
    }

    .hidden {
    display: none;
    }

    .form-control {
    width: 100%;
    min-height: 38px;
    font-size: 15px;
    border: 1px solid #c8c8c8;
    }

    .form-group {
    margin-bottom: 15px;
    }

    input {
    padding-left: 10px;
    outline: none;
    }

    h1, h2, h3, h4, h5, h6 {
    margin-top: 20px;
    margin-bottom: 20px;
    }

    h1 {
    font-size: 1.7em;
    }

    a {
    color: #128ff2;
    }

    button {
    box-shadow: none;
    border: 1px solid transparent;
    font-size: 14px;
    outline: none;
    line-height: 100%;
    white-space: nowrap;
    vertical-align: middle;
    padding: 0.6rem 1rem;
    border-radius: 2px;
    transition: all 0.2s ease-in-out;
    cursor: pointer;
    min-height: 38px;
    }

    button.default {
    background-color: #e8e8e8;
    color: #333;
    box-shadow: 0 2px 2px 0 rgba(0, 0, 0, 0.12);
    }

    button.primary {
    background-color: #128ff2;
    box-shadow: 0 2px 2px 0 rgba(0, 0, 0, 0.12);
    color: #fff;
    }

    button.accent {
    background-color: #ff4743;
    box-shadow: 0 2px 2px 0 rgba(0, 0, 0, 0.12);
    color: #fff;
    }

    #username-page {
    text-align: center;
    }

    .username-page-container {
    background: #fff;
    box-shadow: 0 1px 11px rgba(0, 0, 0, 0.27);
    border-radius: 2px;
    width: 100%;
    max-width: 500px;
    display: inline-block;
    margin-top: 42px;
    vertical-align: middle;
    position: relative;
    padding: 35px 55px 35px;
    min-height: 250px;
    position: absolute;
    top: 50%;
    left: 0;
    right: 0;
    margin: 0 auto;
    margin-top: -160px;
    }

    .username-page-container .username-submit {
    margin-top: 10px;
    }


    #chat-page {
    position: relative;
    height: 100%;
    }

    .chat-container {
    max-width: 700px;
    margin-left: auto;
    margin-right: auto;
    background-color: #fff;
    box-shadow: 0 1px 11px rgba(0, 0, 0, 0.27);
    margin-top: 30px;
    height: calc(100% - 60px);
    max-height: 600px;
    position: relative;
    }

    #chat-page ul {
    list-style-type: none;
    background-color: #FFF;
    margin: 0;
    overflow: auto;
    overflow-y: scroll;
    padding: 0 20px 0px 20px;
    height: calc(100% - 150px);
    }

    #chat-page #messageForm {
    padding: 20px;
    }

    #chat-page ul li {
    line-height: 1.5rem;
    padding: 10px 20px;
    margin: 0;
    border-bottom: 1px solid #f4f4f4;
    }

    #chat-page ul li p {
    margin: 0;
    }

    #chat-page .event-message {
    width: 100%;
    text-align: center;
    clear: both;
    }

    #chat-page .event-message p {
    color: #777;
    font-size: 14px;
    word-wrap: break-word;
    }

    #chat-page .chat-message {
    padding-left: 68px;
    position: relative;
    }

    #chat-page .chat-message i {
    position: absolute;
    width: 42px;
    height: 42px;
    overflow: hidden;
    left: 10px;
    display: inline-block;
    vertical-align: middle;
    font-size: 18px;
    line-height: 42px;
    color: #fff;
    text-align: center;
    border-radius: 50%;
    font-style: normal;
    text-transform: uppercase;
    }

    #chat-page .chat-message span {
    color: #333;
    font-weight: 600;
    }

    #chat-page .chat-message p {
    color: #43464b;
    }

    #messageForm .input-group input {
    float: left;
    width: calc(100% - 85px);
    }

    #messageForm .input-group button {
    float: left;
    width: 80px;
    height: 38px;
    margin-left: 5px;
    }

    .chat-header {
    text-align: center;
    padding: 15px;
    border-bottom: 1px solid #ececec;
    }

    .chat-header h2 {
    margin: 0;
    font-weight: 500;
    }

    .connecting {
    padding-top: 5px;
    text-align: center;
    color: #777;
    position: absolute;
    top: 65px;
    width: 100%;
    }


    @media screen and (max-width: 730px) {

    .chat-container {
    margin-left: 10px;
    margin-right: 10px;
    margin-top: 10px;
    }
    }

    @media screen and (max-width: 480px) {
    .chat-container {
    height: calc(100% - 30px);
    }

    .username-page-container {
    width: auto;
    margin-left: 15px;
    margin-right: 15px;
    padding: 25px;
    }

    #chat-page ul {
    height: calc(100% - 120px);
    }

    #messageForm .input-group button {
    width: 65px;
    }

    #messageForm .input-group input {
    width: calc(100% - 70px);
    }

    .chat-header {
    padding: 10px;
    }

    .connecting {
    top: 60px;
    }

    .chat-header h2 {
    font-size: 1.1em;
    }
    }
    </style>
    </head>
    <body>
        <stripes:layout-component name="header">
            <jsp:include page="../header.jsp"/>
        </stripes:layout-component>

        <div class="pageContent">
            <stripes:layout-component name="contents"/>
        </div>

        <stripes:layout-component name="footer">
            <jsp:include page="../footer.jsp"/>
        </stripes:layout-component>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/sockjs-client/1.4.0/sockjs.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/stomp.js/2.3.3/stomp.min.js"></script>
    <script type='text/javascript' src='<c:url value="/static/assets/js/socket.js"/>'></script>
    </body>
    </html>
</stripes:layout-definition>

