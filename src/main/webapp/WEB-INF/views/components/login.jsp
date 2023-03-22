<style>
    .form {
        padding: 10px;
        height: fit-content;
        width: 40%;

        margin-right: 2rem;
    }

    #password, #login {
        width: 100%;
        padding: 12px 20px;
        margin: 8px 0;
        display: inline-block;
        border: 1px solid #ccc;
        border-radius: 4px;
        box-sizing: border-box;
    }

    #submit, #reset {
        width: 100%;
        background-color: #04AA6D;
        color: white;
        padding: 14px 20px;
        margin: 8px 0;
        border: none;
        border-radius: 4px;
        cursor: pointer;

        margin: .5rem;
    }

    #submit:hover , #reset:hover {
        background-color: #45a049;
    }

    .controllers {
        display: flex;
    }



    @media screen and  (max-width: 500px) {
        .form {
            width: 100%;
            padding: 20px;
            margin-bottom: 2rem;
        }
    }
</style>

<!-- form  -->
<div class="form">
    <label>Login</label>
    <input  type="text" class="error" id="login" placeholder="Your Login..">
    <input  type="text" class="error" id="password" placeholder="Your Password..">

    <div class="controllers">
        <button id="submit">Submit</button>
        <button id="reset">Reset</button>
    </div>
    <p>don't have an account </p><a href="signup" id="signup">SIGNUP</a>
</div>

<script>
    const submit = document.getElementById("submit");
    const reset = document.getElementById("reset");

    const login = document.getElementById("login");
    const password = document.getElementById("password");

    const signup = document.getElementById("signup");

    reset.addEventListener("click", e => {
        login.value = "";
        password.value = "";
    });

    submit.addEventListener("click", e => {
        const email = login.value.trim();
        const pass = password.value.trim();

        console.log(email, " ", pass);

        let formData = new FormData();

        formData.append("email", email);
        formData.append("password", pass);

        let data = new URLSearchParams(formData);

        fetch("http://localhost:8080/demo1_war_exploded/login", {
            method: "POST",
            headers:{
                "Content-Type": "application/x-www-form-urlencoded",
            },
            body: data
        });
    })

</script>
