express = require "express"
useragent = require "express-useragent"
logger = require "morgan"
app = express()

# logger
app.use logger "dev"

# 静态文件
app.use "/static", express.static "static"

# 模板引擎
app.set "view engine", "pug"

# useragent
app.use useragent.express()

app.get "/", (req, res) ->
  resObj =
    title:"七弦琴app下载页面"
  res.render "index" ,resObj

app.get "/download" , (req, res) ->
  baseFilePath = "static/files/"
  apkFile = "app-snapEnvSevenipr-release.apk"

  res.download "#{baseFilePath}/#{apkFile}"

server = app.listen 3000, () ->
  host = server.address().address
  port = server.address().port

  console.log "Example app listening at http://%s:%s", host, port
