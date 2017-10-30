var options = {
    expires:60*60*24,
    path:"/"
}

function addCookie(name,value){
    addWebCookie(name,value,options);
}

function deleteCookie(name){
    removeCookie(name,options);
}

function getCookie(name){
    return getWebCookie(name);
}