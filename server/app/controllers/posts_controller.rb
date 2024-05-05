# frozen_string_literal: true

class PostsController < ApplicationController
  before_action :set_book, only: %i[show destroy]

  def show
    render :show
    # respond_to do |format|
    #   format.html { render :show }
    #   format.json { render json: @post }
    # end
  end

  def destroy
    @post.destroy

    respond_to do |format|
      format.json { head :no_content }
    end
  end

  def set_book
    @post = Post.find(params[:id])
  end
end
