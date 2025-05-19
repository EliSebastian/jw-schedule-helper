module Participants
  class AssignmentsController < ApplicationController
    def create
      @participant = Participant.find params[:participant_id]
      @participant.allowed_assignment_ids = assignments_params[:assignment_ids]

      render json: { errors: participant.errors }, status: :unprocessable_entity and return unless @participant.save

      render json: { message: 'Participant Assignments updated successfully' }, status: :ok
    end

    private

    def assignments_params
      params.expect assignment: [assignment_ids: []]
    end
  end
end
