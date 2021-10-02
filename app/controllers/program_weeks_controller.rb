class ProgramWeeksController < ApplicationController
  def show
    @program_week = ProgramWeek.find(params[:id])
  end

   def new
    @program = Program.find(params[:program_id])
    @program_week = ProgramWeek.new
   end

   def create
    @program = Program.find(params[:program_id])
    @program_week = ProgramWeek.new(program_week_params)
    @program_week.program = @program
    if @program_week.save
      redirect_to program_week_path(@program_week)
    else
      render :new
    end
   end

   def edit
    @program_week = ProgramWeek.find(params[:id])
   end

   def update
    @program_week = ProgramWeek.find(params[:id])
    @program_week.update(program_week_params)
    redirect_to program_week_path(@program)
  end

  def destroy
    @program_week = Program.find(params[:id])
    @program_week.destroy
    redirect_to programs_path
  end

  private

  def program_week_params
    params.require(:program).permit(:name, :program)
  end
end
