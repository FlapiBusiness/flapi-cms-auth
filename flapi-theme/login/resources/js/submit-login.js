document.addEventListener("DOMContentLoaded", function () {
    const loginForm = document.querySelector('#kc-form-login');

    if (loginForm) {
        loginForm.addEventListener('submit', function (event) {
            const loginButton = document.querySelector('#kc-login');

            if (loginButton) {
                loginButton.classList.add('loading');
                loginButton.value = 'Connexion...'
                loginButton.disabled = true;
            }
        })
    }
});