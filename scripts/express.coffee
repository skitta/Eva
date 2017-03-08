# Description:
#   Track your express packages.
#
# Commands:
#   hubot track express <express number>  - Add track task to server.

module.exports = (robot) ->
  robot.respond /track express (\w+\d+)/i, (msg) ->
    q = msg.match[1]
    @exec = require('child_process').exec
    command = "/home/pi/bin/goquery express -a #{q}"
    msg.send "ok, add an express tracker."

    @exec command, (error, stdout, stderr) ->
      if error
        msg.send error
      if stdout
        msg.send stdout
      if stderr
        msg.send stderr
