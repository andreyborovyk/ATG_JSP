<dsp:page>

  <%-- This gadget renders the cart subtotal 

       Form Condition:
       - This gadget must be contained inside of a form.
         CartFormHandler must be invoked from a submit 
         button in the form for these fields to be processed
  --%>

  <dsp:importbean bean="/atg/commerce/ShoppingCart"/>
  
  <dsp:getvalueof var="subtotal" vartype="java.lang.Double" bean="ShoppingCart.current.priceInfo.amount"/>
  <dsp:getvalueof var="strshipping" vartype="java.lang.Double" bean="ShoppingCart.current.priceInfo.shipping" />
  <dsp:getvalueof var="strtax" vartype="java.lang.Double" bean="ShoppingCart.current.priceInfo.tax" />
  <dsp:getvalueof var="currencyCode" vartype="java.lang.String" bean="ShoppingCart.current.priceInfo.currencyCode"/>

  <td class="atg_store_subTotal" colspan="2">
    <p>
      <fmt:message key="common.subTotal"/>:
      <strong>
        <dsp:include page="/global/gadgets/formattedPrice.jsp">
          <dsp:param name="price" value="${subtotal }"/>
        </dsp:include>
      </strong>
    </p> 
  </td>
</dsp:page>
<%-- @version $Id: //edu/ILT-Courses/main/COMM/StudentFiles/COM/setup/copy-files/apps/MyStore/Storefront/j2ee-apps/Storefront/store.war/cart/gadgets/subtotal.jsp#3 $$Change: 635816 $--%>
