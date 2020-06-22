class PostsController < ApplicationController

    #list of posts
    def index
        @posts = Post.all #Get all Posts
    end

    #new Post
    def new
        
    end

    #Create the new Post
    def create 
        #render plain: params[:post].inspect
        @post = Post.new(post_params) #Capture paramters from the View
        @post.save #Save the new Post object to the DV
        redirect_to @post #Display the new post once saved
    end

    #Display the new Post
    def show
        @post = Post.find(params[:id]) #Go find the latest post from the DB
    end

    private def post_params
        #Allows access to build a Post with a title and body values
        params.require(:post).permit(:title, :body)
    end

end
