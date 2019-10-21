require 'rails_helper'
require 'spec_helper'

describe User, type: :model do
  describe 'Vallidations'do

    it 'should have a password' do
      @user = User.new(:password => 'example')
      expect(@user.password).to be_present
    end

    it 'should have a password' do
      @user = User.new(:password => 'example', :password_confirmation => 'example')
      expect(@user.password).to match(@user.password_confirmation)
    end

    it 'should have password of minimum 3 characters' do
      @user = User.new(:password => 'example')
      expect(@user.password.length).to be > 2
    end

    it 'should have unique email' do
      @user = User.new(email: 'foo@bar.com')
      before {user.save}

      context 'email uniqueness' do
        @user1 = User.new(email: 'foo@bar.com') 
        it { expect(user1).to_not be_valid }
        end
    end
  end

  describe '.authenticate_with_credentials' do

  end

end