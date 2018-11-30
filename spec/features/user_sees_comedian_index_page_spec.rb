RSpec.describe 'Comedian Index Page' do
  it 'shows data for comedians' do
    comedian = Comedian.create(name: "Andrew Bueno", age: 32, city: "Denver")
    special_1 = comedian.specials.create(name: "Hell Yeah", length: 65)
    special_2 = comedian.specials.create(name: "Funny Things", length: 75)


    visit "/comedians"
    within "#comic-#{comedian.id}" do
      save_and_open_page
      expect(page).to have_content("Total Specials: 2")
      expect(page).to have_content(comedian.name)
      expect(page).to have_content("Age: #{comedian.age}")
      expect(page).to have_content("City: #{comedian.city}")
    end
  end

  it 'shows data for specials' do
    comedian = Comedian.create(name: "Andrew Bueno", age: 32, city: "Denver")
    special = comedian.specials.create(name: "Hell Yeah", length: 65)

    visit "/comedians"
    within "#comic-#{comedian.id}-specials" do
      expect(page).to have_content("Name: #{special.name}, Length: #{special.length} min")
    end
  end

  it 'shows statistics for comedians and specials' do

    visit "/comedians"
    within "#statistics" do

      expected = Comedian.list_unique_cities
      expect(page).to have_content("Statistics")
      expect(page).to have_content("Average Age of Comedians: #{Comedian.average_age}")
      expect(page).to have_content("Average TV Special Run Time: #{Special.average_run_time.to_i}")
      expect(page).to have_content("Cities:#{expected.join(", ")}")
    end
  end

end
