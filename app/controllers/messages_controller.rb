class MessagesController < ApplicationController
	layout 'message'

	def index
		@messages = Message.all
	end

	def show
		@message = Message.friendly.find(params[:id])
	end

	def new
		@message = Message.new
	end

	def edit
		@message = Message.friendly.find(params[:id])
	end

	def create
		@message = Message.new(params.require(:message).permit(:title, :body, :main_image,:thumb_image, :bg_video ))
			if @message.save
				redirect_to messages_path
			else
				render 'new'
			end
	end

	def update
		@message = Message.friendly.find(params[:id])
			@message.update(params.require(:message).permit(:title, :body, :main_image,:thumb_image, :bg_video))
			redirect_to messages_path(@message)
	end

end