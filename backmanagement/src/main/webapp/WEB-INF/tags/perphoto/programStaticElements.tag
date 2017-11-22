<%@ tag pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="hp" tagdir="/WEB-INF/tags/perphoto" %>
<%@ attribute name="fieldNamePrefix" required="true" type="java.lang.String" %>
<%@ attribute name="elements" required="false" type="java.util.Collection" %>
<%@ attribute name="startIndex" required="false" type="java.lang.Integer" %>
<c:forEach items="${elements}" var="element" varStatus="eStatus">
    <tr class="tt">
        <td class="center col-md-2">
                ${eStatus.index + (startIndex == null ? 0 : startIndex)}
        </td>
        <td class="center col-md-10">
            <div class="action-buttons">
                <button type="button" class="green bigger-140 show-details-btn" title="Show Details" onclick="showCoverElementDetails(this)">
                    <i class="ace-icon fa fa-angle-double-down"></i>
                    <span class="sr-only">Details</span>
                </button>
                <button type="button" class="btn btn-danger btn-xs" title="Delete this" onclick="deleteCoverElementDetails(this)">
                    <i class="ace-icon fa fa-trash"></i>
                    <span class="sr-only">Delete</span>
                </button>
            </div>
        </td>
    </tr>
    <tr class="detail-row">
        <td colspan="2">
            <hp:coverTemplateData element="${element}" fieldNamePrefix="${fieldNamePrefix}elements[${eStatus.index + (startIndex == null ? 0 : startIndex)}]." />
        </td>
    </tr>

</c:forEach>