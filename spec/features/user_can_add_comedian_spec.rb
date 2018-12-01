RSpec.describe 'As a vistor' do
  it 'allows user to create a new comedian' do
    visit '/comedians/new'

    name = "Adam Sandler"
    fill_in 'comedian[name]', with: name
    fill_in 'comedian[age]', with: 52
    fill_in 'comedian[city]', with: "New York City"

    click_button 'Submit'

    expect(current_path).to eq('/comedians')

    expect(page).to have_content(name)
    expect(page).to have_content(52)
  end

end
