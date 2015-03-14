class HomeController < ApplicationController
  def index
  	@time = Time.now.strftime("%H").to_i
   if @time < 12
   	@mesg = "A very good day"
   elsif @time < 18
   	@mesg = "A very good afternoon"
   else
   	@mesg = "A very good evening"
   end

  end

  def menu_item_list
  	menu_item = MenuItem.where(:branch_id => params[:branch])
  		#,:alloc_date => alloc_date.strftime("%m/%d/%Y"))
  		#:alloc_date => params[:date].strftime())
     @break_items = menu_item.where(:meal_type_id => 1)
     @lunch_items = menu_item.where(:meal_type_id => 2)
     @din_items = menu_item.where(:meal_type_id => 3)
     @snac_items = menu_item.where(:meal_type_id => 4)
     @over_items = menu_item.where(:meal_type_id => 5)

  end


def branch_detail
    @cities = City.order("created_at asc").collect{|c| [c.name,c.id]}
  	@city = City.where(:id => params[:city]).first.branches.collect{|c| [c.name,c.id]} unless params[:city].nil?
end


def breakfast_list
  @break_menu = MenuItem.where(:meal_type_id => 1)
end

def lunch_list


end

def lunch_list


end



end
