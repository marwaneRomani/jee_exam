<style>
    * {
        margin: 0;
        padding: 0;
        box-sizing: border-box;

        font-family: 'Roboto Mono', monospace;
    }

    /*
        header style
    */

    .header {
        overflow: hidden;
        background-color: #f1f1f1;
        padding: 20px 10px;
    }

    .header a {
        float: left;
        color: black;
        text-align: center;
        padding: 12px;
        text-decoration: none;
        font-size: 18px;
        line-height: 25px;
        border-radius: 4px;
        margin: .2rem;
    }

    .header a.logo {
        font-size: 25px;
        font-weight: bold;
    }

    .header a:hover {
        background-color: #ddd;
        color: black;
    }

    .header a.active {
        background-color: dodgerblue;
        color: white;
    }


    .header-right {
        float: right;
    }

    @media screen and (max-width: 500px) {
        .header a {
            float: none;
            display: block;
            text-align: left;
        }
        .header-right {
            float: none;
        }
    }
    /* header style */
</style>

<header class="header">
    <a href="/home" class="logo">TasksManager</a>
    <div class="header-right">
        <a class="active" href="/home">Home</a>
        <a id="resetData" class="active" href="">Reset</a>
    </div>
</header>
