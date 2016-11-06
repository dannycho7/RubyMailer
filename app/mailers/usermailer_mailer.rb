class UsermailerMailer < ApplicationMailer
	default from: 'dannycho7@gmail.com'

	def welcome_email(user)
		@user = user
		@url = 'http://gmail.com'
		mail(to: @user.email, subject: 'hey! this is just a test')
	end

	def send_message(body,subj,to)
		@body = body
		mail(to: to, subject: subj)
	end
end
