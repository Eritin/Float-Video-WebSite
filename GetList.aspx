<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="GetList.aspx.cs" Inherits="WeiHou.GetList" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no">
    <title>直播间</title>
    <link type="text/css" rel="stylesheet" href="css/webtgw.css">
   
</head>
<body>
    <form id="form1" runat="server">
        <div class="zb_new">
            <div class="air10"></div>
            <div class="dbt_a" s style="margin: 0 auto; padding-bottom: 10px; border-bottom: solid 1px #efefef;">
                <h2>直播预告</h2>
            </div>
            <div class="air10"></div>
            <ul>
                <%if(newlist == null) {%>
                    <li style="height:256px;text-align:center">
                        <img src="images/nolist.png" style="width:88%" /></li>
                <%} else {%>
                <%foreach (WeiHou.Code.Json.ListsItem myRow in newlist){ %>
                <%--<li onclick="window.location.href='http://e.vhall.com/webinar/inituser/<%=myRow.webinar_id %>?name=<%=Request["userid"].ToString() %>'"><i class="fl"></i><span class="fl"><%=myRow.start_time %></span><em class="fr"><%=myRow.topics %></em>
                    <p><%=myRow.subject %></p>
                </li>--%>
                <li onclick="window.location.href='SkipToShenGuang.aspx?apple=<%=myRow.webinar_id %>&name=123'"><i class="fl"></i><span class="fl"><%=myRow.start_time %></span><em class="fr"><%=myRow.topics %></em>
                    <p><%=myRow.subject %></p>
                </li>
                <%} }%>

                <%--<li class="huigay"><i class="fl"></i><span class="fl">3月6日</span><em class="fr">主力情报系列</em>
                    <p>随时预防真正跌杀！</p>
                </li>--%>

                
            </ul>
            <div class="air10"></div>
        </div>
        <div class="air10"></div>
        <div class="zb_new">
            <div class="air10"></div>
            <div class="dbt_a" s style="margin: 0 auto; padding-bottom: 10px; border-bottom: solid 1px #efefef;">
                <h2>历史直播</h2>
            </div>
            <div class="air10"></div>
            <ul>
                <%foreach (WeiHou.Code.Json.ListsItem myRow in oldlist){ %>
               <%-- <li onclick="window.location.href='http://e.vhall.com/webinar/inituser/<%=myRow.webinar_id %>?name=123'"><i class="fl"></i><span class="fl"><%=myRow.start_time.Substring(0,10) %></span><em class="fr"><%=myRow.topics %>系列</em>
                    <p><%=myRow.subject %></p>
                </li>--%>
                <li onclick="window.location.href='SkipToShenGuang.aspx?apple=<%=myRow.webinar_id %>&name=123'"><i class="fl"></i><span class="fl"><%=myRow.start_time.Substring(0,10) %></span><em class="fr"><%=myRow.topics %>系列</em>
                    <p><%=myRow.subject %></p>
                </li>
                <%} %>
                <%--<li class="huigay"><i class="fl"></i><span class="fl">3月6日</span><em class="fr">主力情报系列</em>
                    <p>随时预防真正跌杀！</p>
                </li>--%>
                
            </ul>
            <div class="air10"></div>
        </div>
    </form>
</body>
</html>
