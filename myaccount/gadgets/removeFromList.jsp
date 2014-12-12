<dsp:page>

  <%-- This page removes the Selected Item from Favourites List 
      Parameters - 
      - giftId - Id of the item to be deleted from the Favourites List
      - giftlistId - Id of the Favourites List from which item is to be deleted 
  --%>

  <%-- check if parameter giftlistId and giftId has been passed 
     into page.  if so, then call RemoveItemFromGiftlist droplet 
     to remove item from the giftlist --%>
     
  <dsp:getvalueof var="giftId" param="giftId"/>
  <c:if test="${not empty giftId}">
    <dsp:droplet name="/atg/commerce/gifts/RemoveItemFromGiftlist">
      <dsp:param name="giftlistId" param="giftlistId"/>
      <dsp:param name="giftId" param="giftId"/>
      <dsp:oparam name="error">
        <fmt:message key="myaccount_removeFromList.msgNoGiftListOrNotOwner" />
      </dsp:oparam>
    </dsp:droplet>
  </c:if>

</dsp:page>

<%-- @version $Id: //edu/ILT-Courses/main/COMM/StudentFiles/COM/setup/copy-files/apps/MyStore/Storefront/j2ee-apps/Storefront/store.war/myaccount/gadgets/removeFromList.jsp#3 $$Change: 635816 $--%>