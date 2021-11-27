const express = require('express')
const mongodb = require('mongodb')

const app = express()
let db

let connectionString = `mongodb://mongo:27017/crud_db`

mongodb.connect(
  connectionString,
  { useNewUrlParser: true, useUnifiedTopology: true },
  function (err, client) {
    db = client.db()
    app.listen(5000)
  }
)

app.use(express.json())

app.post('/create-data', function (req, res) {
  // Sending request to create a data
  db.collection('datac').insertOne({ text: req.body.text }, function (
    err,
    info
  ) {
    res.json(info.ops[0])
  })
})

app.get('/', function (req, res) {
  // getting all the data
  db.collection('datac')
    .find()
    .toArray(function (err, items) {
      res.send(items)
    })
})

app.put('/update', function (req, res) {
  // updating a data by it's ID and new value
  db.collection('datac').findOneAndUpdate(
    { _id: new mongodb.ObjectId(req.body.id) },
    { $set: { text: req.body.text } },
    function () {
      res.send('Success updated!')
    }
  )
})

app.delete('/delete', function (req, res) {
  // deleting a data by it's ID
  db.collection('datac').deleteOne(
    { _id: new mongodb.ObjectId(req.body.id) },
    function () {
      res.send('Successfully deleted!')
    }
  )
})

app.get('/testRoute', (req, res) => res.end('Hello from Server!'))
