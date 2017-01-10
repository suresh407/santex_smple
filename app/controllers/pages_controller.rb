class PagesController < ApplicationController
  def index
    @homes = Home.all

#   render text: request.params[:heome_type].to_yaml and return
#  if (params[:home_type] && Home.all.collect(&:home_type).include?(params[:home_type]))
#     @home_photos = Home.send(params[:home_id][:home_type])
#      @home_spec = Home.where( home_type = "Single wide")


  end

  def new

  @select_home = Page.new
 
   end  
 def search
 home  = params[:select_home]
# render text: home.to_yaml and return
if home == "Single wide"
@single_wide = Home.single_wide
render :text => "single wide"
end
if home == "Double wide"
@double_wide = Home.double
render :text => "double wide"
end
if home == "Triple wide"
@triple_wide = Home.triple
render :text => "triple wide"
end
if home == "Hot deals"
@hotdeals = Home.hotdeals
render :text => "hot deals"
end


 
#<% concat "non single wide" %>
#render :text => "Not OK"

 #@homes = Home.all
# render text: "no".to_yaml and return

 end 

 def single_wide

@single_wide = Home.single_wide

end


def double_wide

@double_wide = Home.double

end


def triple_wide

@triple_wide = Home.triple

end

def other

@other = Home.others

end


def hotdeals

@hotdeals = Home.hotdeals

end





private
  def select_home_params
    params.require(:select_home).permit( :select_home)
end




end
