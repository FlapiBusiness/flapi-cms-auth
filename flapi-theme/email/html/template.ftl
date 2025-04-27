<#macro emailLayout>
    <html lang="${locale.language}" dir="${(ltr)?then('ltr','rtl')}">
    <head>
        <style>
            body {
                margin: 0;
                padding: 0;
                background-color: #101623;
                font-family: 'Rubik', 'Open Sans', sans-serif;
                color: #F5F4FB;
            }

            a.button {
                background-color: #8472F3;
                color: white;
                padding: 14px 24px;
                text-decoration: none;
                border-radius: 6px;
                font-weight: 600;
                font-size: 14px;
                display: inline-block;
                text-align: center;
                margin: 24px 0;
            }

            a.button:hover {
                background-color: #6B59D9;
            }

            a.button:active {
                background-color: #6B59D9;
            }

            a.link {
                color: #BDB3FF;
                word-break: break-word;
            }

            .container {
                max-width: 600px;
                margin: 0 auto;
                padding: 20px;
            }

            .footer {
                font-size: 14px;
                color: #BACAE3;
                margin-top: 40px;
                text-align: center;
            }
        </style>
    </head>
    <body>

    <!-- Header (Logo Flapi) -->
    <div style="text-align: center; margin: 20px 0;">
        <img src="https://i.ibb.co/XrTYwX63/flapi-logo-text.png" alt="Flapi" width="150"
             style="display: block; margin: 0 auto;">
    </div>

    <!-- Contenu Email -->
    <div class="container">
        <#nested>
    </div>

    <!-- Footer -->
    <div class="footer">
        <p>
            Une question ? Contactez-nous sur notre adresse email
            <a href="mailto:support@flapi.org" class="link">support@flapi.org</a>.<br><br>
            © 2025 flapi.org
        </p>
    </div>

    </body>
    </html>
</#macro>
