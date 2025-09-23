class MoviesController < ApplicationController
    before_action :set_movie, only: %i[show edit update destroy]
  
    def index
      # Captura o parâmetro de ordenação
      sort_by = params[:sort]
  
      # Ordena os filmes de acordo com o parâmetro
      @movies = case sort_by
                when 'title'
                  Movie.order("LOWER(title) ASC")
                when 'release_date'
                  Movie.order(:release_date)
                else
                  Movie.all
                end
    end
  
    def show
    end
  
    def new
      @movie = Movie.new
    end
  
    def edit
    end
  
    def create
      @movie = Movie.new(movie_params)
      if @movie.save
        redirect_to movies_path(sort: params[:sort]), notice: "Filme criado com sucesso!"
      else
        render :new
      end
    end
  
    def update
      if @movie.update(movie_params)
        redirect_to movies_path(sort: params[:sort]), notice: "Filme atualizado com sucesso!"
      else
        render :edit
      end
    end
  
    def destroy
        @movie.destroy
        redirect_to movies_path, notice: "Filme excluído com sucesso!"
      end
      
  
    private
  
    def set_movie
      @movie = Movie.find(params[:id])
    end
  
    def movie_params
      params.require(:movie).permit(:title, :rating, :release_date)
    end
  end
  