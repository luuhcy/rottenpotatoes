class MoviesController < ApplicationController
  def index
    # Colunas válidas para ordenação
    valid_sorts = %w[title release_date]
    # Direções válidas de ordenação
    valid_directions = %w[asc desc]

    # Verifica se params[:sort] é válido, senão usa 'title' como padrão
    sort_column = valid_sorts.include?(params[:sort]) ? params[:sort] : 'title'

    # Verifica se params[:direction] é válido, senão usa 'asc' como padrão
    sort_direction = valid_directions.include?(params[:direction]) ? params[:direction] : 'asc'

    # Busca os filmes ordenados
    @movies = Movie.order(sort_column => sort_direction)
  end
end
