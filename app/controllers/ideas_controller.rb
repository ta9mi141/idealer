class IdeasController < ApplicationController
  before_action :logged_in_user, only: [:field, :create]

  def field
    @user = User.find(session[:user_id])
    @idea4js = Array.new
    @user.ideas.sort_by{rand}.each {|idea| @idea4js.push(Array.new.push(idea[:content]).push(idea[:suit]))}
    @new_idea = current_user.ideas.build
  end

  def create
    @new_idea = current_user.ideas.build(idea_params)
    if @new_idea.save
      flash[:success] = "Idea created!"
      redirect_to field_url
    else
      @user = User.find(session[:user_id])
      @idea4js = Array.new
      @user.ideas.sort_by{rand}.each {|idea| @idea4js.push(Array.new.push(idea[:content]).push(idea[:suit]))}
      render 'field'
    end
  end


  private

  def idea_params
    params.require(:idea).permit(:content, :suit)
  end
end
