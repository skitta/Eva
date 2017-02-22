# Description:
#   Generates help commands for Hubot.
#
# Commands:
#   hubot help - Displays all of the help commands that Hubot knows about.
#   hubot help <query> - Displays all help commands that match <query>.
#
# URLS:
#   /hubot/help
#
# Configuration:
#   HUBOT_HELP_REPLY_IN_PRIVATE
#
# Notes:
#   These commands are grabbed from comment blocks at the top of each file.

module.exports = (robot) ->
  robot.router.post '/hubot/webhoods', (req, res) ->
    data = req.body
    secret = data.secret
    robot.messageRoom "express", "#{secret}"

    res.send 'ok'

# IT WORKED !!!!!
