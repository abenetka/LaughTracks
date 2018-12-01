RSpec.describe 'Comedian Index by Age' do
  it 'Shows data for comedians by age criteria' do
    mitch = Comedian.create(name: "Mitch Hedberg", age: 37, city: "Los Angeles")
    beck = Comedian.create(name: "Beck Bennett", age: 34, city: "New York City")
    kyle = Comedian.create(name: "Kyle Mooney", age: 34, city: "New York City")
    andrew = Comedian.create(name: "Andrew Bueno", age: 33, city: "Denver")
    mitch.specials.create(name: "Hell Yeah", length: 65)
    beck.specials.create(name: "Funny thing", length: 75)
    kyle.specials.create(name: "I am Funny", length: 50)
    andrew.specials.create(name: "You are not Funny", length: 60)

    visit '/comedians?age=34'

    expect(page).to have_content(beck.name)
    expect(page).to have_content(kyle.name)
    expect(page).not_to have_content(mitch.name)
    expect(page).not_to have_content(andrew.name)
  end

  it 'shows statistics for comedians and specials' do
    mitch = Comedian.create(name: "Mitch Hedberg", age: 37, city: "Los Angeles")
    beck = Comedian.create(name: "Beck Bennett", age: 34, city: "New York City")
    kyle = Comedian.create(name: "Kyle Mooney", age: 34, city: "New York City")
    andrew = Comedian.create(name: "Andrew Bueno", age: 33, city: "Denver")
    mitch.specials.create(name: "Hell Yeah", length: 65)
    beck.specials.create(name: "Funny thing", length: 75)
    kyle.specials.create(name: "I am Funny", length: 50)
    andrew.specials.create(name: "You are not Funny", length: 60)

    visit "/comedians?age=34"
    
    within "#statistics" do

      expect(page).to have_content("Total TV Specials: 2")
      expect(page).to have_content("Average Age of Comedians: 34")
      expect(page).to have_content("Average TV Special Run Time: 62")
      expect(page).to have_content("Cities: New York City")
    end
  end
end
