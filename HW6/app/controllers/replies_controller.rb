class RepliesController < ApplicationController
  def index
  end

  def new
  	@user = User.find(params[:user_id])
  	@topic = @user.topics.find(params[:topic_id])
  end

  def create
  	  	@reply = Reply.create(reply_params)
  		@topic_id = params[:topic_id]
  		@user_id = params[:user_id]

		if @reply.save

			@reply.update_attributes(:user_id => @user_id, :topic_id => @topic_id)
			flash[:notice] = "Reply was saved successfully"
			redirect_to user_topic_path(@user_id, @topic_id)
		else
			flash[:notice] = "There was a problem creating reply"
			redirect_to new_user_topic_reply_path(@user_id, @topic_id)
		end
  end

  def show
  end

  def reply_params    
    params.require(:reply).permit(:description)
  end
end
