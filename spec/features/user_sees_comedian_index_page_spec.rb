RSpec.describe 'Comedian Index Page' do
  it 'shows data for comedians' do
    comedian = Comedian.create(name: "Andrew Bueno", age: 32, city: "Denver")
    comedian.specials.create(name: "Hell Yeah", length: 65)
    comedian.specials.create(name: "Funny Things", length: 75)


    visit "/comedians"
    within "#comic-#{comedian.id}" do
      expect(page).to have_content("Total Specials: #{Special.count}")
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
      expect(page).to have_content("#{special.name}")
      expect(page).to have_content("Runtime: #{special.length} min")
    end
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

    visit "/comedians"
    within "#statistics-box" do
      expected = Comedian.list_unique_cities
      expect(page).to have_content("TOTAL NUMBER OF TV SPECIALS:")
      expect(page).to have_content("#{Special.count}")
      expect(page).to have_content("AVERAGE COMEDIAN AGE:")
      expect(page).to have_content("#{Comedian.average_age.to_i}")
      expect(page).to have_content("AVERAGE TV SPECIAL RUN TIME:")
      expect(page).to have_content("#{Special.average_run_time.to_i}")
      expect(page).to have_content("WHERE THEY LIVE:")
      expect(page).to have_content("#{expected.join(", ")}")
    end
  end

end
