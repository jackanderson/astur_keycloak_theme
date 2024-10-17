<#macro termsAcceptance>
    <#if termsAcceptanceRequired??>
        <div class="form-group">
            <div class="${properties.kcInputWrapperClass!}">
                ${msg("termsTitle")}
                <div id="kc-registration-terms-text">
                    <div style="width: 100%, overflow-y: scroll, height: 350px, background-color: #000716"> ${kcSanitize(msg("termsText"))?no_esc} </div>
                </div>
            </div>
        </div>
        <div class="form-group">
            <div class="${properties.kcLabelWrapperClass!}">
                <input type="checkbox" id="termsAccepted" name="termsAccepted" class="${properties.kcCheckboxInputClass!}"
                       aria-invalid="<#if messagesPerField.existsError('termsAccepted')>true</#if>"
                />
                <label for="termsAccepted" class="${properties.kcLabelClass!}">${msg("acceptTerms")}</label>
            </div>
            <#if messagesPerField.existsError('termsAccepted')>
                <div class="${properties.kcLabelWrapperClass!}">
                            <span id="input-error-terms-accepted" class="${properties.kcInputErrorMessageClass!}" aria-live="polite">
                                ${kcSanitize(messagesPerField.get('termsAccepted'))?no_esc}
                            </span>
                </div>
            </#if>
        </div>
    </#if>
</#macro>