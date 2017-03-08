# Description:
#   Today's weather information for a given city.
#
# Commands:
#   hubot weather <city>  - query today's weather of <city>.

module.exports = (robot) ->
  robot.respond /weather (\w+)/i, (msg) ->
    q = msg.match[1]
    @exec = require('child_process').exec
    command = "/home/pi/bin/goquery weather #{q}"
    msg.send "The weather information has been sent to #general."

    @exec command, (error, stdout, stderr) ->
      if error
        msg.send error
      if stdout
        msg.send stdout
      if stderr
        msg.send stderr
