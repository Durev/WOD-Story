RSpec.describe Wod, type: :model do

  let(:wod) { FactoryBot.build(:wod) }

  it "has a valid factory" do
    expect(wod).to be_valid
  end

  describe "@wod_type" do
    it { is_expected.to validate_presence_of(:wod_type) }
  end

  describe "@name" do
    it { expect(wod).to validate_uniqueness_of(:name)}
  end
end
