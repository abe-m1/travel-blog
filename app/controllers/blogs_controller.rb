class BlogsController < ApplicationController


    def   index
        @blogs= Blog.all  
    end

      def show
        @blog = Blog.find(params[:id])
        @comment=Comment.new
      end

      def new
        
          @blog= Blog.new   
          
      end

      def create
        

            @blog = Blog.new(params.require(:blog).permit(:title, :date, :post, :image))
       
              if @blog.save
                redirect_to blogs_path
              else
                render:new

                
              end
      end



      def edit
        
        @blog =Blog.find(params[:id]) 
      end

      def update
        
              @blog =Blog.find(params[:id])

              if @blog.update_attributes(params.require(:blog).permit(:title, :date, :post))
                    redirect_to blogs_path
              else
                  render:edit
              end
      end


      def destroy
        @blog = Blog.find(params[:id])
        @blog.destroy
        redirect_to blogs_path
      end
end  





