<%-- This page includes the gadgets for the shipping page for a single shipping group.
     (That is, all items will be shipped to the same shipping address) --%>

<dsp:page>
  <crs:pageContainer divId="atg_store_cart" 
                     index="false" 
                     follow="false"
                     bodyClass="atg_store_checkout atg_store_editBillingAddress atg_store_rightCol">
    <jsp:body>
      <fmt:message key="checkout_title.checkout" var="title"/>
      <crs:checkoutContainer currentStage="billing" 
                             showOrderSummary="true" 
                             title="${title}">
          <jsp:body>
          <div id="atg_store_checkout" class="atg_store_main">
            <dsp:include page="gadgets/shippingAddressEdit.jsp" flush="true"/>
          </div>
        </jsp:body>
      </crs:checkoutContainer>
    </jsp:body>
  </crs:pageContainer>
</dsp:page>
<%-- @version $Id: //edu/ILT-Courses/main/COMM/StudentFiles/COM/setup/copy-files/apps/MyStore/Storefront/j2ee-apps/Storefront/store.war/checkout/billingAddressEdit.jsp#3 $$Change: 635816 $--%>
