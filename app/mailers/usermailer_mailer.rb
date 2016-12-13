class UsermailerMailer < ApplicationMailer

	def welcome_email(user)
		@user = user
		mail(to: @user.email, subject: 'SB Hacks 2017 Confirmation')
	end

	def send_message(body,subj,to)
		@body = body
		mail(to: to, subject: subj)
	end
end
