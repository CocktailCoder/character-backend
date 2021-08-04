
[Character, Player, Campaign].each do |klass|
    klass.destroy_all
  end
  
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
  
  campaign_attributes = [
    {name: "Monster Campaign"},
    {name: "Exploration Campaign"}
  ]
  
  campaign = campaign_attributes.map do |attributes|
    Campaign.create(attributes)
  end
  
  Character.create(
    campaign: campaigns[0],
    player: players[0],
    time: "2:00 PM"
  )
  
  Character.create(
    campaign: campaigns[1],
    player: players[1],
    time: "11:30 AM"
  )