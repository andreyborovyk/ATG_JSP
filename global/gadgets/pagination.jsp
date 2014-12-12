<dsp:page>

  <%--  This page is a global page for handling pagination (used OOTB by /myaccount/gadgets/myOrders.jsp).
        Parameters:
        -  arraySplitSize - Number of items to show on each page.
        -  start - Index (1 based) of first element to show on this page.
        -  viewAll (optional) - Set to true if viewAll has been requested.
        -  size - Size of the product Listing to be displayed
        -  itemList - the list of items to page
        -  top - true if this is the top set of links, false if it is the bottom set
  --%>
  
  <dsp:getvalueof id="size" idtype="java.lang.Integer" param="size"/>
  <dsp:getvalueof id="arraySplitSize" idtype="java.lang.Integer" param="arraySplitSize"/>
  <%-- This line is added as weblogic 10.0 converting Integer parameter as Long --%>
  <c:set var="arraySplitSize" value="${arraySplitSize}"/>
  <dsp:getvalueof id="start" idtype="java.lang.String" param="start"/>
  <dsp:getvalueof id="viewAll" param="viewAll"/>
  <dsp:getvalueof id="top" param="top"/>
  <dsp:getvalueof id="itemList" param="itemList"/>

  <c:if test="${size > arraySplitSize}">
  <%--no need to show the pagination when the number of items is less or equal to the defined number of items per page --%>

    <crs:pagination size="${size}" arraySplitSize="${arraySplitSize}" start="${start}"
                    viewAll="${viewAll}" top="${top}" itemList="${itemList}">
      <jsp:attribute name="pageLinkRenderer">
        <dsp:a href="${pageContext.request.requestURI}" title="${linkTitle}">
          <dsp:param name="start" value="${startValue}"/>
          ${linkText}
        </dsp:a>
      </jsp:attribute>
      <jsp:attribute name="viewAllLinkRenderer">
        <dsp:a href="${pageContext.request.requestURI}" title="${linkTitle}"
               iclass="${viewAllLinkClass}">
           <dsp:param name="viewAll" value="true"/>
           <dsp:param name="howMany" param="size"/>
          ${linkText}
        </dsp:a>
      </jsp:attribute>
    </crs:pagination>
  </c:if>  

</dsp:page>

<%-- @version $Id: //edu/ILT-Courses/main/COMM/StudentFiles/COM/setup/copy-files/apps/MyStore/Storefront/j2ee-apps/Storefront/store.war/global/gadgets/pagination.jsp#3 $$Change: 635816 $ --%>
