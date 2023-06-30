<script>
    // @ts-nocheck

    import Navbar from "../navbar.svelte";

    

        // @ts-ignore
        var data = []
        fetch("http://localhost:5153/api/Configurazione")
        .then(res => res.json())
        .then(res => {console.log(res); data=res})
       // export let data = [];
    </script>
    <Navbar></Navbar>
    <h1>Configurazioni</h1>
    <div class="card-container">
      
    {#each data as confs}
        <div class="card">
            <div class="card-content">
                <h2>Nome: {confs.name}</h2>
                <h2>Id: {confs.confId}</h2>
                <h2>Id Utente:  {confs.utenteId}</h2>
                <h2>Marca:  {confs.marca}</h2>
            </div>
        </div>
    {/each}
    </div>   

    
<style>

@import url(https://fonts.googleapis.com/css?family=Roboto:300);
    .card-container {
      display: flex;
      flex-wrap: wrap;
    }
  
    .card {
      width: 300px;
      margin: 10px;
      padding: 16px;
      border: 1px solid #000000;
      border-radius: 10px;
      
      background-color: #4CAF50;
      color: white;
      font-family: "Roboto", sans-serif;
    }

    .card:hover{
      background: #43A047;
    }
  
    .card-content {
      display: flex;
      flex-direction: column;
    }
  
    h3 {
      margin-top: 0;
    }

    h1{
      text-align: center;
      font-family: "Roboto", sans-serif;
    }
  </style>