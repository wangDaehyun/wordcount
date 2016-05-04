class HomeController < ApplicationController
  def index
  end

  def write

    
    new_post = Post.new
    new_post.subj = params[:subject]
    new_post.cont = params[:content]
    new_post.save
   
    redirect_to "/list"
  
  end
  
  def list
    @every_post=Post.all
  end
  def destroy
    
    @one_post=Post.find(params[:id])
    @one_post.destroy
    redirect_to "/list"
  end
  def write_comment
    @comment=Comment.new(post_id: params[:id], content: params[:real])
    @comment.save
    redirect_to "/list"
  end
  
 
    
end
