class SequencesController < ApplicationController
  before_action :set_sequence, only: [:show, :edit, :update, :destroy]
  

  def index
    @sequences = current_user.sequences
  end


  def show
  end


  def new
    @sequence = Sequence.new
  end


  def create
    @sequence = current_user.sequences.new(sequence_params)

    if @sequence.save
      # flash[:success] = "New Flow Formed"
      redirect_to sequences_path
    else
      binding.pry
      # flash[:error] = "Error #{@sequence.errors.full_messages.join("\n")}"
      render :new
    end
  end


  def edit
  end


  def update
    if @sequence.update(sequence_params)
      redirect_to sequence_path(@sequence)
    else
      render :edit
    end
  end


  def destroy
    @sequence.destroy
    redirect_to sequences_path
  end

  private
    def set_sequence
      @sequence = current_user.sequences.find(params[:id])
    end

    def sequence_params
      params.require(:sequence).permit(:name, :body)
    end
    
end
