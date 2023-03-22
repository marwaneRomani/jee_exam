<style>
  /* footer style */

  .footer-basic {
    padding:40px 0;
    background-color:#ffffff;
    color:#4b4c4d;

    position: absolute;
    bottom: 0;

    width: 100%;

    display: flex;
    flex-direction: column;
    justify-content: center;
    align-items: center;
  }

  .footer-basic ul {
    padding:0;
    list-style:none;
    text-align:center;
    font-size:18px;
    line-height:1.6;
    margin-bottom:0;
  }

  .footer-basic li {
    padding:0 10px;
  }

  .footer-basic ul a {
    color:inherit;
    text-decoration:none;
    opacity:0.8;
  }

  .footer-basic ul a:hover {
    opacity:1;
  }

  .footer-basic .list-inline {
    display: flex;
    justify-content: center;
    align-items: center;
  }

  .footer-basic .social {
    text-align:center;
    padding-bottom:25px;
  }

  .footer-basic .social > a {
    font-size:24px;
    width:40px;
    height:40px;
    line-height:40px;
    display:inline-block;
    text-align:center;
    border-radius:50%;
    border:1px solid #ccc;
    margin:0 8px;
    color:inherit;
    opacity:0.75;
  }

  .footer-basic .social > a:hover {
    opacity:0.9;
  }

  .footer-basic .copyright {
    margin-top:15px;
    text-align:center;
    font-size:13px;
    color:#aaa;
    margin-bottom:0;
  }

  /* footer style */

</style>

<footer class="footer-basic">
  <ul class="list-inline">
    <li class="list-inline-item"><a href="#">Home</a></li>
    <li class="list-inline-item"><a href="#">Tasks</a></li>
    <li class="list-inline-item"><a href="#">Terms</a></li>
    <li class="list-inline-item"><a href="#">Privacy</a></li>
  </ul>
  <p class="copyright">GL © 2023</p>
</footer>
