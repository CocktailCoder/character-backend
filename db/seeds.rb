
[Character, Player, Campaign].each do |klass|
    klass.destroy_all
  end
#   Create Player Seed Info
  player_attributes = [
    {
      name: "Bard", specialization: "Charisma"
    },
    {
      name: "Tank", specialization: "Strength"
    }
  ]
  players = player_attributes.map do |attributes|
    Player.create(attributes)
  end
  #   Campaign Table Seed Info
  campaign_attributes = [
    {name: "Monster Campaign"},
    {name: "Exploration Campaign"}
  ]
  
  campaign = campaign_attributes.map do |attributes|
    Campaign.create(attributes)
  end
  #   Character Seed Info
  character_attributes = [
{
    # campaign: campaign[0],
    # player: players[0],
    character_name: "Drizzt",
    race: "Drow",
    class: "Ranger",
    alignment: "Chaotic good",
    strength: 3,
    dexterity: 5,
    constitution: 4,
    intelligence: 6,
    wisdom: 5,
    charisma: 6,
    personality: "Thoughtful",
    traits: "tolerance",
    flaws: "flaws",
    equipment: "enchanted mithral chainmail"
  } ]
  characters = character_attributes.map do |attributes|
    Character.create(attributes)
  end

#   Character.create(
#     campaign: campaign[1],
#     player: players[1],
#     character_name: "NPC"
#   )