require 'rails_helper'

RSpec.describe "welcome/index.html.haml", type: :view do

  it 'should contain links back to the home page' do
    render
    expect(rendered).to match /Hello world/
  end
end
