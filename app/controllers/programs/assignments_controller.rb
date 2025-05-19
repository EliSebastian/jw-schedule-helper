module Programs
  class AssignmentsController < ApplicationController
    def create
      @program = Program.find params[:program_id]
      @program.assignment_ids = program_params[:assignment_ids]

      render json: { errors: @program.errors }, status: :unprocessable_entity and return unless @program.save

      render json: { message: 'Program Assignments updated successfully' }, status: :ok
    end

    private

    def program_params
      params.expect assignment: [assignment_ids: []]
    end
  end
end
