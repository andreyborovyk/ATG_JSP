<dsp:page>

  <%-- This page displays Shipping Rates of the Merchant --%>

  <crs:pageContainer divId="atg_store_company" 
                     bodyClass="atg_store_shipping atg_store_company atg_store_leftCol"
                     titleKey="">
    <div class="atg_store_nonCatHero">
      <h2 class="title">
        <fmt:message key="company_shipping.title"/>
      </h2>
    </div>
    <div class="atg_store_main">
      <crs:outMessage key="company_shipping.text"/>
    </div>
    
    <div class="atg_store_companyNavigation aside">
      <dsp:include page="/company/gadgets/navigationPanel.jsp"/>
    </div>
  </crs:pageContainer>
</dsp:page>

<%-- @version $Id: //edu/ILT-Courses/main/COMM/StudentFiles/COM/setup/copy-files/apps/MyStore/Storefront/j2ee-apps/Storefront/store.war/company/shipping.jsp#3 $$Change: 635816 $--%>