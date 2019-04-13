class StaticPagesController < ApplicationController
 
  def index
    @stockphotos = Stockphoto.all
  end
 
  def home
  @categories = Category.all
  end

  def contactus
  end

  def about
  end
end
def category
    catName = params[:title]
    @stockphotos = Stockphoto.where("category like ? ", catName)
end

def createOrder
 
   @orders = Order.all
          
   end

def paid
    
    @order = Order.find_by(id: params[:id])
    @order.update_attribute(:status, "Paid by User: #{current_user.email}")
    
end


def imagegallery
end
