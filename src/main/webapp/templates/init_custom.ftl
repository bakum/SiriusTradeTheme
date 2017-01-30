<#--
This file allows you to override and define new FreeMarker variables.
-->
<#assign
	login_url = themeDisplay.getURLCurrent()
	
	is_login = login_url?contains("com_liferay_login_web_portlet_LoginPortlet")
	
	parking_mode = getterUtil.getBoolean(theme_settings["parking-mode"]!"", true) && !is_login && !is_signed_in

	footer_company_name = theme_settings["footer-company-name"]
	
	footer_address = theme_settings["footer-address"]
	
	footer_address_phone = theme_settings["footer-address-phone"]
	
	footer_email = theme_settings["footer-email"]
	
	footer_phone_enabled = getterUtil.getBoolean(theme_settings["footer-address-phone-enabled"]!"", true)
	
	ga_enabled = theme_settings["site-ga-id"]??
/>

<#if ga_enabled>
	<#assign site_ga_id = theme_settings["site-ga-id"] />
</#if>