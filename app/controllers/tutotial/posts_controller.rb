class PostsController < ApplicationController
 # 
def index
  @posts = Post.all
  #load all posts from the model
end

def new
  @post = Post.new
end

#create show method
def show
  @post = Post.find(params[:id])
  # find a specific post in the model to show
end
#uses the id from the url

# create new method

def create
  #render plain: params[:post].inspect
  #run to inspect params then comment this out
  @post = Post.new(post_params)
  if (@post.save)
   redirect_to @post
     # redirects to show view
  else
   render 'new'
  end
end

private def post_params
  params.require(:post).permit(:title, :body)
end
#can only take in title and body

  
#create edit method
def edit
  @post = Post.find(params[:id])
end

 # create update method
def update
  @post = Post.find(params[:id])
  if (@post.update(post_params))
   redirect_to @post
    # redirects to show view
  else
    render 'edit'
  end
end

#create delete method
def destroy
  @post = Post.find(params[:id])
  @post.destroy
  redirect_to posts_path

end


end
