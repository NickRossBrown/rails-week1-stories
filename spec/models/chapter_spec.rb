require 'rails_helper'

describe Chapter do
  it { should validate_presence_of :description }
  it { should belong_to :story }
end
