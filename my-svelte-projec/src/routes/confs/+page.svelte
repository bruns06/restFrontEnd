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
    <div class="card-container">
    {#each data as confs}
        <div class="card">
            <div class="card-content">
                <h2>{confs.name}</h2>
                <h2>{confs.confId}</h2>
                <h2>{confs.pezzi}</h2>
                <h2>{confs.utenteId}</h2>
            </div>
        </div>
    {/each}
    </div>   

    
<style>
    .card-container {
      display: flex;
      flex-wrap: wrap;
    }
  
    .card {
      width: 300px;
      margin: 10px;
      padding: 16px;
      border: 1px solid #ccc;
      border-radius: 4px;
    }
  
    .card-content {
      display: flex;
      flex-direction: column;
    }
  
    h3 {
      margin-top: 0;
    }
  </style>