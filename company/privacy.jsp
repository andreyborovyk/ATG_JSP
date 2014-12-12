<dsp:page>

  <%-- This page is the company's "Privacy Policy" page --%>

  <crs:pageContainer divId="atg_store_company"
                     bodyClass="atg_store_privacy atg_store_leftCol atg_store_company"
                     titleKey=""
                     index="false"
                     follow="false">
    <crs:getMessage var="storeName" key="common.storeName"/>

    <div class="atg_store_nonCatHero">
    <h2 class="title">
      <fmt:message key="company_privacy.title"/>
    </h2>
    </div>

    <div class="atg_store_main">
      <p>
        <crs:outMessage key="company_privacy.privacyPolicyInfo1" storeName="${storeName}"/>
      </p>
      <p>
        <crs:outMessage key="company_privacy.privacyPolicyInfo2"/>
      </p>
      <p>
        <crs:outMessage key="company_privacy.privacyPolicyDate"/>
      </p>
    </div>
    <div class="atg_store_companyNavigation aside">
      <dsp:include page="/company/gadgets/navigationPanel.jsp"/>
    </div>
  </crs:pageContainer>
</dsp:page>
<%-- @version $Id: //edu/ILT-Courses/main/COMM/StudentFiles/COM/setup/copy-files/apps/MyStore/Storefront/j2ee-apps/Storefront/store.war/company/privacy.jsp#3 $$Change: 635816 $--%>
