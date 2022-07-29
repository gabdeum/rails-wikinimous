class ArticlesController < ApplicationController
  before_action :set_article, only: %i[show edit update destroy]

  def index
    @articles = Article.all
  end

  private

  def set_article
    @article = Article.find(params[:id])
  end
end
