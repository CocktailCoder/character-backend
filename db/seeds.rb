
[Character, Player, Campaign].each do |klass|
    klass.destroy_all
  end
#   Create Player Seed Info
  player_attributes = [
    {
      name: "Monique Mcdaniel", specialization: "Sickest Rolls"
    },
    {
      name: "Earnest Pittman", specialization: "Never Breaks Character"
    }
  ]
  players = player_attributes.map do |attributes|
    Player.create(attributes)
  end
  #   Campaign Table Seed Info
  campaign_attributes = [
    {name: "Monster Campaign"},
    {name: "The Tomb of the Fallen Sky Queen"},
    {name: "Shadow Realms and Where to Find Them"},
    {name: "Dragon Fighting for Dummies"}
  ]
  
  campaign = campaign_attributes.map do |attributes|
    Campaign.create(attributes)
  end


  # Character.create(character_name: "Drizzt",
  # race: "Drow",
  # character_class: "Ranger",
  # alignment: "Chaotic good",
  # strength: 3,
  # dexterity: 5,
  # constitution: 4,
  # intelligence: 6,
  # wisdom: 5,
  # charisma: 6,
  # personality: "Thoughtful",
  # traits: "tolerance",
  # flaws: "poor sense of direction",
  # equipment: "enchanted mithral chainmail",
  # campaign_id: 23, 
  # player_id: 24)
  #   Character Seed Info
  character_attributes = [
{
    # campaign: campaign[0],
    # player: players[0],
    character_name: "Drizzt",
    race: "Drow",
    character_class: "Ranger",
    alignment: "Chaotic good",
    strength: 3,
    dexterity: 5,
    constitution: 4,
    intelligence: 6,
    wisdom: 5,
    charisma: 6,
    personality: "Thoughtful",
    traits: "tolerance",
    flaws: "poor sense of direction",
    equipment: "enchanted mithral chainmail"
  },
{
    character_name: "Ørlef",
    race: "Hill Dwarf",
    character_class: "Druid",
    alignment: "Lawful neutral",
    strength: 6,
    dexterity: 3,
    constitution: 6,
    intelligence: 1,
    wisdom: 2,
    charisma: 1,
    personality: "A Big Ol' Meany Head",
    traits: "Aggresive with anyone outside of his clan",
    flaws: "Not the sharpest stonecutter...",
    equipment: "Dwarven battle hammer (maternal)"
  },
{
    character_name: "Slyyflynn",
    race: "High Elf",
    character_class: "Mage",
    alignment: "True Good",
    strength: 2,
    dexterity: 6,
    constitution: 3,
    intelligence: 6,
    wisdom: 5,
    charisma: 0,
    personality: "Extremely knowing, but bookish",
    traits: "the tallest elf, ever",
    flaws: "majorly lacking in social skills",
    equipment: "The Staff of the Ancient Fallen"
  },
{
    character_name: "Drmp",
    race: "Half-troll",
    character_class: "Theif",
    alignment: "Chaotic evil",
    strength: 3,
    dexterity: 5,
    constitution: 4,
    intelligence: 1,
    wisdom: 1,
    charisma: 2,
    personality: "Would be super scary and evil, but...",
    traits: "the world's worst theif",
    flaws: "...super super dumb",
    equipment: "a burlap sack..?"
  },
 ]
  characters = character_attributes.map do |attributes|
    Character.create(attributes)
  end