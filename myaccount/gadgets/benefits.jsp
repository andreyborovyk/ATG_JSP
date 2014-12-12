<dsp:page>
  <dsp:getvalueof var="contextPath" vartype="java.lang.String" bean="/OriginatingRequest.contextPath"/>
  <%-- Benefits section --%>
  <div class="atg_store_registrationBenefits aside">
    <h2><fmt:message key="myaccount_registration.Benefits"/></h2>
    
    <ul>
      <li>
        <fmt:message key="myaccount_registration.BenefitPromo"/>
      </li>
      <li>
        <fmt:message key="myaccount_registration.BenefitCard"/>
      </li>
      <li>
        <fmt:message key="myaccount_registration.BenefitAddress"/>
      </li>
      <li>
        <fmt:message key="myaccount_registration.BenefitCheckout"/>
      </li>
      <li>
        <fmt:message key="myaccount_registration.BenefitTrackOrder"/>
      </li>
      <li>
        <fmt:message key="myaccount_registration.BenefitOrderHistory"/>
      </li>
      <li>
        <fmt:message key="myaccount_registration.BenefitWishList"/>
      </li>
      <li>
        <fmt:message key="myaccount_registration.BenefitGiftList"/>
      </li>
      <li>
        <fmt:message key="myaccount_registration.BenefitShoppingCart"/>
      </li>
    </ul>
    
    <%-- Link to privacy policy popup --%>
    <fmt:message var="privacyPolicyTitle" key="common.button.privacyPolicyTitle"/>
    <dsp:a href="${contextPath}/company/privacyPolicyPopup.jsp"
      iclass="atg_store_benefitsPopUp" target="popup" title="${privacyPolicyTitle}">
      <fmt:message key="common.button.privacyPolicyText"/>
    </dsp:a>
  </div>
</dsp:page>
<%-- @version $Id: //edu/ILT-Courses/main/COMM/StudentFiles/COM/setup/copy-files/apps/MyStore/Storefront/j2ee-apps/Storefront/store.war/myaccount/gadgets/benefits.jsp#3 $$Change: 635816 $--%>
