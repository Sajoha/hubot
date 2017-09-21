# Description:
#   Display the tay of the week from tay.today
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   tayday - Get the day of the week
#
# Author:
#   Vasil Daskalopoulos
#

getTay = () ->
    backImg = [
        'https://drive.google.com/open?id=0Bw0HHaXUVbdiMkpCaktLQk9aMkE',
        'https://drive.google.com/open?id=0Bw0HHaXUVbdiQTM5XzVZb2w4X2s',
        'https://drive.google.com/open?id=0Bw0HHaXUVbdiN3ZNV1VCbEFhMXM',
        'https://drive.google.com/open?id=0Bw0HHaXUVbdiX1dJVzdObTd0TXM',
        'https://drive.google.com/open?id=0Bw0HHaXUVbdiZkoyNEV5MWlRQTA',
        'https://drive.google.com/open?id=0Bw0HHaXUVbdiN3VBR1kxMllvVGM',
        'https://drive.google.com/open?id=0Bw0HHaXUVbdiQ2RXN29GWnI4V1k'
    ]
    today = new Date
    result = {
        image: backImg[today.getDay()]
    }

module.exports = (robot) ->
    robot.hear /tayday/i, (msg) ->
        result = getTay()
        msg.send result.image
