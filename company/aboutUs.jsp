<dsp:page>

  <%-- This page is the company's "About Us" page --%>

  <crs:pageContainer divId="atg_store_company"
                     bodyClass="atg_store_aboutUs atg_store_leftCol atg_store_company">
    <crs:getMessage var="storeName" key="common.storeName"/>

    <div class="atg_store_nonCatHero">
      <h2 class="title">
        <crs:outMessage key = "company_aboutUs.title"/>
      </h2>
    </div>

    <div class="atg_store_main">
      <h3>
        <fmt:message key="company_aboutUs.ourHistory"/>
      </h3>

      <p>
        <crs:outMessage key="company_aboutUs.aboutUs" storeName="${storeName}"/>
      </p>
    </div>
      
    <div class="atg_store_companyNavigation aside">
      <dsp:include page="/company/gadgets/navigationPanel.jsp"/>
    </div>
  </crs:pageContainer>

</dsp:page>
<%-- @version $Id: //edu/ILT-Courses/main/COMM/StudentFiles/COM/setup/copy-files/apps/MyStore/Storefront/j2ee-apps/Storefront/store.war/company/aboutUs.jsp#3 $$Change: 635816 $--%>
