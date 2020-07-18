require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'callbacks' do
    describe 'assigning_some_association' do
      # subject(:saving) { record.save! record.reload } # reload here is important

      let(:record) { FactoryBot.create(:user) }

      it 'assigns some association after commit' do
        expect(NotificationJob).to(receive(:perform_later).twice)
        record.save
      end
    end
  end
end
