class AssignmentsController < ApplicationController
  def create
    @assignment = Assignment.new assignment_params

    render json: @assignment.full_errors, status: :unprocessable_content and return unless @assignment.save

    render json: { message: 'Assignment created successfully' }, status: :created
  end

  private

  def assignment_params
    params.expect assignment: [:name, :description, :allowed_gender]
  end
end
