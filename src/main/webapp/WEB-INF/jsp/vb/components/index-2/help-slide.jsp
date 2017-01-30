<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<div class="help-slide-content help-slide-${helpSlideNumber}">
    <div class="row row-1">
        <div class="column column-1">
            <c:forEach var="helpSlideRow1Column1Link" items="${helpSlideRow1Column1Links}">
                <a href="${currentURI}#">
                    <span class="text">
                        ${helpSlideRow1Column1Link}
                    </span>
                </a>
            </c:forEach>
        </div>

        <div class="column column-2">
            <c:forEach var="helpSlideRow1Column2Link" items="${helpSlideRow1Column2Links}">
                <a href="${currentURI}#">
                    <span class="text">
                        ${helpSlideRow1Column2Link}
                    </span>
                </a>
            </c:forEach>
        </div>

        <div class="column column-3">
            <c:forEach var="helpSlideRow1Column3Link" items="${helpSlideRow1Column3Links}">
                <a href="${currentURI}#">
                    <span class="text">
                        ${helpSlideRow1Column3Link}
                    </span>
                </a>
            </c:forEach>
        </div>
    </div>

    <div class="row row-2">
        <div class="column column-1">
            <c:forEach var="helpSlideRow2Column1Link" items="${helpSlideRow2Column1Links}">
                <a href="${currentURI}#">
                    <span class="text">
                        ${helpSlideRow2Column1Link}
                    </span>
                </a>
            </c:forEach>
        </div>

        <div class="column column-2">
            <c:forEach var="helpSlideRow2Column2Link" items="${helpSlideRow2Column2Links}">
                <a href="${currentURI}#">
                    <span class="text">
                        ${helpSlideRow2Column2Link}
                    </span>
                </a>
            </c:forEach>
        </div>

        <div class="column column-3">
            <a href="${currentURI}#" class="verybook-help-you">
                <div class="wrapper">
                    <span class="text">
                        <%-- FIXME ${helpSlideNumber} нужно будет убрать --%>
                        Verybook<br>поможет ${helpSlideNumber}
                    </span>
                </div>
                <img src="resources/vb/svg/vb/question-mark-beauty.svg" width="49" height="49">
            </a>
            <p class="verybook-help-you">
                Ever even heard of Hogwarts when the letters start dropping on the doormat
            </p>
        </div>
    </div>
</div>