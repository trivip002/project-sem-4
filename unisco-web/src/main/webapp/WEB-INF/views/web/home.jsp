<%@include file="/common/tag.jsp"%>
<stripes:layout-render name="../../template/user/layout/default.jsp" pageTitle="Using A Layout">
    <stripes:layout-component name="contents">
       Welcome to Home Page.

        <noscript>
            <h2>Sorry! Your browser doesn't support Javascript</h2>
        </noscript>

        <div id="username-page">
            <div class="username-page-container">
                <h1 class="title">Type your username</h1>
                <form id="usernameForm" name="usernameForm">
                    <div class="form-group">
                        <input type="text" id="name" placeholder="Username" autocomplete="off" class="form-control" />
                    </div>
                    <div class="form-group">
                        <button type="submit" class="accent username-submit">Start Chatting</button>
                    </div>
                </form>
            </div>
        </div>

        <div id="chat-page" class="hidden">
            <div class="chat-container">
                <div class="chat-header">
                    <h2>Spring WebSocket Chat Demo</h2>
                </div>
                <div class="connecting">
                    Connecting...
                </div>
                <ul id="messageArea">

                </ul>
                <form id="messageForm" name="messageForm" nameForm="messageForm">
                    <div class="form-group">
                        <div class="input-group clearfix">
                            <input type="text" id="message" placeholder="Type a message..." autocomplete="off" class="form-control"/>
                            <button type="submit" class="primary">Send</button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </stripes:layout-component>
</stripes:layout-render>