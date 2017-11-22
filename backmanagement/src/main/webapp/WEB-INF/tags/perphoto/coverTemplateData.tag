<%@ tag pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ attribute name="element" required="true" type="java.lang.Object" %>
<%@ attribute name="fieldNamePrefix" required="true" type="java.lang.String" %>
<%@taglib prefix="hp" tagdir="/WEB-INF/tags/perphoto" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<div class="form-group">
    <input type="hidden" name="id" value="${element.id}">
    <input type="hidden" name="photoId" value="${element.photoId}">
</div>
<div class="form-group">
    <label class="col-md-2 control-label">图片:</label>
    <div class="col-md-10">
        <div class="input-icon">
            <img id="photoPath" width="50%" src="${element.photoPath}" alt="无图片" />
            <div class="btn btn-info logo_button">选择图片</div>
            <div class="btn btn-info del_logo_button">删除图片</div>
            <input type="file" style="display:none" class="logo_file" />
            <input name="${fieldNamePrefix}photoPath" style="display:none" type="text" class="form-control" value="${element.photoPath}">
        </div>
    </div>
</div>
<div class="form-group">
    <label class="col-md-2 control-label">描述:</label>
    <div class="col-md-10">
        <div class="input-icon">
            <input name="${fieldNamePrefix}descs" type="text" class="form-control" value="${element.descs}">
        </div>
    </div>
</div>

<div class="form-group">
    <label class="col-md-2 control-label">大小:</label>
    <div class="col-md-10">
        <div class="input-icon" readonly="readonly">
            <input name="${fieldNamePrefix}size" type="text" class="form-control" value="${element.size}">
        </div>
    </div>
</div>
<div class="form-group">
    <label class="col-md-2 control-label">图片分类:</label>
    <div class="col-md-10">
        <div class="input-icon">
            <input name="${fieldNamePrefix}categroy" type="text" class="form-control" value="${element.categroy}">
        </div>
    </div>
</div>
<div class="form-group">
    <label class="col-md-2 control-label">好评数:</label>
    <div class="col-md-10">
        <div class="input-icon">
            <input name="${fieldNamePrefix}commendNums" type="number" step="1" class="form-control" value="${element.commendNums}">
        </div>
    </div>
</div>
<div class="form-group">
    <label class="col-md-2 control-label">差评数:</label>
    <div class="col-md-10">
        <div class="input-icon">
            <input name="${fieldNamePrefix}badNums" type="number" step="1" class="form-control" value="${element.badNums}">
        </div>
    </div>
</div>
<div class="form-group">
    <label class="col-md-2 control-label">评论:</label>
    <div class="col-md-10">
        <div class="input-icon" readonly="readonly">
            暂时不提供,懒
            <%--<input name="${fieldNamePrefix}soldPercent" type="number" step="1" class="form-control" value="${element.soldPercent}">--%>
        </div>
    </div>
</div>