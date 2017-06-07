# Description:
#   Will tcp ping the minecraft server and return whether it is online or offline
#
# Dependencies:
#   tcp-ping - https://www.npmjs.com/package/tcp-ping
#
# Configuration:
#   None
#
# Commands:
#   status - See if the server is online
#
# Author:
#   Sam Haig
#

tcpp = require('tcp-ping')

server = process.env.SERVER_ADDRESS
port = process.env.SERVER_PORT

module.exports = (robot) ->
    robot.respond /status/i, (msg) ->
        tcpp.probe server, port, (err, available) ->
            if available
                msg.send 'Minecraft server is online at ' + server + ':' + port
            else
                msg.send 'Cannot reach Minecraft server at ' + server + ':' + port
