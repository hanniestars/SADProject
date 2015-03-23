class RegistrationsController < ApplicationController
  def create
    @registration = Registration.new(registration_params)
  end
end
