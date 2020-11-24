class CommentsController < ApplicationController
    before_action :set_blog
    
    def create
       comment = @blog.comments.create! comments_params
       
       CommentsMailer.submitted(comment).deliver_later
       CommentsChannel.broadcast(comment)
        redirect_to @blog
    end
    
    private
        def set_blog
            @blog = Blog.find(params[:blog_id])
        end
    
        def comments_params
            params.required(:comment).permit(:body)
        end
end
