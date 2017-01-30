<!DOCTYPE html>

<#include init />

<#if parking_mode>
<#include "${full_templates_path}/parking.ftl" />
<#else>

<html class="${root_css_class}" dir="<@liferay.language key="lang.dir" />" lang="${w3c_language_id}">

<head>
	<title>${the_title} - ${company_name}</title>
	<meta http-equiv="content-type" content="text/html; charset=UTF-8">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta content="initial-scale=1.0, width=device-width" name="viewport" />
	
	<link href="${css_folder}/reset.css" rel="stylesheet">
	<#if !is_signed_in && !is_login>
    <!-- CSS Plugins -->
    <link rel="stylesheet" href="${css_folder}/font-awesome.css">
    <link rel="stylesheet" href="${css_folder}/lightbox.css">

    <!-- CSS Global -->
    <link href="${css_folder}/styles.css" rel="stylesheet">

    <!-- Fonts -->
    <link href="${css_folder}/css.css" rel="stylesheet" type="text/css">
    <link href="${css_folder}/css_002.css" rel="stylesheet" type="text/css">
    <#else>	
		<@liferay_util["include"] page=top_head_include />	
    </#if>
 </head>

<body data-spy="scroll" data-target=".navbar">
<!-- PRELOADER
    ================================================== -->
    <div class="preloader fadeout" style="display: none;">
      
      <div class="preloader__container">
        <img src="${images_folder}/icon_cap.svg" alt="Loading...">
        <div>Loading <span>Loading</span></div>
      </div>

    </div> <!-- / .preloader -->
<#if is_signed_in || is_login>	
<@liferay_ui["quick-access"] contentId="#main-content" />

<@liferay_util["include"] page=body_top_include />

<@liferay.control_menu />
</#if>

<section class="section_welcome" id="section_welcome">
<div class="container-fluid" id="wrapper" style="padding-left: 0px;padding-right: 0px;">
<#if is_signed_in || is_login>	
			<header class="navbar navbar-inverse navbar-porygon">
				<div class="container-fluid" id="banner" role="banner">
					<div class="navbar-header" id="heading">
						<#if has_navigation>
							<button aria-controls="navigation" aria-expanded="false" class="collapsed navbar-toggle" data-target="#navigationCollapse" data-toggle="collapse" type="button">
								<span class="icon-bar"></span>
								<span class="icon-bar"></span>
								<span class="icon-bar"></span>
							</button>
						</#if>

						<a class="${logo_css_class}" href="${site_default_url}" title="<@liferay.language_format arguments="${site_name}" key="go-to-x" />">
							<img alt="${logo_description}" height="56" src="${site_logo}" />
							<#if show_site_name>
								${site_name}
							</#if>
						</a>
<!--						<div class="pull-right language-bar">
							<@liferay_ui["language"]/>
						</div>	 -->
					</div>

					<#if has_navigation>
						<#include "${full_templates_path}/navigation.ftl" />
					</#if>
				</div>
			</header>
		<h1 class="hide-accessible">${the_title}</h1>

<!--		<nav id="breadcrumbs">
			<@liferay.breadcrumbs />
		</nav> -->
</#if>
		<#if selectable>
			<@liferay_util["include"] page=content_include />
		<#else> 
			${portletDisplay.recycle()}	
			${portletDisplay.setTitle(the_title)}
			<@liferay_theme["wrap-portlet"] page="portlet.ftl">
				<@liferay_util["include"] page=content_include />
			</@>
		</#if>
<#if is_signed_in || is_login>
	<footer id="footer" role="contentinfo">
		<p class="powered-by">
			<@liferay.language key="powered-by" /> <a href="http://www.s-trade.com.pl" rel="external">Sirius Trade Sp. z o.o.</a>
		</p>
	</footer>
<#else>	
	     <!-- Footer -->
    <footer class="footer">

      <!-- Footer info -->
      <div class="container">
        <div class="row">
          <div class="col-sm-4">
            
            <!-- Contact info -->
            <h5 class="footer__heading">
              <@liferay.language key="st-contact-info" />
            </h5>
            <ul class="footer__info">
              <li>
                <i class="fa fa-map-marker"></i> ${footer_address} 
              </li>
              <#if footer_phone_enabled>
              <li>
                <i class="fa fa-phone"></i> ${footer_address_phone}
              </li>
              </#if>
              <li>
                <i class="fa fa-envelope-o"></i> <a href="mailto:${footer_email}">${footer_email}</a>
              </li>
            </ul>

          </div>
        </div> <!-- / .row -->
        <div class="row">
          <div class="col-sm-12">
            
            <!-- Copyright -->
            <div class="footer__copyright">
              <i class="fa fa-copyright"></i> 2017 Sirius Trade.
            </div>

          </div>
        </div>
      </div> <!-- / .container -->
      
    </footer>
</#if>	
</div>
</section>
<#if !is_signed_in && !is_login>
	<!-- JAVASCRIPT
    ================================================== -->

    <!-- JS Global -->
    <script src="${javascript_folder}/jquery.js"></script>
    <script src="${javascript_folder}/bootstrap.js"></script>

    <!-- JS Plugins -->
    <script src="${javascript_folder}/smoothscroll.js"></script>
    <script src="${javascript_folder}/imagesloaded.js"></script>
    <script src="${javascript_folder}/isotope.js"></script>
    <script src="${javascript_folder}/lightbox.js"></script>
    <div id="lightboxOverlay" class="lightboxOverlay" style="display: none;">
    </div>
    <div id="lightbox" class="lightbox" style="display: none;">
    <div class="lb-outerContainer">
    <div class="lb-container">
    <img class="lb-image" src="data:image/gif;base64,R0lGODlhAQABAIAAAP///wAAACH5BAEAAAAALAAAAAABAAEAAAICRAEAOw==">
    <div class="lb-nav">
    <a class="lb-prev" href="">
    </a>
    <a class="lb-next" href="">
    </a>
    </div><div class="lb-loader"><a class="lb-cancel"></a></div></div></div><div class="lb-dataContainer"><div class="lb-data"><div class="lb-details"><span class="lb-caption"></span><span class="lb-number"></span></div><div class="lb-closeContainer"><a class="lb-close"></a></div></div></div></div>

    <!-- JS Custom -->
    <script src="${javascript_folder}/custom.js"></script>
    <#if ga_enabled>
    	<#include "${full_templates_path}/ga.ftl" />
    </#if>
<#else>
	<@liferay_util["include"] page=body_bottom_include />
	<@liferay_util["include"] page=bottom_include />
</#if>
</body>
</html>
</#if>