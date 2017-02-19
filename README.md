# GBapi

### Your Gentleman Bastard Series API

This is an API dedicated to providing easy to use data from the Gentleman Bastard series. All information belongs to Scott Lynch, author of the Gentleman Bastard series.

For more information please visit http://www.gbapi.com.

### Endpoints

The api is accessible using the /v1 path. The following are endpoints available in the GBapi:

- /books
- /books/:id
- /characters
- /characters/:id
- /aliases
- /aliases/:id
- /organizations
- /organizations/:id
- /divinities
- /divinities/:id
- /regions
- /regions/:id
- /city_states
- /city_states/:id
- /points_of_interest
- /points_of_interest/:id

Example endpoint:
```
http://www.gbapi.co/v1/characters/1
```

### Breakdown

The following provides a breakdown of each endpoint and its properties

##### /books/:id

- **id:** Book id number - integer
- **title:** Title of book - string
- **release date:** Date book was released - datetime
- **series_number:** Book number in the series - integer
- **characters:** List of characters appearing in book - array
- **organizations:** List of organizations appearing in book - array
- **city_states:** List of city states appearing in book - array
- **points of interest:** List of points of interest appearing in book - array
- **created_at:** When book object was created in API - datetime
- **updated_at:** When book object was updated in API - datetime

##### /characters/:id

- **id:** characters id number - integer
- **name:** Common name of the character - string
- **height:** Character's height (metric) - integer
- **mass:** Character's mass (metric) - integer
- **hair_color:** Character's hair color - string
- **skin_tone:** Character's skin tone - string
- **eye_color:** Character's eye color - string
- **weapon_of_choice:** Character's most notable weapon of choice - string
- **profession:** Character's most notable profession - string
- **gender :** Character's gender - string
- **bondsmage:** Is character classified as a bondsmage - boolean
- **organization_leader:** Is character the leader of their organization - boolean
- **native_city_state:** City State in which the character belongs - object
- **first_appears:** Book in which character first appears - object
- **appears_in:** List of all books in which character appears - array
- **aliases:** List of character's aliases - array
- **organization:** Organization in which character belongs - object
- **divinity:** Character's chosen divinity - object
- **created_at:** When character object was created in API - datetime
- **updated_at:** When character object was updated in API - datetime

##### /aliases/:id

- **id:** Alias id number - integer
- **name:** Alias name - string
- **divinity:** Divinity the alias belongs to - object
- **Character:** Character the alias belongs to - object
- **created_at:** When alias object was created in API - datetime
- **updated_at:** When alias object was updated in API - datetime

##### /organizations/:id

- **id:** Organization's id number - integer
- **name:** Name of the organization - string
- **purpose:** The organizations operating purpose - string
- **governing_body:** Is the organization a governing body of a city state - boolean
- **members:** List of all organization members - array
- **leader:** Which character is the organization leader - string
- **city_state:** City State in which the organization belongs/primarily operates - object
- **first_appears:** Book in which organization first appears - object
- **appears_in:** List of all books in which organization appears - array
- **created_at:** When organization object was created in API - datetime
- **updated_at:** When organization object was updated in API - datetime

##### /divinities/:id

- **id:** Divinities's id number - integer
- **name:** Proper name of the divinity - string
- **ideology:** The divinity's primary ideology - string
- **followers:** List of all characters that align with divinity - array
- **aliases:** Alternative names for the divinity - array
- **created_at:** When divinity object was created in API - datetime
- **updated_at:** When divinity object was updated in API - datetime

##### /regions/:id

- **id:** Region's id number - integer
- **name:** Proper name of the region - string
- **direction:** relative direction of the region - string
- **city_states :** List of all city states that lay within the region - array
- **created_at:** When region object was created in API - datetime
- **updated_at:** When region object was updated in API - datetime

##### /city_states/:id

- **id:** City-state's id number - integer
- **name:** Name of the city-state - string
- **terrain:** Description of the city-state's terrain - string
- **population:** City-state's population size - integer
- **currency:** Name of the city-state's currency - string
- **language:** Language spoken in the city-state - string
- **notable_residents:** List of all characters that live/belong to the city-state - array
- **organizations:** List of organizations that operate/based out of the city-state - array
- **governing_body:** Organization that rules the city-state - object
- **region:** Region in which the city-state lays - object
- **points_of_interest:** List of Points of Interest within the city-state - array
- **first_appears:** Book in which city-state first appears - object
- **appears_in:** List of all books in which city-state appears - array
- **created_at:** When city-state object was created in API - datetime
- **updated_at:** When city-state object was updated in API - datetime

##### /points_of_interest/:id

- **id:** Point of Interest id number - integer
- **name:** Name of the point of interest - string
- **purpose:** The purpose served by the point of interest - string
- **city_state:** City State in which the point of interest belongs - object
- **first_appears:** Book in which point of interest first appears - object
- **appears_in:** List of all books in which point of interest appears - array
- **created_at:** When point of interest object was created in API - datetime
- **updated_at:** When point of interest object was updated in API - datetime
