class UploadFilesController < ApplicationController
  def new
    @file = UpladedFile.new
  end

  def create
    binding.pry
  end

  def show
  end

  def index
  end
end
