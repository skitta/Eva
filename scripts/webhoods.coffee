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
  robot.router.post '/hubot/webhoods/express', (req, res) ->
    data = if req.body.payload? then JSON.parse req.body.payload else req.body
    msg = data.message
    robot.messageRoom "express", "#{msg}"

    res.send 'ok'

# IT WORKED !!!!!
