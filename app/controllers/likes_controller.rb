class LikesController < ApplicationController
  def create
  	#viewに渡すわけではないので、@は必要ない
  	article = Article.find(params[:article_id])
  	current_user.likes.create(article_id: article.id)
  	redirect_to "/"
  end

  def destroy
  	article = Article.find(params[:article_id])
  	#current userの投稿全てから、article_idの記事を取ってくる
  	like = current_user.likes.find_by(article_id: article.id)
  	like.destroy
  	redirect_to "/"
  end

end
