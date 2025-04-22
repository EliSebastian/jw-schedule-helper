class ParticipantsController < ApplicationController
  def create
    @participant = Participant.new participant_params
    render json: @participant.full_errors and return unless @participant.save

    render json: { message: 'Participant created successfully' }, status: :created
  end

  private

  def participant_params
    params.expect participant: [:name, :gender]
  end
end
