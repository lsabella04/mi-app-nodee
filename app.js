const express = require('express');
const cors = require('cors');
const app = express();
const port = 8085;

app.use(cors());

//servir como contenido estático
app.use(express.static('site'));

app.get('/components', (req, res) =>{
    res.sendFile(__dirname+'/site/components.html');
});

app.get('*', (req, res) =>{
    res.sendFile(__dirname+'/site/404.html');
});

module.exports = app;

if (require.main === module) {
  app.listen(port, () => {
    console.log(`App listening on port ${port}`);
  });
}