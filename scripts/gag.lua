if not game:IsLoaded() then
	repeat
		print("Wait Load...");
		game.Loaded:Wait();
	until game:IsLoaded();
end

script_key="OhbqmypDxTbCLzOZiFpoLiCfqQBiLCAC";
setfpscap(3)

getgenv().gagConfig = {
    -- Event:
    CRAFT_EVENT = { "Anti Bee Egg", "Skyroot Chest" },
    BUY_TRAVELING_MERCHANT = { "Bee Egg", "Paradise Egg", "Loquat", "Feijoa", "Pitcher Plant" },
    BUY_EVENT_SHOP = { "Sprout Egg", "Skyroot Chest", "Gnome", "Sprout Seed Pack" },
    PLANT_EVENT_TREES = true,  -- This config will replace most plant related config
    
    -- General:
    AUTO_UPDATE_RESTART = true,
    REDEEM_CODES = {},
    EXTRA_PET_SLOTS = 5,
    EXTRA_EGG_SLOTS = 5,
    ADD_FRIEND = false,
    OPEN_ALL_SEED_PACK = true,

    MAX_PLANTS = 500,
    DESTROY_UNTIL_MIN_PLANTS = 450,
    DELETE_PLANTS_AFTER_MAX = { "Carrot" },

    LIMIT_PLANT_SEED = { ["Orange Tulip"] = 40, ["Blueberry"] = 30, ["Strawberry"] = 30, ["Tomato"] = 50, ["Bamboo"] = 30, ["Daffodil"] = 50 },
    
    BUY_EGGS = { "Bug Egg", "Bee Egg", "Paradise Egg", "Mythical Egg", "Rare Summer Egg", "Common Summer Egg", "Rare Egg", "Uncommon Egg", "Common Egg" },
    PLANT_EGGS = { "Sprout Egg", "Gourmet Egg", "Corrupted Zen Egg", "Zen Egg", "Dinosaur Egg", "Primal Egg", "Anti Bee Egg", "Bee Egg", "Night Egg", "Bug Egg", "Paradise Egg", "Mythical Egg", "Common Summer Egg", "Rare Egg" },
    
    BUY_SEED_SHOP = { "Romanesco", "Elder Strawberry", "Giant Pinecone", "Burning Bud", "Sugar Apple", "Ember Lily", "Beanstalk", "Cacao", "Pepper", "Mushroom", "Grape", "Mango", "Dragon Fruit", "Cactus", ["Coconut"] = 50, ["Bamboo"] = 50, ["Apple"] = 50, ["Pumpkin"] = 50, ["Watermelon"] = 50, ["Daffodil"] = 50, ["Tomato"] = 50, ["Orange Tulip"] = 50, ["Blueberry"] = 50, ["Strawberry"] = 50, ["Carrot"] = 50 },
    KEEP_SEEDS = {},
    KEEP_SEEDS_AFTER_MAX_PLANTS = {},
    
    FAVOURITE_FRUIT_MUTATIONS = {},
    SKIP_HARVEST_MUTATIONS = {},

    KEEP_PETS = { "Apple Gazelle", "Green Bean", "Chicken Zombie", "Lemon Lion", "Peach Wasp", "Gnome", "Griffin", ["Orange Tabby"] = 10, ["Golem"] = 2, ["Golden Lab"] = 1, ["Dog"] = 1,  ["Bunny"] = 1, "Golden Goose", "Spriggan", "Junkbot", "Lobster Thermidor", "French Fry Ferret", "Corrupted Kitsune", "Raiju", "Mizuchi", "Kitsune", "Koi", "Bald Eagle", "Ankylosaurus", "Spinosaurus", "Brontosaurus", "T-Rex", "Fennec Fox", "Disco Bee", "Raccoon", "Queen Bee", "Night Owl", "Dragonfly", "Butterfly", "Mimic Octopus", "Red Fox", "Hyacinth Macaw", "Pack Bee", "Petal Bee", "Bear Bee", "Hamster", "Blood Owl", "Cooked Owl", "Golden Bee", "Owl", "Firefly", "Chicken Zombie", ["Kodama"] = 6, ["Corrupted Kodama"] = 6, ["Blood Kiwi"] = 2, ["Capybara"] = 2, ["Starfish"] = 5, ["Rooster"] = 4, ["Sunny-Side Chicken"] = 8, ["Tanchozuru"] = 5, ["Kappa"] = 5, ["Seal"] = 5, ["Dairy Cow"] = 5 },
    KEEP_PETS_WEIGHT = 6,
    KEEP_PETS_AGE = 90,

    EQUIP_PETS = { ["Starfish"] = 7, ["Capybara"] = 1, "Sunny-Side Chicken" , "Chicken", "Rooster" },
    USE_PETS_FOR_UPGRADE_SLOT = { "Chicken", "Starfish" },
    REMOVE_PET_MAX_UPGRADE = { "Chicken", "Starfish" },

    BUY_GEAR_SHOP = { "Grandmaster Sprinkler", "Master Sprinkler", "Godly Sprinkler", "Advanced Sprinkler", "Basic Sprinkler", "Trading Ticket" },
    USE_SPRINKLER = { "Basic Sprinkler", "Godly Sprinkler", "Advanced Sprinkler" },

    PET_WEBHOOK_URL = "https://discord.com/api/webhooks/1407984355355267162/ZCWyDUqZJR-OvEx2o7vUIumtEgecJZp-f748Xpvwq_OpvzdfZn9CJ8CvrjmLrkXcL0qc",
    SEED_WEBHOOK_URL = "", 
    NOTIFY_PETS = { "Gnome", "Griffin", "Golden Goose", "Lobster Thermidor", "French Fry Ferret", "Corrupted Kitsune", "Raiju", "Mizuchi", "Bald Eagle", "Koi", "Kitsune", "Fennec Fox", "Disco Bee", "Raccoon", "Queen Bee", "Night Owl", "Dragonfly", "Butterfly", "Mimic Octopus", "Red Fox", "Brontosaurus", "T-Rex", "Ankylosaurus", "Spinosaurus" },
    NOTIFY_PETS_WEIGHT = 6,
    DISCORD_ID = "",
    WEBHOOK_NOTE = "",
    SHOW_WEBHOOK_USERNAME = true,
    SHOW_WEBHOOK_JOBID = true,
}

task.spawn(function()
    local success = false
    local result
    repeat
        -- ลองรันลิงก์ที่ 1
        success, result = pcall(function()
            return game:HttpGet("https://api.luarmor.net/files/v3/loaders/c916e5b90dc37c71ecf1ec00dfce3d5d.lua")
        end)

        if success then
            loadstring(result)()
            print("✅ Loaded from Link 1")
            break
        else
            print("❌ Link 1 failed: " .. result)
        end

        wait(2)

        -- ลองรันลิงก์ที่ 2
        success, result = pcall(function()
            return game:HttpGet("https://api.luarmor.net/files/v3/loaders/a2234a9cfbe480dfed9eaf6c00a012ca.lua")
        end)

        if success then
            loadstring(result)()
            print("✅ Loaded from Link 2")
            break
        else
            print("❌ Link 2 failed: " .. result)
        end

        wait(2)

    until success  -- ถ้าลิงก์ใดลิงก์หนึ่งสำเร็จ → จบการทำงาน
end)
