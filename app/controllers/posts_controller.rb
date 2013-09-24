class PostsController < InheritedResources::Base
	def index
		@posts = Post.all(:order => 'DATE(updated_at),TIME(updated_at)')
	end
	
	def show
		@user = User.find(params[:id])
		@user.update_attribute(:reqstatus, false)
		UserMailer.verification_email(@user).deliver
		redirect_to '/family_members/family/1'
	end
end
