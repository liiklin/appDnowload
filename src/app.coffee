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

# app.get "/", (req, res) ->
  # hotappUrl = "http://2bai.co/11477762"
  # res.redirect hotappUrl
app.get '/', (req, res) ->
  res.render 'index',
    title: '欢迎使用七弦琴APP'
  return

server = app.listen 3000, () ->
  host = server.address().address
  port = server.address().port

  console.log "Example app listening at http://%s:%s", host, port
