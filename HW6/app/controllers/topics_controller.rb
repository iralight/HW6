class TopicsController < ApplicationController
  def index
  	 @user = User.find(params[:user_id])
  end

  def new
  	@user = User.find(params[:user_id])
  end

  def create
  	@topic = Topic.create(topic_params)
  	
		if @topic.save
			@topic.update_attributes(:user_id => params[:user_id])
			flash[:notice] = "Topic was saved successfully"
			redirect_to root_path
		else
			flash[:notice] = "There was a problem creating topic"
			redirect_to new_user_topic_path(params[:user_id])
		end
  end

  def show
  	@user = User.find(params[:user_id])
  	@topic = @user.topics.find(params[:id])
  end

  private
  
  def topic_params    
    params.require(:topic).permit(:name)
  end

end
