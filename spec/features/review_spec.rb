require 'rails_helper'

describe 'the lifecycle of a review' do

  other_record = FactoryGirl.create(:record, artist: "Other Artist", title: "Other Record")

  basic_user = User.create!(
                username: "basic_user",
                email: "test.@email.com",
                password: "1234567",
                password_confirmation: "1234567",
                admin: false
              )


  it "adds a new review to a record" do
    # log in block
    visit login_path
    find('input[id="email"]').set(basic_user.email)
    find('input[id="password"]').set(basic_user.password)
    find('input[id="log-in"]').click
    # end login block
    visit record_path(other_record)
    click_link "Write a review"
    fill_in "Content", with: "This is a really good record. Highly recommended!"
    click_on "Submit"
    expect(page).to have_content "Review sucessfully created!"
  end

  it "edits their previous review" do
    # log in block
    visit login_path
    find('input[id="email"]').set(basic_user.email)
    find('input[id="password"]').set(basic_user.password)
    find('input[id="log-in"]').click
    # end login block
    visit record_path(other_record)
    click_link "Write a review"
    fill_in "Content", with: "This is a really good record. Highly recommended!"
    click_on "Submit"
    visit record_review_path(other_record, other_record.reviews.first)
    click_on "Edit my review"
    fill_in "Content", with: "On second listen, I think this record is awful!"
    click_on "Submit"
    expect(page).to have_content "Review successfully updated!"
  end

  it "deletes their review" do
    # log in block
    visit login_path
    find('input[id="email"]').set(basic_user.email)
    find('input[id="password"]').set(basic_user.password)
    find('input[id="log-in"]').click
    # end login block
    visit record_path(other_record)
    click_link "Write a review"
    fill_in "Content", with: "This is a really good record. Highly recommended!"
    click_on "Submit"
    visit record_review_path(other_record, other_record.reviews.first)
    click_on "Delete my review"
    expect(page).to have_no_content "review for"
  end


end
