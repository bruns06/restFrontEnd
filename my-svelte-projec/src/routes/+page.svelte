<script>
// @ts-nocheck
    // @ts-ignore
    var data = []
    fetch("http://localhost:5153/api/Configurazione")
    .then(res => res.json())
    .then(res => {console.log(res); data=res})
   // export let data = [];
</script>

{#each data as confs}
    <h2>{confs.name}</h2>
    <h2>{confs.confId}</h2>
    <h2>{confs.pezzi}</h2>
    <h2>{confs.utenteId}</h2>
{/each}
