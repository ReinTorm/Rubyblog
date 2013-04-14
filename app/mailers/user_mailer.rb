

class UserMailer < ActionMailer::Base
  default :from => "rntorm@gmail.com"
  
  def new_email(comment, post)
    @post = comment.post
    @comment = comment
    @url = post_url(@post)
    mail(:to => post.email, :from => 'rntorm@gmail.com',  :subject => "Your post was commented")
  end
end


