Alias.create!([
  {name: "The Lord of the Grasping Water", divinity_id: 1, character_id: nil},
  {name: "The Lady of the Long Silence", divinity_id: 2, character_id: nil},
  {name: "Father of Necessary Pretext", divinity_id: 13, character_id: nil},
  {name: "Crooked Warden", divinity_id: 13, character_id: nil},
  {name: "Benefactor", divinity_id: 13, character_id: nil},
  {name: "Thiefwatcher", divinity_id: 13, character_id: nil},
  {name: "Father of Necessary Pretext", divinity_id: 13, character_id: nil},
  {name: "Lord of the Overlooked", divinity_id: 3, character_id: nil},
  {name: "Lord of Coin and Commerce", divinity_id: 4, character_id: nil},
  {name: "The Lady of Ubiquitous Maladies", divinity_id: 5, character_id: nil},
  {name: "The Lord of Noose and Trowel", divinity_id: 6, character_id: nil},
  {name: "The Eyes on the Crossroad", divinity_id: 7, character_id: nil},
  {name: "Lady of the Red Madness", divinity_id: 8, character_id: nil},
  {name: "The Lady With Two Faces", divinity_id: 9, character_id: nil},
  {name: "Mother of Rains and Reaping", divinity_id: 10, character_id: nil},
  {name: "Thorn of Camorr", divinity_id: nil, character_id: 1}
])
Book.create!([
  {title: "The Lies of Locke Lamora", release_date: "2006-06-27"},
  {title: "Red Seas Under Red Skies", release_date: "2007-06-20"},
  {title: "The Republic of Thieves", release_date: "2013-10-08"}
])
BookCharacter.create!([
  {book_id: 1, character_id: 1},
  {book_id: 2, character_id: 1},
  {book_id: 3, character_id: 1}
])
BookCityState.create!([
  {book_id: 1, city_state_id: 1},
  {book_id: 3, city_state_id: 1}
])
BookOrganization.create!([
  {book_id: 1, organization_id: 1},
  {book_id: 2, organization_id: 1},
  {book_id: 3, organization_id: 1}
])
BookPointOfInterest.create!([
  {book_id: 1, point_of_interest_id: 1}
])
Character.create!([
  {name: "Locke Lamora", height: nil, mass: nil, hair_color: nil, skin_tone: nil, eye_color: nil, weapon_of_choice: "stiletto", profession: "thief", gender: "male", bondsmage: false, organization_leader: true, city_state_id: 1, organization_id: 1, divinity_id: 13}
])
CityState.create!([
  {name: "Camorr", terrain: "canals", population: 88000, currency: "crowns", region_id: 1, language: "Therin"}
])
Divinity.create!([
  {name: "Iono", ideology: "god of the sea"},
  {name: "Aza Guilla", ideology: "goddess of death"},
  {name: "Perelandro", ideology: "god of mercy and charity"},
  {name: "Gandolo", ideology: "god of merchants and trade"},
  {name: "Nara", ideology: "goddess of sickness and poison"},
  {name: "Morgante", ideology: "god of law and order"},
  {name: "Callo Androno", ideology: "god of travel, languages and lore"},
  {name: "Preva", ideology: "goddess of love, madness and inspiration"},
  {name: "Venaportha", ideology: "goddess of luck"},
  {name: "Dama Elliza", ideology: "goddess of agriculture and farming"},
  {name: "Sendovani", ideology: "goddess of secrets, mysteries, knowledge, alchemy"},
  {name: "Azri", ideology: "god of nature, weather and war"},
  {name: "Nameless Thirteenth", ideology: "god of thieves and crime"}
])
Organization.create!([
  {name: "Gentleman Bastards", purpose: "thieving garrison", governing_body: false, city_state_id: 1}
])
PointOfInterest.create!([
  {name: "The Five Towers", purpose: "noble families", city_state_id: 1}
])
Region.create!([
  {name: "Therin", direction: "South"},
  {name: "Vadran", direction: "North"}
])
