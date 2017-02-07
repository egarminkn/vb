<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<c:set var="bodyClass" value="hidden-partners-on-shelf" scope="request"/>
<c:set var="mainClass" value="info" scope="request"/>
<c:set var="sloganAdditionalClass" value="" scope="request"/>
<c:set var="isAbout" value="true" scope="request"/>

<jsp:include page="fragments/header.jsp"/>

            <div class="columns">
                <div class="column-1">
                </div>

                <div class="column-2">
                    <h1 class="info-header">
                        ${infoHeader}
                    </h1>

                    <div class="info-body">
                        ${infoBody}
                    </div>
                </div>

                <div class="column-3">
                </div>
            </div>
        </main>

<jsp:include page="fragments/footer.jsp"/>