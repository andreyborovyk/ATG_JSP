<dsp:page>

  <dsp:importbean bean="/atg/commerce/order/purchase/ShippingGroupFormHandler"/>
  <dsp:importbean bean="/atg/commerce/pricing/AvailableShippingMethods"/>
  <dsp:importbean bean="/atg/commerce/ShoppingCart" />
  <dsp:importbean bean="/atg/userprofiling/Profile"/> 
  
  <h2><fmt:message key="checkout_shippingOptions.availableShippingMethods"/></h2>
  
  <dsp:getvalueof var="shippingGroup" param="shippingGroup"/>  
  
  <fieldset class="atg_store_AvailableShippingMethods">
                            
    <ul>
      
      <%-- If shipping group is not passed, get first non-gift shipping group with relationships 
           or first gift shipping group --%>
      <c:if test="${empty shippingGroup}">
        <dsp:getvalueof var="shippingGroup" bean="ShippingGroupFormHandler.firstNonGiftHardgoodShippingGroupWithRels"/>
      </c:if>
      <c:if test="${empty shippingGroup}">
        <dsp:getvalueof var="giftShippingGroups" vartype="java.lang.Object" bean="ShippingGroupFormHandler.giftShippingGroups"/>
        <c:if test="${not empty giftShippingGroups}">
          <dsp:getvalueof var="shippingGroup" value="${giftShippingGroups[0]}"/>
        </c:if>
      </c:if>

      <%-- Get current shipping method defined in the shipping group --%>
      <dsp:getvalueof value="${shippingGroup.shippingMethod}" var="currentMethod"/>

    	FREE SHIPPING
    </ul>
  </fieldset>

</dsp:page>

<%-- @version $Id: //edu/ILT-Courses/main/COMM/StudentFiles/COM/setup/copy-files/apps/MyStore/Storefront/j2ee-apps/Storefront/store.war/checkout/gadgets/shippingOptions.jsp#3 $$Change: 635816 $--%>