const express = require('express')
const app = express()
const port =3000

app.get('/', (req,res) =>{
    res.send('<h1>Expresss Demo App</h1> <h2> Message: Sucesss again</h2> <p> version 3.0</p>');
})

app.get('/products', (req,res) => {
    res.send([
        {
            id : '101',
            price: 100
        },
        {
            id : '102',
            price: 150
        },
        {
            id : '103',
            price: 200
        }
    ])
})

app.listen(port, () => {
    console.log(`Demo app is up and listening to port : ${port}`)
})