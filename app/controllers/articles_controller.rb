class ArticlesController < ApplicationController

    def index
        @articles = Article.all
    end

    def show
        #byebug
        @article = Article.find(params[:id])
    end

    def new
    end

    def create
        title = params[:article][:title]
        description = params[:article][:description]
        Article.create(title: title, description: description)
        redirect_to articles_path
    end

    def update
    end

end