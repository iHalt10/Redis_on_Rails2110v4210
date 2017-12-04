class StartingController < ApplicationController
  def index
    user = User.create
    user.name = 'TestUser'
    user.email = 'test@ggg.com'
    user = User.create
    user.name = 'TogoJuzo'
    user.email = 'duke@ggg.com'

    user = User.first(id: 2)
    # user.destroy
    # binding.pry
    render :text => "Server Starting OK"
  end
end
