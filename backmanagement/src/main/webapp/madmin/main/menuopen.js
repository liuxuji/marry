function menuopen(url){
    console.log("this is..." + url);
    var tempUrl = url;
    if(url == "dashboard.do"){
        tempUrl = "/console/" + url;
    } else {
        if(url.indexOf("https:") == 0 || url.indexOf("http:") == 0){//包含有
            tempUrl = url;
        } else if (url.indexOf("https:") == -1 || url.indexOf("http:") == -1){//不包含
            tempUrl = url;
        }
    }
    $.ajax({
        type: "GET",
        url: tempUrl,
        dataType: 'html',
        success: function(data)
        {
            $("#page-wrapper .page-content").html(data);
        },
        error:function (xmlHttp, textStatus, errorThrown)
        {
            if(xmlHttp.status == 0)
            {
            }
            if(xmlHttp.status == 401)
            {
                window.location.href = "/";
            }
            else
            {
                $("#page-wrapper .page-content").html("<div id='error-page'>"+ xmlHttp.responseText+ "</div>");
            }
        }
    });
}
