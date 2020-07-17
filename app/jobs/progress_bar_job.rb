# frozen_string_literal: true

class ProgressBarJob < ApplicationJob
  queue_as :default

  def perform(percent)
    html = ApplicationController.render(
      partial: 'shared/progress_bar.html',
      locals: {percent: percent}, formats: [:html],
    )
    ActionCable.server.broadcast('room_channel', html: html)
  end
end
