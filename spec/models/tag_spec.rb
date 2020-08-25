require 'rails_helper'

RSpec.describe Tag, type: :model do
  describe '#create' do
    context 'can save' do
      it 'is valid with name' do
        expect(build(:tag)).to be_valid
      end
    end
  end
end