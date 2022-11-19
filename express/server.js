const express = require("express")
const app = express()
const path = require("path")
const port = process.env.PORT || 80
app.use(express.static("public"))
app.get("*", (req, res) => {
	res.sendFile(path.resolve(__dirname, "public", "index.html"))
})
app.listen(port, () => console.log(`Listening on port: ${port}`))
