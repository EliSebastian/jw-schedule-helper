class ProgramsController < ApplicationController
  def create
    @program = Program.new program_params

    render json: @program.full_errors, status: :unprocessable_content and return unless @program.save

    render json: { message: 'Program created successfully' }, status: :created
  end

  private

  def program_params
    params.expect program: [:name, :start_date, :end_date]
  end
end
