cronJob = require('cron').CronJob
 
module.exports = (robot) ->
	send = (room, msg) ->
		response = new robot.Response(robot, {user : {id : -1, name : room}, text : "none", done : false}, [])
		response.send msg
					  
		# *(sec) *(min) *(hour) *(day) *(month) *(day of the week)
	new cronJob('0 0 10 * * *', () ->
		currentTime = new Date
		send '#-general', "おはようにゃ"
		).start()
