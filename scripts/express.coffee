# Description:
#   Track your express packages.
#
# Commands:
#   hubot track express <express number>  - Add track task to server.

module.exports = (robot) ->
  robot.respond /track express (\w+\d+)$/i, (msg) ->
    robot.brain.set msg.match[1], ""
    msg.send "ok"
