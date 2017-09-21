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
        'https://drive.google.com/uc?id=0Bw0HHaXUVbdiMkpCaktLQk9aMkE', # SunTay
        'https://drive.google.com/uc?id=0Bw0HHaXUVbdiQTM5XzVZb2w4X2s', # MonTay
        'https://drive.google.com/uc?id=0Bw0HHaXUVbdiN3ZNV1VCbEFhMXM', # TuesTay
        'https://drive.google.com/uc?id=0Bw0HHaXUVbdiX1dJVzdObTd0TXM', # WednesTay
        'https://drive.google.com/uc?id=0Bw0HHaXUVbdiQ3Bxa1pjWklfZEU', # ThursTay
        'https://drive.google.com/uc?id=0Bw0HHaXUVbdiN3VBR1kxMllvVGM', # FriTay
        'https://drive.google.com/uc?id=0Bw0HHaXUVbdiQ2RXN29GWnI4V1k' # SaturTay
    ]
    today = new Date
    result = {
        image: backImg[today.getDay()]
    }

module.exports = (robot) ->
    robot.hear /tayday/i, (msg) ->
        result = getTay()
        msg.send result.image
