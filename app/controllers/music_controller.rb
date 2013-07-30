class MusicController < ApplicationController
	def index
		@pieces = Piece.order("updated_at DESC")
		@featured_pieces = Piece.where(featured: true).order("updated_at DESC")
	end

	def music
		@piece = Piece.find_by_title(params[:title])
		@piece_sections = @piece.piece_sections
	end	
end