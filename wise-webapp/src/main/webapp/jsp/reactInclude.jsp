<%@ taglib uri = "http://java.sun.com/jsp/jstl/functions" prefix = "fn" %>
<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" %>

<!DOCTYPE html>
<html lang="${fn:substring(locale,0,2)}">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <meta charset="utf-8" />
    <base href="${requestScope['site.baseurl']}/static/webapp/">

    <link rel="preload" href="https://fonts.googleapis.com/css2?family=Montserrat:wght@100;200;300;400;600&display=swap" as="style" onload="this.onload=null;this.rel='stylesheet'" crossorigin>
    <%@ include file="/jsp/pageHeaders.jsf" %>

    <title>WiseMapping</title>

    <script>
        window.serverconfig = {
            apiBaseUrl: '${requestScope['site.baseurl']}',
            analyticsAccount: '${requestScope['google.analytics.account']}',
            clientType: 'rest',
            recaptcha2Enabled: ${requestScope['google.recaptcha2.enabled']},
            recaptcha2SiteKey: '${requestScope['google.recaptcha2.siteKey']}',
            googleOauth2Url: '${requestScope['security.oauth2.google.url']}'
        };

    </script>
    <c:if test="${requestScope['google.analytics.enabled']}">
      <!-- Google Ads Sense Config. Lazy loading optimization -->
      <script type="text/javascript">
          function downloadJsAtOnload() {
              setTimeout(function downloadJs() {
                  var element = document.createElement("script");
                  element.setAttribute("data-ad-client", "ca-pub-4996113942657337");
                  element.async = true;
                  element.src = "https://pagead2.googlesyndication.com/pagead/js/adsbygoogle.js";
                  document.body.appendChild(element);
              }, 50);
          };

          window.addEventListener("load", downloadJsAtOnload, false);
      </script>
    </c:if>

    <style>
        html {
            overflow: hidden;
        }

        body {
            height: 100vh;
            width: 100vw;
            min-width: 100vw;
            min-height: 100vh;
            margin: 0px;
            overflow: hidden;
            display: flex;
            flex-direction: column;
        }

        body > main {
            flex-grow: 1;
            overflow-x: auto;
        }

        header {
            border: none !important;
        }

        extended-uportal-header {
            display: block;
            height: var(--recia-header-height);
        }
    </style>
</head>

<body>
<%@ include file="/jsp/extendedUportalHeader.jsf" %>
<main>
    <noscript>You need to enable JavaScript to run this app.</noscript>
    <div id="root"></div>

    <script type="text/javascript" src="${requestScope['site.static.js.url']}/webapp/vendors.bundle.js" crossorigin="anonymous" async></script>
    <script type="text/javascript" src="${requestScope['site.static.js.url']}/webapp/app.bundle.js" crossorigin="anonymous" async></script>
</main>
<%@ include file="/jsp/extendedUportalFooter.jsf" %>
</body>

</html>
