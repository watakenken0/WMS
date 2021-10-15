require 'rails_helper'

RSpec.describe User, type: :model do
  context "emailとpasswordが両方ある時" do
    let(:user) {build(:user)}
      it "ユーザーが作成される"do
       expect(user).to be_valid
  end
end

  context "emailが空の時" do
    let(:user) {build(:user, email: nil)}
      it "ユーザーが作成されない" do
       expect(user).not_to be_valid
      end
    end

  context "passwordが空の時" do
    let(:user) {build(:user, password: nil)}
      it "ユーザーが作成されない" do
        expect(user).not_to be_valid
      end
    end
end
