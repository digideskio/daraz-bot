
module.exports = (robot) ->
  robot.hear /ぬ.*る.*ぽ/, (msg) ->
    msg.send "#{prefix(msg)}にゃーん"

  robot.hear /だらず((さん)?.*)/, (msg) ->
    if msg.match[2]?
      msg.send "#{prefix(msg)}にゃーん"
    else
      msg.send "#{prefix(msg)}さんを付けろよデコスケ野郎っ！"

  robot.hear /こたつ/, (msg) ->
    msg.send "#{prefix(msg)}しまえ"

  prefix = (msg) ->
    nya_ns = [':nya-n:', ':nya-n2:', ':nya-n3:', ':nya-n4:']
    "@#{msg.message.user.name}: #{msg.random nya_ns} ＜ "
