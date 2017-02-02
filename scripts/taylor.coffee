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
    'https://www.dropbox.com/s/0ii01q4q0tcdwzs/suntay.jpg?raw=1',
    'https://www.dropbox.com/s/0kfws043qkkvnkk/montay.jpg?raw=1',
    'https://www.dropbox.com/s/cxteue9hp3fb9g1/tuestay.jpg?raw=1',
    'https://www.dropbox.com/s/dco6v2b5dizvpgy/wednestay.jpg?raw=1',
    'https://www.dropbox.com/s/5i6801nzj4xrp0i/thurstay.jpg?raw=1',
    'https://www.dropbox.com/s/injouof7bv7kvhq/fritay.jpg?raw=1',
    'https://www.dropbox.com/s/gi5r1rpyfhhkn0f/saturtay.jpg?raw=1'
  ]
  tayName = ['SunTay', 'MonTay', 'TuesTay', 'WednesTay' , 'ThursTay' , 'FriTay' , 'SaturTay' ]
  today = new Date
  result = {
    image: backImg[today.getDay()]
    text: tayName[today.getDay()]
  }

module.exports = (robot) ->
    robot.hear /tayday/i, (msg) ->
        result = getTay()
        msg.send result.image
        msg.send result.text