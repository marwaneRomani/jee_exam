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
<form class="form" action="addTask">
  <label>Add Task </label>
  <input  type="text"  id="login" name="task" placeholder="Your Task..">

  <div class="controllers">
    <button type="submit" id="submit">Submit</button>
    <button type="reset" id="reset">Reset</button>
  </div>

  <p>Check all other </p><span><a href="tasks" >Tasks</a></span>
</form>