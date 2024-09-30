class UserMailer < ApplicationMailer

	def welcome_email(user)
		mail(to: 'mradul.codenote@gmail.com'	, subject: 'welcome to site')
	end
end
