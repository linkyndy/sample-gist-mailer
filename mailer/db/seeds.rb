Country.create([{name: 'Romania'}, {name: 'France'}, {name: 'Italy'}])

Country.where(name: 'Romania').first.cities.create(name: 'Timisoara')
Country.where(name: 'France').first.cities.create([{name: 'Paris'}, {name: 'Nice'}])
Country.where(name: 'Italy').first.cities.create([{name: 'Roma'}, {name: 'Milano'}, {name: 'Pisa'}])