<dsp:page>

  <crs:pageContainer divId="atg_store_myOrdersIntro" 
                     index="false" follow="false"
                     bodyClass="atg_store_myAccountPage atg_store_leftCol">
    <jsp:body>
    <div class="atg_store_nonCatHero"><h2 class="title"><fmt:message key="myaccount_myOrders.title"/></h2></div>
      <dsp:include page="gadgets/myAccountMenu.jsp" flush="true">
        <dsp:param name="selpage" value="MY ORDERS" />
      </dsp:include>
      <div class="atg_store_main atg_store_myAccount">
        
        <dsp:include page="/myaccount/gadgets/myOrders.jsp" flush="true" />
      </div>
    </jsp:body>
  </crs:pageContainer>
</dsp:page>
<%-- @version $Id: //edu/ILT-Courses/main/COMM/StudentFiles/COM/setup/copy-files/apps/MyStore/Storefront/j2ee-apps/Storefront/store.war/myaccount/myOrders.jsp#3 $$Change: 635816 $--%>
