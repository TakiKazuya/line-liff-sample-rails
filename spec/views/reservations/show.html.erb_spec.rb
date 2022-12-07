require 'rails_helper'

RSpec.describe "reservations/show", type: :view do
  before(:each) do
    assign(:reservation, Reservation.create!(
      line_user: nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
  end
end
