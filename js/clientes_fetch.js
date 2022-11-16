const app=new Vue({
    el:"#app",
    data:{
        clientes:[],
    },
    created(){
        this.fetchData("http://localhost:5000/clientes")
    },
    methods:{
        fetchData(url){
            fetch(url)
                .then(response => response.json())
                .then(data => {
                    this.clientes=data
                })
                .catch(err => {
                    console.error(err)
                })
            }
    },   
    
})
