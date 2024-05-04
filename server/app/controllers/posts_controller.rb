# frozen_string_literal: true

class PostsController < ApplicationController
  before_action :set_book, only: %i[show destroy]

  def show
    post = Post.find(params[:id])

    respond_to do |format|
      format.json { render json: post }
    end
  end

  def destroy
    post = Post.find(params[:id])
    post.destroy

    respond_to do |format|
      format.json { head :no_content }
    end
  end

  def set_book
    @post = Post.find(params[:id])
  end
end
