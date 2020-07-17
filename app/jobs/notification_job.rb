# frozen_string_literal: true

class NotificationJob < ApplicationJob
  queue_as :default

  def perform
    html = ApplicationController.render(
      partial: 'users/system_real_time_information.html',
      locals: {users: User.all}, formats: [:html],
    )
    ActionCable.server.broadcast('room_channel', html: html)
  end
end
