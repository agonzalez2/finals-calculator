class HomeController < ApplicationController
  def index
  end

  def calc
    current = params['current'].to_d
    percent = params['percent'].to_d
    desired = params['desired'].to_d
    
    required = (desired - (current * (100 - percent)/100)) / percent * 100
    
    render 'calc', :locals => { :current => current.to_i, :desired => desired.to_i, :required => required.to_i }
  end
end