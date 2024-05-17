<#import "template.ftl" as layout>
<@layout.emailLayout>fghfgfhh
${kcSanitize(msg("emailTestBodyHtml",realmName))?no_esc}
</@layout.emailLayout>
