<script>

    import Navbar from "../navbar.svelte";

</script>
<style>
  a{
    text-decoration: none;
    border: black solid 1px;
    color: black;
    font-size: xx-large;
  }
  a:hover{
    background-color: gray;
  }
</style>
<div class="wrapper"> 
    <header class="site-header">
    <Navbar></Navbar>
    
    </header>
  
    <main>
      <div class="home-page">
        <div class="block">
          <h1>carDb</h1>
          <p class="intro">Un carDb.</p>
          <a href="/creaConfs" class="button">Crea configurazione</a>
        </div>
        <div class="block">
          <h2>Crea la tua nuova macchina!</h2>
          <img src="https://inspirationfeed.com/wp-content/uploads/2014/05/concept-car.jpg" alt="An illustration of me in profile">
        </div>
      </div>
    </main>
  
    <footer>
      <small>Cose legali</small>
    </footer>
  </div>
  