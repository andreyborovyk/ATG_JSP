<dsp:page>
  
  <%-- This page renders the Continue Shopping button on the Wish list page --%>

  <dsp:importbean bean="/atg/store/order/purchase/CartFormHandler"/>
  <dsp:importbean bean="/atg/commerce/gifts/GiftlistFormHandler"/>

  <div class="atg_store_formActions">
    
    <div class="atg_store_continue">

      <dsp:form action="${pageContext.request.requestURI}"
          method="post" formid="wishListContinueForm">

        <%-- Display form errors if any --%>
        <dsp:include page="/myaccount/gadgets/myAccountErrorMessage.jsp">
          <dsp:param name="formHandler" bean="GiftlistFormHandler"/>
        </dsp:include>

        <%-- Render the Continue Shopping button --%>
        <crs:continueShopping>
          <dsp:input type="hidden" bean="CartFormHandler.cancelURL"
                     value="${continueShoppingURL}"/>
        </crs:continueShopping>
        <fmt:message key="common.button.continueShoppingText" var="continueShopping"/>
        <span class="atg_store_basicButton secondary">
          <dsp:input  type="submit" bean="CartFormHandler.cancel"
                      value="${continueShopping}"
                      iclass="atg_store_button"/>
        </span>
      </dsp:form>

    </div>    
  </div>

</dsp:page>
<%-- @version $Id: //edu/ILT-Courses/main/COMM/StudentFiles/COM/setup/copy-files/apps/MyStore/Storefront/j2ee-apps/Storefront/store.war/myaccount/gadgets/myWishListContinue.jsp#3 $$Change: 635816 $--%>
