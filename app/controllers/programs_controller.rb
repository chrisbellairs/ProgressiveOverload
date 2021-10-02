class ProgramsController < ApplicationController
  def index
    @programs = current_user.programs
  end

  def show
    @program = Program.find(params[:id])
  end

   def new
    @program = Program.new
   end

   def create
    @program = Program.new(program_params)
    @program.user = current_user
    if @program.save
      redirect_to program_path(@program)
    else
      render :new
    end
   end

   def edit
    @program = Program.find(params[:id])
   end

   def update
    @program = Program.find(params[:id])
    @program.update(program_params)
    redirect_to program_path(@program)
  end

  def destroy
    @program = Program.find(params[:id])
    @program.destroy
    redirect_to programs_path
  end

  private

  def program_params
    params.require(:program).permit(:name, :user)
  end
end
