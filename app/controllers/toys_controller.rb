class ToysController < ApplicationController
    # GET method to get all products from database   
    def index 
        @toys = Toy.all   
    end   
    
    # GET method to get a product by id   
    def show   
        @toy = Toy.find(params[:id])   
        # render json: Toy.find_by_id(params[:id]), status: :ok
    end   
    
    # GET method for the new product form   
    def new   
        @toy = Toy.new   
    end   
    
    # POST method for processing form data   
    def create   
        @toy = Toy.new(item_params)   
        if @toy.save   
            flash[:notice] = 'Product added!'   
            redirect_to "toys#new"   
        else   
            flash[:error] = 'Failed to edit product!'   
            render :new   
        end   
    end   
    
    # GET method for editing a product based on id   
    def edit   
        @toy = Toy.find(params[:id])   
    end   
    
    # PUT method for updating in database a product based on id   
    def update   
        @toy = Toy.find(params[:id])   
        if @toy.update(item_params)   
        flash[:notice] = 'Item Successfully updated!'   
        redirect_to collections_path   
        else   
        flash[:error] = 'Failed to edit item!'   
        render :edit   
        end   
    end   
    
    # DELETE method for deleting a product from database based on id   
    def destroy   
        @toy = Toy.find(params[:id])   
        if @toy.delete   
        flash[:notice] = 'Item deleted!'   
        redirect_to collections_path  
        else   
        flash[:error] = 'Failed to delete this item!'   
        render :destroy   
        end   
    end   
    
    # we used strong parameters for the validation of params   
    def item_params   
        params.require(:toy).permit(:brand, :toy_name, :price, :quantity, :image_url, :description)   
    end  

end