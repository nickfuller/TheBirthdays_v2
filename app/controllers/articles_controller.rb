class ArticlesController < ApplicationController

  def index
    @articles = Article.order("created_at desc")
		@user = User.new
	#	@comments = Comment.find_by_article_id(params[:article][:id])  <= but i must define comments
    respond_to do |format|
      format.html
      format.json { render :json => @articles }
    end
  end

  def new
		@article = Article.new
  end

  def create
    @article = Article.new(params[:article])
    if @article.save
      redirect_to @article, notice: "#{@article.title} posted!"
    else
			render 'new'
    end
  end

  def show
    @article = Article.find_by_id(params[:id])
		@comments = @article.comments.order("created_at asc")
    respond_to do |format|
      format.html
      format.json { render :json => @article }
    end
  end

  def edit
    @article = Article.find_by_id(params[:id])
		# @categories = article_categories()
  end

  def update
    @article = Article.find_by_id(params[:id])
    if @article.update_attributes(params[:article])
      redirect_to article_url(@article.id), notice:"#{@article.title} has been updated."
    else
      redirect_to edit_article_url, notice:"Please fill in all fields before submitting."
			# render 'edit', :notice => "Please fill in all fields before submitting."
				# The render + :notice doesn't give any visible notice.
    end
		# @categories = article_categories() # What is this article_categories?
  end

  def destroy
    Article.find_by_id(params[:id]).destroy
    redirect_to articles_url, notice:"An article was successfully obliterated."
  end

end