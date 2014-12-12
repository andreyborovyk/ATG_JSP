<dsp:page>
  <%--
      Layout page for profile password edit functionality.
  --%>
  <crs:pageContainer divId="atg_store_profilePasswordEditIntro" 
                     index="false" follow="false"
                     bodyClass="atg_store_myAccountPage atg_store_leftCol">
    <jsp:body>
    <div class="atg_store_nonCatHero"><h2 class="title"><fmt:message key="myaccount_profilePasswordEdit.title"/></h2></div>
      <dsp:include page="gadgets/myAccountMenu.jsp" flush="true">
        <dsp:param name="selpage" value="MY PROFILE" />
      </dsp:include>

      <div class="atg_store_main atg_store_myAccount">
        
        <dsp:include page="gadgets/profilePasswordEdit.jsp" flush="true"/>
      
      </div>
    </jsp:body>
  </crs:pageContainer>
</dsp:page>
<%-- @version $Id: //edu/ILT-Courses/main/COMM/StudentFiles/COM/setup/copy-files/apps/MyStore/Storefront/j2ee-apps/Storefront/store.war/myaccount/profilePasswordEdit.jsp#3 $$Change: 635816 $--%>
