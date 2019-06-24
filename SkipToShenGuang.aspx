<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SkipToShenGuang.aspx.cs" Inherits="WeiHou.SkipToShenGuang" %>

<script language="javascript" type="text/javascript" src="http://m.shenguang.com.cn/zysj/Content/Scripts/jquery-1.8.2.min.js"></script>
<html>
<head>
    <title><%=naivelist[0].topics%></title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

    <script type="text/javascript">
        var aa = getInfoString("apple");
        var bb = getInfoString("name");

        var str = "http://e.vhall.com/webinar/inituser/" + aa + "?name=" + bb + "";
        function getInfoString(name) {
            var reg = new RegExp("(^|&)" + name + "=([^&]*)(&|$)", "i");
            var r = window.location.search.substr(1).match(reg);
            if (r != null)
                return unescape(r[2]);
            return null;
        }
        var time = "2";
        var timer = setInterval(function () {
            if (time == "2") {
                $.ajax({
                    type: 'POST',
                    url: 'Ajax/GetZhi.ashx',
                    data: "id=<%=Request.QueryString["apple"]%>",
                    success: function (result) {
                        var data = {};
                        data = JSON.parse(result);
                        time = data.data;
                        if (data.data == "1")
                        {
                            document.getElementById('myrame').contentWindow.location.reload(true);
                        }
                    }
                })
            }
        }, 1000)

    </script>
</head>
<body>
    <input style="display: none" id="picture" type="text" value='<%=naivelist[0].thumb%>' />
    <input style="display: none" id="title" type="text" value='<%=naivelist[0].topics%>' />
    <input style="display: none" id="content" type="text" value='<%=naivelist[0].desc%>' />

    <iframe name="myiframe" id="myrame" src='<%=url %>' width="100%" height="100%" />
    <!-- 
<frameset cols="100%">
  <frame  id="barframe" src='<%=url %>' />

</frameset>-->
</body>
</html>
