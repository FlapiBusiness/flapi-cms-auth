document.addEventListener("DOMContentLoaded", function () {
    const loginForm = document.querySelector('#kc-reset-password-form');

    if (loginForm) {
        loginForm.addEventListener('submit', function (event) {
            const loginButton = document.querySelector('.flapi__login--button');

            if (loginButton) {
                loginButton.classList.add('loading');
                loginButton.value = 'Connexion...'
                loginButton.disabled = true;
            }
        })
    }
});