class TagsController < ApplicationController
  before_action :require_login, only: [:destroy]

  def index
    @tags = Tag.all
  end

  def show
    @tag = Tag.find(params[:id])
  end

  def destroy
    @article = Article.find(params[:id])
    @tag = @article.tags.find(params[:id])
    @tag.destroy!

    redirect_to action: "index"
  end

end
