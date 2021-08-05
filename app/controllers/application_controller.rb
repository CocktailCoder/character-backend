require './config/environment'

class ApplicationController < Sinatra::Base
  register Sinatra::CrossOrigin

  configure do
    enable :cross_origin
    set :allow_origin, "*" 
    set :allow_methods, [:get, :post, :patch, :delete, :options] # allows these HTTP verbs
    set :expose_headers, ['Content-Type']
  end

  options "*" do
    response.headers["Allow"] = "HEAD,GET,PUT,POST,DELETE,OPTIONS"
    response.headers["Access-Control-Allow-Headers"] = "X-Requested-With, X-HTTP-Method-Override, Content-Type, Cache-Control, Accept"
    200
  end

  get "/" do
    {hello: "world"}.to_json
  end

  get "/players" do 
    Player.all.to_json
  end

  post "/new_player" do 
    player = Player.create(
      name: params[:name], specialization: params[:specialization]
    )
    
    player.to_json
  end

  patch "/playerss/:id" do 
    player = Player.find(params[:id])
    attrs_to_update = params.select{|k,v| ["name", "specialization"].include?(k)}
    player.update(attrs_to_update)
    player.to_json
  end

  delete "/players/:id" do 
    player = Player.find(params[:id])
    player.destroy
    player.to_json
  end

  get "/campaigns" do 
    Campaign.all.to_json
  end

  post "/new_campaign" do
    campaign = Campaign.create(
      name: params[:name]
    )
    campaign.to_json
  end

  patch "/campaigns/:id" do 
    Campaign = Campaign.find(params[:id])
    attrs_to_update = params.select{|k,v| ["name"].include?(k)}
    campaign.update(attrs_to_update)
    campaign.to_json
  end

  delete "/campaigns/:id" do 
    campaign = Campaign.find(params[:id])
    campaign.destroy
    campaign.to_json
  end

  get "/characters" do 
    Character.all.to_json
  end

  post "/new_character" do 
    puts request.body
    # character = Character.create(
    #   player_id: params[:player_id],
    #   campaign_id: params[:campaign_id]
    # )
    # character.to_json(include: [:campaign, :player])
  end

  patch "/characters/:id" do 
    character = Character.find(params[:id])
    attrs_to_update = params.select{|k,v| ["time", "campaign_id", "player_id"].include?(k)}
    character.update(attrs_to_update)
    character.to_json(include: [:campaign, :player])
  end

  delete "/characters/:id" do 
    character = Character.find(params[:id])
    character.destroy
    character.to_json(include: [:campaign, :player])
  end

  get "/players/:id/characters" do 
    player = Player.find(params[:id])
    if player
      player.characters.to_json(include: [:campaign])
    else
      {error: "Player not found"}.to_json
    end
  end

  post "/players/:id/characters" do 
    player = Player.find(params[:id])
    if player
      character = player.characters.create(
        time: params[:time],
        campaign_id: params[:campaign_id]
      )
      character.to_json(include: [:campaign, :player])
    else
      {error: "Player not found"}.to_json
    end
  end

end