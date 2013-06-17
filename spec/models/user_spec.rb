# -*- coding: utf-8 -**
require 'spec_helper'

describe User do
  it { should allow_mass_assignment_of :name }
  it { should allow_mass_assignment_of :email }

  it "creates an user" do
    user = User.new(:name => "João Lucas", :email => "jlucasps@gmail.com", :age => 24)
    user.save.should be_true
  end

  it "fail to create a user when name is blank" do
    user = User.new(:email => "jlucasps@gmail.com", :age => 24)
    user.save.should be_false
  end

  it "fail to create a user when email is blank" do
    user = User.new(:name => "João Lucas", :age => 24)
    user.save.should be_false
  end

  it "creates a user with gender value MALE" do
    user = User.new(:name => "Bob Dylan", :email => "bob@dylan.com", :age => 72, :gender => User::MALE)
    user.save.should be_true
  end

  it "creates a user with gender value FEMALE" do
    user = User.new(:name => "Candice Swanepoel", :email => "candice@swanepoel.com", :age => 24, :gender => User::FEMALE)
    user.save.should be_true
  end
end
