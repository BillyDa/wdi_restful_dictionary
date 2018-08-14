class EntriesController < ApplicationController

  def index
    @entries = Entry.all
  end

  def show
    @entry = Entry.find(params[:id])
  end

  def new
    @entry = Entry.new
  end

  def create
    @entry = Entry.new
    @entry.word = params[:entry][:word]
    @entry.language = params[:entry][:language]
    @entry.definition = params[:entry][:definition]

    if @entry.save
      redirect_to entries_url
    end
    # else
    #   render :new
    # end
  end

  def edit

  end

  def update
    redirect_to entry_url(params[:id])
  end

  def destroy
    redirect_to entries_url
  end

end
