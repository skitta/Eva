# Description:
#   Track your express packages.
#
# Commands:
#   hubot ip address  - run ipconfig or ifconfig.

module.exports = (robot) ->
  robot.respond /ip address/i, (msg) ->
    q = msg.match[1]
    @exec = require('child_process').exec
    if process.platform.match(/win/gi)
      command = "ipconfig"
    else
      command = "ifconfig"

    @exec command, (error, stdout, stderr) ->
      if error
        msg.send error
      if stdout
        msg.send stdout
      if stderr
        msg.send stderr
