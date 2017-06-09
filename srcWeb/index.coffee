$(document).ready ->
  if /(iPhone|iPad|iPod|iOS)/i.test(navigator.userAgent)
    #判断iPhone|iPad|iPod|iOS
    console.log navigator.userAgent
    window.location.href = 'https://itunes.apple.com/us/app/qi-xian-qin/id1151658693?l=zh&ls=1&mt=8'
  else if /(Android)/i.test(navigator.userAgent)
    #判断Android
    console.log navigator.userAgent
    window.location.href = 'http://app.qq.com/#id=detail&appid=1105807550'
  else
    #pc
    console.log navigator.userAgent
    window.location.href = 'http://app.qq.com/#id=detail&appid=1105807550'
  return
