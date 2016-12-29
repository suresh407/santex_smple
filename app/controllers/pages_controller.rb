class PagesController < ApplicationController
  def index
    @homes = Home.all

#   render text: request.params[:heome_type].to_yaml and return
#  if (params[:home_type] && Home.all.collect(&:home_type).include?(params[:home_type]))
#     @home_photos = Home.send(params[:home_id][:home_type])
#      @home_spec = Home.where( home_type = "Single wide")


  end



 def search
 @homes = Home.all
 

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










end
