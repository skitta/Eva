# Description:
#   Track your express packages.
#
# Commands:
#   hubot track express <express number>  - Add track task to server.

module.exports = (robot) ->
  robot.respond /track express (\w+\d+)$/i, (msg) ->

    robot.http("http://127.0.0.1:8000/express/#{msg.match[1]}")
      .header('Content-Type', 'application/json')
      .post() (err, res, body) ->
        if err
          msg.send "#{err}"
          return
        msg.send "#{body}"
