<#import "template.ftl" as layout>
<@layout.emailLayout>

    <h2 style="font-size: 24px; font-weight: 700; margin-bottom: 24px;">Réinitialisation de votre mot de passe</h2>

    <p style="font-size: 14px; line-height: 28px; margin-bottom: 24px;">
        <#if user.firstName??>
            Bonjour <strong>${user.firstName}</strong>,
        <#else>
            Bonjour <strong>${user.username}</strong>,
        </#if>

        <br><br>
        Si vous n'êtes pas à l'origine de cette demande, vous pouvez tout simplement ignorer cet e-mail.
    </p>

    <p style="font-size: 14px; line-height: 28px; margin-bottom: 24px;">
        Vous avez reçu cet e-mail car vous avez demandé à réinitialiser le mot de passe de votre compte.<br><br>
        Pour choisir un nouveau mot de passe et valider votre demande, cliquez sur le bouton ci-dessous :
    </p>

    <div style="text-align: center;">
        <a href="${link}" class="button">Changer mon mot de passe</a>
    </div>

    <p style="font-size: 12px; color: #BACAE3; line-height: 24px; margin-top: 24px;">
        Le lien ci-dessus est valable pendant <strong>${linkExpirationFormatter(linkExpiration)}</strong>.
        Après ce délai, vous devrez à nouveau demander une réinitialisation de votre mot de passe.
    </p>

    <p style="font-size: 12px; color: #BACAE3; line-height: 24px;">
        Si vous rencontrez des problèmes avec le bouton ci-dessus, copiez et collez ce lien dans votre navigateur :
    </p>

    <p style="font-size: 12px;">
        <a href="${link}" class="link">${link}</a>
    </p>

</@layout.emailLayout>
