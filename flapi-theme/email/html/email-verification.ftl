<#import "template.ftl" as layout>
<@layout.emailLayout>

    <h2 style="font-size: 24px; font-weight: 700; margin-bottom: 24px;">Vérification de votre adresse email</h2>

    <p style="font-size: 14px; line-height: 28px; margin-bottom: 24px;">
        <#if user.firstName??>
            Bonjour <strong>${user.firstName}</strong> 👋,
        <#else>
            Bonjour <strong>${user.username}</strong> 👋,
        </#if>
        <br><br>
        Merci de vous être inscrit sur Flapi. Pour activer votre compte, cliquez sur le bouton ci-dessous afin de vérifier votre adresse email.<br><br>
        Ce lien est valide pendant <strong>${linkExpirationFormatter(linkExpiration)}</strong>.
    </p>

    <div style="text-align: center; margin-bottom: 24px;">
        <a href="${link}" class="button">Vérifier mon adresse email</a>
    </div>

    <p style="font-size: 12px; color: #BACAE3; line-height: 24px;">
        Si vous n’avez pas demandé cette vérification, vous pouvez ignorer ce message.
    </p>

</@layout.emailLayout>