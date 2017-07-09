require 'rails_helper'

describe 'the lifecycle of a record' do

  record = FactoryGirl.create(:record)

  admin = User.create!(
            username: "seanpierce",
            email: "sean@email.com",
            password: "1234567",
            password_confirmation: "1234567",
            admin: true
          )


  it "logs in as admin" do
    # log in block
    visit login_path
    find('input[id="email"]').set(admin.email)
    find('input[id="password"]').set(admin.password)
    find('input[id="log-in"]').click
    # end login block
    expect(page).to have_content "You've signed in."
  end

  it "creates a new record" do
    # log in block
    visit login_path
    find('input[id="email"]').set(admin.email)
    find('input[id="password"]').set(admin.password)
    find('input[id="log-in"]').click
    # end login block
    visit admin_path
    expect(page).to have_content "Add a record"
    find('input[id="record_artist"]').set(record.artist)
    find('input[id="record_title"]').set(record.title)
    find('input[id="record_cost"]').set(record.cost)
    find('input[id="record_category"]').set(record.category)
    find('textarea[id="record_description"]').set(record.description)
    click_on "Submit"
    expect(page).to have_content "Record successfully added!"
  end

  it "views a record's page" do
    visit record_path(record)
    expect(page).to have_content record.artist
  end

  it "edits a record" do
    # log in block
    visit login_path
    find('input[id="email"]').set(admin.email)
    find('input[id="password"]').set(admin.password)
    find('input[id="log-in"]').click
    # end login block
    visit record_path(record)
    click_link "Edit Item"
    find('input[id="record_title"]').set("Cool New Record Title")
    click_on "Submit"
    expect(page).to have_content "Record successfully updated!"
  end

  it "deletes a record" do
    # log in block
    visit login_path
    find('input[id="email"]').set(admin.email)
    find('input[id="password"]').set(admin.password)
    find('input[id="log-in"]').click
    # end login block
    visit record_path(record)
    click_link "Delete Item"
    expect(page).to have_no_content record.artist
  end

end
