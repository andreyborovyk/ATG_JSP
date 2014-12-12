<%@ page contentType="application/json; charset=UTF-8" import="atg.servlet.*,atg.nucleus.*"%>
<dsp:page>
  <dsp:importbean bean="/atg/dynamo/droplet/ErrorMessageForEach"/>
  
  <json:object>
    <json:property name="error" value="true"/>
    <%-- The real error URL that the server would have redirected to if the request wasn't AJAX --%>
    <json:property name="errorUrl" escapeXml="false">
      <dsp:valueof bean="/atg/store/order/purchase/CartFormHandler.addItemToOrderErrorURL" valueishtml="true"/>
    </json:property>
    <json:array name="errors">   
      
      <%-- Render Formhandler Errors --%>
      <dsp:droplet name="ErrorMessageForEach">
        <dsp:param param="/atg/store/order/purchase/CartFormHandler.formExceptions" name="exceptions"/>        
        <dsp:oparam name="output">
          <json:property>
            <dsp:valueof param="message" valueishtml="true"/>
          </json:property>
        </dsp:oparam>
      </dsp:droplet>

    </json:array>
  </json:object>
</dsp:page>
<%-- @version $Id: //edu/ILT-Courses/main/COMM/StudentFiles/COM/setup/copy-files/apps/MyStore/Storefront/j2ee-apps/Storefront/store.war/cart/json/errors.jsp#3 $$Change: 635816 $--%>
