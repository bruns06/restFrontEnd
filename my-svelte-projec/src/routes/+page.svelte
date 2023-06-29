<script>
// @ts-nocheck
    // @ts-ignore
    var data = []
    fetch("http://localhost:5153/api/Marca")
    .then(res => res.json())
    .then(res => {console.log(res); data=res })
   // export let data = [];
</script>

{#each data as marche}
    <h2>{marche.nomeMarca}</h2>
{/each}
