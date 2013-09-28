class PostsController < InheritedResources::Base
	def index
		@posts = Post.all(:order => 'DATE(updated_at),TIME(updated_at)')
	end
	
 
	
 end
