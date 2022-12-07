require 'rails_helper'

RSpec.describe "reservations/edit", type: :view do
  let(:reservation) {
    Reservation.create!(
      line_user: nil
    )
  }

  before(:each) do
    assign(:reservation, reservation)
  end

  it "renders the edit reservation form" do
    render

    assert_select "form[action=?][method=?]", reservation_path(reservation), "post" do

      assert_select "input[name=?]", "reservation[line_user_id]"
    end
  end
end
