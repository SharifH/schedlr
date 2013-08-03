require 'spec_helper'

describe Instructor do
  	it { should have_many(:sessions)}
	it { should belong_to(:sessions)}
	it { should have_many(:skills) }
	it { should belong_to(:skills)}
	it { should have_many :availabilities}
	

	it { should validate_presence_of(:name) }
	it { should validate_presence_of(:email) }
	it { should validate_presence_of(:password_hash) }

end
