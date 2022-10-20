class Admin::CategoriesController < ApplicationController
    def index 
        @catergies = Category.order(id: :desc).all
        
    end
    def new
    end
    def create
    end

end
