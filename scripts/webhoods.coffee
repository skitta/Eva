# Description:
#   Generates help commands for Hubot.
#
# Commands: none


module.exports = (robot) ->
  robot.router.post '/hubot/webhoods/express', (req, res) ->
    data = if req.body.payload? then JSON.parse req.body.payload else req.body
    msg = data.message
    robot.messageRoom "express", "#{msg}"

    res.send 'ok'

# IT WORKED !!!!!
