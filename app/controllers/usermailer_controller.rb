class UsermailerController < ApplicationController
	
	def new

	end

	def create
		#to do: secure so that only admins have access
		#to do: get email sending; sendgrid integration 
		rendered_body = Kramdown::Document.new(params[:body]).to_html.html_safe
		@@to = params[:to]
		@@subject = params[:subject]
		@@body = rendered_body
		@body = @@body
		@subject = @@subject
		render "confirmation"
	end

	def send_mail		
		UsermailerMailer.send_message(@@body,@@subject,@@to).deliver
		render "success"
	end
end
