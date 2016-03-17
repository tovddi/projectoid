class CommentsController < ApplicationController
  before_action :set_project

  def new
    @comment = @project.comments.new
  end

  def create
    @comment = @project.comments.new(comment_params)
    if @comment.save
      redirect_to project_path(@project)
    else
      render :new
    end
  end

  private

    def comment_params
      params.require(:comment).permit(:content)
    end

    def set_project
      @project = Project.find(params[:project_id])
    end

end
