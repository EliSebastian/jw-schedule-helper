module FullErrorMessages
  def full_errors
    { errors: self.errors.full_messages }
  end
end
