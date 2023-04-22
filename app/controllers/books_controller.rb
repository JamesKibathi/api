class BooksController < ApplicationController

    # GET/books
    def index
        books = Book.all
        render json:books
    end

    #GET books/:id
    def show
        # book = find_by_id
        # render json:book, status: :ok
        render json:find_by_id,status: :ok
       
    end

    private
    
    def find_by_id
        book = Book.find_by(params[:id])
    end

end
