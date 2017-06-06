# Description:
#   Will tcp ping the minecraft server and return whether it is online or offline
#
# Dependencies:
#   None
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

pingServer = () ->
    server = 'samjhaig.twilightparadox.com'
    port = 25564

    tcpp.probe server, port, (err, available) ->
        if err
            status = err
        else
            if available
                status = 'Server is online'
            else
                status = 'Server is offline'

module.exports = (robot) ->
    robot.hear /status/i, (msg) ->
        status = pingServer()
        msg.send status
