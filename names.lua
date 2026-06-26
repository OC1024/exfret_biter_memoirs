---@class (partial) MemoirGlobal
---@field biter_names name_info[]
---@field biter_name_count integer
---@field biter_memoirs MemoirString[]
---@field biter_memoir_count integer

---@alias NonNilableLocalisedString string|number|boolean|LuaObject|(LocalisedString[])


---@class name_info
---@field name string
---@field pronouns pronoun_id
---@field special_memoir? NonNilableLocalisedString
---@field color? Color

---@enum pronoun_id
PRONOUNS = {
    -- Will resolve to any of the valid pronouns
    any = -2,
    -- Will resolve to either male or female
    either = -1,

    their = 0,
    male = 1,
    female = 2,
}

---@class MemoirLocaleString
---@field [1] string Locale Key
---@field [2] string? The name (will be autofilled)
---@field [3] pronoun_id? The pronoun (will be autofilled)
---@field [4]? NonNilableLocalisedString
---@field [5]? NonNilableLocalisedString
---@field [6]? NonNilableLocalisedString
---@field [7]? NonNilableLocalisedString
---@field [8]? NonNilableLocalisedString
---@field [9]? NonNilableLocalisedString
---@field [10]? NonNilableLocalisedString
---@field [11]? NonNilableLocalisedString
---@field [12]? NonNilableLocalisedString
---@field [13]? NonNilableLocalisedString
---@field [14]? NonNilableLocalisedString
---@field [15]? NonNilableLocalisedString
---@field [16]? NonNilableLocalisedString
---@field [17]? NonNilableLocalisedString
---@field [18]? NonNilableLocalisedString
---@field [19]? NonNilableLocalisedString
---@field [20]? NonNilableLocalisedString
---@field [21]? NonNilableLocalisedString

--- The name will get prepended if it's a string
--- If it's a LocalisedString on the other hand,
--- the first two parameters (aka the 2nd and 3rd indexes)
--- *Will* get squashed by the name and pronoun id.
---@alias MemoirString string|MemoirLocaleString

---@nodiscard
---@return name_info[]
---@return integer name_count
function default_names()
    ---@type name_info[]
    local names = { --MARK: Names
        {pronouns = PRONOUNS.male,   name = "George"},
        {pronouns = PRONOUNS.female, name = "Sue"},
        {pronouns = PRONOUNS.female, name = "Mary"},
        {pronouns = PRONOUNS.male,   name = "Bob"},
        {pronouns = PRONOUNS.male,   name = "Cho"},
        {pronouns = PRONOUNS.male,   name = "Lee"},
        {pronouns = PRONOUNS.male,   name = "Henry"},
        {pronouns = PRONOUNS.female, name = "Alice"},
        {pronouns = PRONOUNS.female, name = "Amanda"},
        {pronouns = PRONOUNS.any,    name = "Tyler"},
        {pronouns = PRONOUNS.male,   name = "Kyle"},
        {pronouns = PRONOUNS.male,   name = "Sam"},
        {pronouns = PRONOUNS.male,   name = "Greg"},
        {pronouns = PRONOUNS.male,   name = "Varik", special_memoir = {"biter-memoirs-special.Varik"}},
        {pronouns = PRONOUNS.female, name = "Liz"},
        {pronouns = PRONOUNS.female, name = "Lauren"},
        {pronouns = PRONOUNS.female, name = "Eve"},
        {pronouns = PRONOUNS.female, name = "Cathy"},
        {pronouns = PRONOUNS.male,   name = "Hao"},
        {pronouns = PRONOUNS.any,    name = "Indy"},
        {pronouns = PRONOUNS.male,   name = "Buster"},
        {pronouns = PRONOUNS.male,   name = "Buddy"},
        {pronouns = PRONOUNS.any,    name = "Chomps"},
        {pronouns = PRONOUNS.female, name = "EmilyFlambe", special_memoir = {"biter-memoirs-special.EmilyFlambe"}},
        {pronouns = PRONOUNS.male,   name = "Nilaus", special_memoir = {"biter-memoirs-special.Nilaus"}},
        {pronouns = PRONOUNS.male,   name = "Nefrums", special_memoir = {"biter-memoirs-special.Nefrums"}},
        {pronouns = PRONOUNS.male,   name = "AntiElitz"},
        {pronouns = PRONOUNS.male,   name = "NotExfret"},
        {pronouns = PRONOUNS.any,    name = "Killer"},
        {pronouns = PRONOUNS.any,    name = "NomNoms"},
        {pronouns = PRONOUNS.any,    name = "Hungerz"},
        {pronouns = PRONOUNS.any,    name = "Taylor"},
        {pronouns = PRONOUNS.male,   name = "Bill"},
        {pronouns = PRONOUNS.male,   name = "Chad"},
        {pronouns = PRONOUNS.male,   name = "Carson"},
        {pronouns = PRONOUNS.female, name = "Olivia"},
        {pronouns = PRONOUNS.male,   name = "_CodeGreen"},
        {pronouns = PRONOUNS.male,   name = "Periklis"},
        {pronouns = PRONOUNS.female, name = "Jazlene"},
        {pronouns = PRONOUNS.male,   name = "Noah"},
        {pronouns = PRONOUNS.male,   name = "Liam"},
        {pronouns = PRONOUNS.female, name = "Emerald"},
        {pronouns = PRONOUNS.female, name = "Ruby"},
        {pronouns = PRONOUNS.any,    name = "Ymir"},
        {pronouns = PRONOUNS.any,    name = "Meow"},
        {pronouns = PRONOUNS.female, name = "Aria"},
        {pronouns = PRONOUNS.female, name = "Katrina"},
        {pronouns = PRONOUNS.female, name = "Scott"},
        {pronouns = PRONOUNS.male,   name = "Mr. Bitter"},
        {pronouns = PRONOUNS.male,   name = "Johny"},
        {pronouns = PRONOUNS.male,   name = "Tommy"},
        {pronouns = PRONOUNS.female, name = "Mrs. Bitter"},
        {pronouns = PRONOUNS.male,   name = "Bitter Jr."},
        {pronouns = PRONOUNS.any,    name = "Bitey"},
        {pronouns = PRONOUNS.any,    name = "Ipsum Lorem"},
        {pronouns = PRONOUNS.male,   name = "Bob Ross"},
        {pronouns = PRONOUNS.any,    name = "Kid"},
        {pronouns = PRONOUNS.their,  name = "Alien"},
        {pronouns = PRONOUNS.their,  name = "Unit"},
        {pronouns = PRONOUNS.female, name = "Amelia"},
        {pronouns = PRONOUNS.male,   name = "John Smith"},
        {pronouns = PRONOUNS.female, name = "Charlotte"},
        {pronouns = PRONOUNS.female, name = "Amy"},
        {pronouns = PRONOUNS.female, name = "Rose"},
        {pronouns = PRONOUNS.female, name = "Daisy"},
        {pronouns = PRONOUNS.female, name = "Bubbles"},
        {pronouns = PRONOUNS.female, name = "Ava"},
        {pronouns = PRONOUNS.their,  name = "Asher", special_memoir = {"biter-memoirs-special.Asher"}},
        {pronouns = PRONOUNS.male,   name = "Isaiah"},
        {pronouns = PRONOUNS.male,   name = "Juan"},
        {pronouns = PRONOUNS.female, name = "Maria"},
        {pronouns = PRONOUNS.male,   name = "Julio"},
        {pronouns = PRONOUNS.female, name = "Ivy"},
        {pronouns = PRONOUNS.female, name = "Ella"},
        {pronouns = PRONOUNS.male,   name = "Eli"},
        {pronouns = PRONOUNS.male,   name = "Nathan"},
        {pronouns = PRONOUNS.their,  name = "Random"},
        {pronouns = PRONOUNS.their,  name = "nullptr"},
        {pronouns = PRONOUNS.their,  name = "Megan"},
        {pronouns = PRONOUNS.male,   name = "Cueball"},
        {pronouns = PRONOUNS.male,   name = "Rex"},
        {pronouns = PRONOUNS.any,    name = "Ale"},
        {pronouns = PRONOUNS.male,   name = "Good Boi", special_memoir = {"biter-memoirs-special.Good Boi"}},
        {pronouns = PRONOUNS.male,   name = "Soto"},
        {pronouns = PRONOUNS.any,    name = "I Hungerz"},
        {pronouns = PRONOUNS.their,  name = "Bug"},
        {pronouns = PRONOUNS.female, name = "Zoe"},
        {pronouns = PRONOUNS.male,   name = "Kehlani"},
        {pronouns = PRONOUNS.female, name = "Iris"},
        {pronouns = PRONOUNS.male,   name = "Chase"},
        {pronouns = PRONOUNS.male,   name = "Jacob"},
        {pronouns = PRONOUNS.female, name = "Caroline"},
        {pronouns = PRONOUNS.male,   name = "Beau"},
        {pronouns = PRONOUNS.female, name = "Claire"},
        {pronouns = PRONOUNS.female, name = "Vivian"},
        {pronouns = PRONOUNS.male,   name = "Mr. Spitz"},
        {pronouns = PRONOUNS.male,   name = "Drop Tables"},
        {pronouns = PRONOUNS.male,   name = "Bud"},
        {pronouns = PRONOUNS.their,  name = "Coronavirus"},
        {pronouns = PRONOUNS.female, name = "Derpy"},
        {pronouns = PRONOUNS.male,   name = "DinnerBone"},
        {pronouns = PRONOUNS.any,    name = "SoonToBeDead"},
        {pronouns = PRONOUNS.female, name = "Lizzy"},
        {pronouns = PRONOUNS.male,   name = "Wavetrex"},
        {pronouns = PRONOUNS.male,   name = "Brevven"},
        {pronouns = PRONOUNS.any,    name = "Citizen 1"},
        {pronouns = PRONOUNS.any,    name = "Citizen 2"},
        {pronouns = PRONOUNS.any,    name = "Citizen 4"},
        {pronouns = PRONOUNS.any,    name = "GGs", special_memoir = {"biter-memoirs-special.GGs"}},
        {pronouns = PRONOUNS.male,   name = "Klonan"},
        {pronouns = PRONOUNS.male,   name = "Kovarex"},
        {pronouns = PRONOUNS.their,  name = "Factorio", special_memoir = {"biter-memoirs-special.Factorio"}},
        {pronouns = PRONOUNS.any,    name = "Scorpion"},
        {pronouns = PRONOUNS.male,   name = "DoshDoshington", special_memoir = {"biter-memoirs-special.DoshDoshington"}},
        {pronouns = PRONOUNS.male,   name = "Comkat"},
        {pronouns = PRONOUNS.their,  name = "1000x tech cost"},
        {pronouns = PRONOUNS.male,   name = "Earendel", special_memoir = {"biter-memoirs-special.Earendel"}},
        {pronouns = PRONOUNS.any,    name = "Pupper"},
        {pronouns = PRONOUNS.any,    name = "Doggo"},
        {pronouns = PRONOUNS.any,    name = "Bork"},
        {pronouns = PRONOUNS.male,   name = "Garath"},
        {pronouns = PRONOUNS.male,   name = "Max"},
        {pronouns = PRONOUNS.female, name = "Minnie"},
        {pronouns = PRONOUNS.male,   name = "Mac"},
        {pronouns = PRONOUNS.female, name = "Wilt"},
        {pronouns = PRONOUNS.male,   name = "King"},
        {pronouns = PRONOUNS.male,   name = "Prince"},
        {pronouns = PRONOUNS.male,   name = "Loki"},
        {pronouns = PRONOUNS.female, name = "Chen"},
        {pronouns = PRONOUNS.female, name = "Michelle"},
        {pronouns = PRONOUNS.female, name = "Jenny"},
        {pronouns = PRONOUNS.male,   name = "Forest"},
        {pronouns = PRONOUNS.male,   name = "Bilka"},
        {pronouns = PRONOUNS.male,   name = "Fred Rogers"},
        {pronouns = PRONOUNS.male,   name = "Dasher"},
        {pronouns = PRONOUNS.male,   name = "Rudolph"},
        {pronouns = PRONOUNS.male,   name = "Raiguard"},
        {pronouns = PRONOUNS.male,   name = "Bobingabout"},
        {pronouns = PRONOUNS.male,   name = "TravisSucks"},
        {pronouns = PRONOUNS.female, name = "Demi Lovato"},
        {pronouns = PRONOUNS.their,  name = "[item=iron-plate]"},
        {pronouns = PRONOUNS.any,    name = "quirky"},
        {pronouns = PRONOUNS.their,  name = "[item=pistol]"},
        {pronouns = PRONOUNS.their,  name = "[item=artillery-wagon-cannon]"},
        {pronouns = PRONOUNS.their,  name = "[item=submachine-gun]"},
        {pronouns = PRONOUNS.male,   name = "Sparticus"},
        {pronouns = PRONOUNS.male,   name = "Monty Python"},
        {pronouns = PRONOUNS.female, name = "Majesty"},
        {pronouns = PRONOUNS.female, name = "Mae"},
        {pronouns = PRONOUNS.male,   name = "Smith"},
        {pronouns = PRONOUNS.male,   name = "Tao"},
        {pronouns = PRONOUNS.male,   name = "Buddha"},
        {pronouns = PRONOUNS.male,   name = "Jesus"},
        {pronouns = PRONOUNS.male,   name = "Obama"},
        {pronouns = PRONOUNS.male,   name = "boskid"},
        {pronouns = PRONOUNS.male,   name = "Erythion"},
        {pronouns = PRONOUNS.male,   name = "Rseding"},
        {pronouns = PRONOUNS.male,   name = "Loren"},
        {pronouns = PRONOUNS.male,   name = "mikelat"},
        {pronouns = PRONOUNS.female, name = "damzl"},
        {pronouns = PRONOUNS.male,   name = "alcari"},
        {pronouns = PRONOUNS.male,   name = "friendcalledfive", special_memoir = {"biter-memoirs-special.friendcalledfive"}},
        {pronouns = PRONOUNS.male,   name = "Moridrex"},
        {pronouns = PRONOUNS.their,  name = "GT:NH"},
        {pronouns = PRONOUNS.any,    name = "\"Quotes\""},
        {pronouns = PRONOUNS.any,    name = "Biter no. 457098q709827092457"},
        {pronouns = PRONOUNS.any,    name = ":)"},
        {pronouns = PRONOUNS.their,  name = "Fourier Transform"},
        {pronouns = PRONOUNS.male,   name = "Galous"},
        {pronouns = PRONOUNS.male,   name = "Everiste"},
        {pronouns = PRONOUNS.male,   name = "Abel"},
        {pronouns = PRONOUNS.male,   name = "Tony"},
        {pronouns = PRONOUNS.male,   name = "SquidCoder"},
        {pronouns = PRONOUNS.male,   name = "Michal"},
        {pronouns = PRONOUNS.male,   name = "Tomas"},
        {pronouns = PRONOUNS.male,   name = "Albert"},
        {pronouns = PRONOUNS.male,   name = "Twinsen"},
        {pronouns = PRONOUNS.male,   name = "Robert"},
        {pronouns = PRONOUNS.male,   name = "Nick"},
        {pronouns = PRONOUNS.female, name = "Wube"},
        {pronouns = PRONOUNS.any,    name = "Person"},
        {pronouns = PRONOUNS.male,   name = "Batman"},
        {pronouns = PRONOUNS.male,   name = "Ken"},
        {pronouns = PRONOUNS.male,   name = "Scoob", special_memoir = {"biter-memoirs-special.Scoob"}},
        {pronouns = PRONOUNS.any,    name = "Nemesis"},
        {pronouns = PRONOUNS.their,  name = "SPM"},
        {pronouns = PRONOUNS.any,    name = "The factory must grow"},
        {pronouns = PRONOUNS.their,  name = "r/factoriohno"},
        {pronouns = PRONOUNS.female, name = "Abby"},
        {pronouns = PRONOUNS.male,   name = "Mike"},
        {pronouns = PRONOUNS.male,   name = "Pyanodon"},
        {pronouns = PRONOUNS.female, name = "Demi"},
        {pronouns = PRONOUNS.male,   name = "Dominus_Pullum"},
        {pronouns = PRONOUNS.male,   name = "FatalOwl"},
        {pronouns = PRONOUNS.female, name = "SkyeOfBreeze"},
        {pronouns = PRONOUNS.male,   name = "Brad"},
        {pronouns = PRONOUNS.male,   name = "Bradley"},
        {pronouns = PRONOUNS.male,   name = "Ronald"},
        {pronouns = PRONOUNS.male,   name = "Harry"},
        {pronouns = PRONOUNS.female, name = "Hermione"},
        {pronouns = PRONOUNS.male,   name = "PokTux"},
        {pronouns = PRONOUNS.male,   name = "Pikachu", special_memoir = {"biter-memoirs-special.Pikachu"}},
        {pronouns = PRONOUNS.male,   name = "Pikachu2", special_memoir = {"biter-memoirs-special.Pikachu2"}},
        {pronouns = PRONOUNS.female, name = "Vaporeon"},
        {pronouns = PRONOUNS.male,   name = "Steve"},
        {pronouns = PRONOUNS.male,   name = "Elon Musk", special_memoir = {"biter-memoirs-special.Elon Musk"}},
        {pronouns = PRONOUNS.male,   name = "Fermat", special_memoir = {"biter-memoirs-special.Fermat"}},
        {pronouns = PRONOUNS.male,   name = "Nova"},
        {pronouns = PRONOUNS.female, name = "Isabelle"},
        {pronouns = PRONOUNS.male,   name = "Foxabilo"},
        {pronouns = PRONOUNS.male,   name = "Carl Sagan", special_memoir = {"biter-memoirs-special.Carl Sagan"}},
        {pronouns = PRONOUNS.male,   name = "Cobai", special_memoir = {"biter-memoirs-special.Cobai"}},
        {pronouns = PRONOUNS.male,   name = "BlackATM", special_memoir = {"biter-memoirs-special.BlackATM"}},
        {pronouns = PRONOUNS.male,   name = "Lebothegizebo", special_memoir = {"biter-memoirs-special.Lebothegizebo"}},
        {pronouns = PRONOUNS.male,   name = "sassxolotl", special_memoir = {"biter-memoirs-special.sassxolotl"}},
        {pronouns = PRONOUNS.male,   name = "Randall", special_memoir = {"biter-memoirs-special.Randall"}},
        {pronouns = PRONOUNS.male,   name = "Sun Tzu", special_memoir = {"biter-memoirs-special.Sun Tzu"}},
        {pronouns = PRONOUNS.female, name = "Debbie"},
        {pronouns = PRONOUNS.female, name = "Shelby"},
        {pronouns = PRONOUNS.male,   name = "Jeison"},
        {pronouns = PRONOUNS.female, name = "Tragedeigh"},
        {pronouns = PRONOUNS.female, name = "Kynnedee"},
        {pronouns = PRONOUNS.female, name = "Emeilla"},
        {pronouns = PRONOUNS.female, name = "Jmily"},
        {pronouns = PRONOUNS.female, name = "Phaedra"},
        {pronouns = PRONOUNS.female, name = "Deyzi"},
        {pronouns = PRONOUNS.female, name = "Mom"},
        {pronouns = PRONOUNS.any,    name = "fren"},
        {pronouns = PRONOUNS.male,   name = "Spongebob"},
        {pronouns = PRONOUNS.male,   name = "Rasputin"},
        {pronouns = PRONOUNS.their,  name = "Bitertron 3000"},
        {pronouns = PRONOUNS.their,  name = "Archangel666"},
        {pronouns = PRONOUNS.their,  name = "propertyrandomizer"},
        {pronouns = PRONOUNS.male,   name = "Bluey"},
        {pronouns = PRONOUNS.male,   name = "Blackbeard"},
        {pronouns = PRONOUNS.female, name = "Sophia"},
        {pronouns = PRONOUNS.male,   name = "Aiden"},
        {pronouns = PRONOUNS.female, name = "Emma"},
        {pronouns = PRONOUNS.male,   name = "Lucas"},
        {pronouns = PRONOUNS.male,   name = "Mason"},
        {pronouns = PRONOUNS.female, name = "Harper"},
        {pronouns = PRONOUNS.male,   name = "Caleb"},
        {pronouns = PRONOUNS.male,   name = "Samuel"},
        {pronouns = PRONOUNS.female, name = "Grace"},
        {pronouns = PRONOUNS.female, name = "Paige"},
        {pronouns = PRONOUNS.female, name = "Scarlett"},
        {pronouns = PRONOUNS.male,   name = "Riley"},
        {pronouns = PRONOUNS.female, name = "Natalie"},
        {pronouns = PRONOUNS.female, name = "Victoria"},
        {pronouns = PRONOUNS.any,    name = "Doubt"},
        {pronouns = PRONOUNS.any,    name = "Guilt"},
        {pronouns = PRONOUNS.female, name = "Sarah"},
        {pronouns = PRONOUNS.female, name = "Bonita"},
        {pronouns = PRONOUNS.female, name = "Bonnie"},
        {pronouns = PRONOUNS.male,   name = "engelbert"},
        {pronouns = PRONOUNS.male,   name = "Casper"},
        {pronouns = PRONOUNS.male,   name = "Caspian"},
        {pronouns = PRONOUNS.any,    name = "Coffee"},
        {pronouns = PRONOUNS.male,   name = "Reggie"},
        {pronouns = PRONOUNS.male,   name = "Walter"},
        {pronouns = PRONOUNS.male,   name = "Joe"},
        {pronouns = PRONOUNS.male,   name = "Bach"},
        {pronouns = PRONOUNS.female, name = "Myrna"},
        {pronouns = PRONOUNS.female, name = "Bertha"},
        {pronouns = PRONOUNS.male,   name = "Boris"},
        {pronouns = PRONOUNS.female, name = "Hillary"},
        {pronouns = PRONOUNS.female, name = "Margaret"},
        {pronouns = PRONOUNS.female, name = "Catherine"},
        {pronouns = PRONOUNS.male,   name = "Peter"},
        {pronouns = PRONOUNS.male,   name = "Yousaf"},
        {pronouns = PRONOUNS.male,   name = "Leonard"},
        {pronouns = PRONOUNS.male,   name = "Newton"},
        {pronouns = PRONOUNS.male,   name = "Einstein"},
        {pronouns = PRONOUNS.any,    name = "Fear"},
        {pronouns = PRONOUNS.male,   name = "Bessie"},
        {pronouns = PRONOUNS.female, name = "Tabitha"},
        {pronouns = PRONOUNS.male,   name = "Ron"},
        {pronouns = PRONOUNS.male,   name = "Melvin"},
        {pronouns = PRONOUNS.female, name = "Angelica"},
        {pronouns = PRONOUNS.their,  name = "Egg"},
        {pronouns = PRONOUNS.male,   name = "Javier"},
        {pronouns = PRONOUNS.female, name = "Simona"},
        {pronouns = PRONOUNS.their,  name = "The Knight"},
        {pronouns = PRONOUNS.male,   name = "Thanos"},
        {pronouns = PRONOUNS.male,   name = "Thor"},
        {pronouns = PRONOUNS.male,   name = "Stark"},
        {pronouns = PRONOUNS.male,   name = "The Little Prince"},
        {pronouns = PRONOUNS.male,   name = "Senator Bites"},
        {pronouns = PRONOUNS.male,   name = "Doctor Johnson"},
        {pronouns = PRONOUNS.male,   name = "Ferb"},
        {pronouns = PRONOUNS.their,  name = "e"},
        {pronouns = PRONOUNS.female, name = "Big Bertha"},
        {pronouns = PRONOUNS.female, name = "Katniss"},
        {pronouns = PRONOUNS.female, name = "Geranium"},
        {pronouns = PRONOUNS.female, name = "Jolina"},
        {pronouns = PRONOUNS.male,   name = "Juanito"},
        {pronouns = PRONOUNS.their,  name = "Eigenvector"},
        {pronouns = PRONOUNS.male,   name = "Perry"},
        {pronouns = PRONOUNS.their,  name = "chatGPT"},
        {pronouns = PRONOUNS.male,   name = "Chris"},
        {pronouns = PRONOUNS.male,   name = "Anush"},
        {pronouns = PRONOUNS.female, name = "Nidhi"},
        {pronouns = PRONOUNS.male,   name = "Dwayne"},
        {pronouns = PRONOUNS.male,   name = "Emperor"},
        {pronouns = PRONOUNS.female, name = "Empress"},
        {pronouns = PRONOUNS.male,   name = "Khan"},
        {pronouns = PRONOUNS.male,   name = "Billy"},
        {pronouns = PRONOUNS.male,   name = "Little Billy"},
        {pronouns = PRONOUNS.male,   name = "James"},
        {pronouns = PRONOUNS.male,   name = "John"},
        {pronouns = PRONOUNS.male,   name = "Jay"},
        {pronouns = PRONOUNS.female, name = "Paisley"},
        {pronouns = PRONOUNS.female, name = "Naomi"},
        {pronouns = PRONOUNS.any,    name = "Swifty"},
        {pronouns = PRONOUNS.female, name = "Carolyn"},
        {pronouns = PRONOUNS.male,   name = "Ash"},
        {pronouns = PRONOUNS.male,   name = "Luca"},
        {pronouns = PRONOUNS.any,    name = "PennyJim", special_memoir = {"biter-memoirs-special.PennyJim"}},
        {pronouns = PRONOUNS.male,   name = "Fireball", special_memoir = {"biter-memoirs-special.Fireball"}},
        {pronouns = PRONOUNS.male,   name = "Thomas"},
        {pronouns = PRONOUNS.female, name = "Lua"},
        {pronouns = PRONOUNS.female, name = "Loli"},
        {pronouns = PRONOUNS.female, name = "Dianna"},
        {pronouns = PRONOUNS.female, name = "Kara"},
        {pronouns = PRONOUNS.female, name = "Aubrey"},
        {pronouns = PRONOUNS.female, name = "Hope"},
        {pronouns = PRONOUNS.female, name = "Latisha"},
        {pronouns = PRONOUNS.female, name = "Rebecca"},
        {pronouns = PRONOUNS.female, name = "Tori"},
        {pronouns = PRONOUNS.male,   name = "Trace"},
        {pronouns = PRONOUNS.their,  name = "The 2008 Financial Crisis"},
        {pronouns = PRONOUNS.female, name = "Jennie"},
        {pronouns = PRONOUNS.female, name = "Amber"},
        {pronouns = PRONOUNS.female, name = "Lilu"},
        {pronouns = PRONOUNS.female, name = "Kim"},
        {pronouns = PRONOUNS.female, name = "Stacy"},
        {pronouns = PRONOUNS.female, name = "Pepper"},
        {pronouns = PRONOUNS.female, name = "Brittney"},
        {pronouns = PRONOUNS.female, name = "Joan"},
        {pronouns = PRONOUNS.female, name = "Kylie"},
        {pronouns = PRONOUNS.female, name = "Mia"},
        {pronouns = PRONOUNS.female, name = "Katherine"},
        {pronouns = PRONOUNS.female, name = "Luna"},
        {pronouns = PRONOUNS.female, name = "Nora"},
        {pronouns = PRONOUNS.female, name = "akip"},
        {pronouns = PRONOUNS.female, name = "Brooke"},
        {pronouns = PRONOUNS.female, name = "Eliza"},
        {pronouns = PRONOUNS.female, name = "Melanie"},
        {pronouns = PRONOUNS.female, name = "Piper"},
        {pronouns = PRONOUNS.male,   name = "Upside-down Eye"},
        {pronouns = PRONOUNS.female, name = "Tasha"},
        {pronouns = PRONOUNS.their,  name = "Fungible Asset"},
        {pronouns = PRONOUNS.female, name = "Amira"},
        {pronouns = PRONOUNS.female, name = "Brianna"},
        {pronouns = PRONOUNS.female, name = "Val"},
        {pronouns = PRONOUNS.female, name = "Ada"},
        {pronouns = PRONOUNS.female, name = "Wren"},
        {pronouns = PRONOUNS.female, name = "Vera"},
        {pronouns = PRONOUNS.female, name = "Kiara"},
        {pronouns = PRONOUNS.female, name = "Harmony"},
        {pronouns = PRONOUNS.female, name = "Daphne"},
        {pronouns = PRONOUNS.any,    name = "MeepleCat", special_memoir = {"biter-memoirs-special.MeepleCat"}},
        {pronouns = PRONOUNS.any,    name = "nuker_man", special_memoir = {"biter-memoirs-special.nuker_man"}},
        {pronouns = PRONOUNS.male,   name = "Mr. Whitebug", special_memoir = {"biter-memoirs-special.Mr. Whitebug"}},
        {pronouns = PRONOUNS.any,    name = "Skullbearer", special_memoir = {"biter-memoirs-special.Skullbearer"}},
    }

    local name_count = #names

    --MARK: Conditional Names

    if prototypes.quality["legendary"] then
        name_count = name_count + 1
        names[name_count] = {pronouns = PRONOUNS.any,    name = "[item=depleted-uranium-fuel-cell,quality=legendary]"}
    end

    return names, name_count
end

---@nodiscard
---@param count integer
---@return MemoirString[]
function default_memoirs(count) -- MARK: Memoirs
    ---@type MemoirString[]
    local memoirs = {}
    for i = 1, count do
        memoirs[i] = {"biter-memoirs."..i}--[[@as MemoirLocaleString]]
    end
    return memoirs
end

-- MARK: Defaults
DEFAULT_MEMOIR_COUNT = 116
function load_defaults()
    -- All the names, pronouns, and special memoirs
    storage.biter_names, storage.biter_name_count = default_names()

    --- The numbers here should match the highest locale number
    storage.biter_memoir_count = DEFAULT_MEMOIR_COUNT
    storage.biter_memoirs = default_memoirs(DEFAULT_MEMOIR_COUNT)

    ---@diagnostic disable-next-line: inject-field
    ---@deprecated Now contained in name_info
    ---@type nil
    storage.biter_name_pronouns = nil
    ---@diagnostic disable-next-line: inject-field
    ---@deprecated Now contained in name_info
    ---@type nil
    storage.biter_memoirs_special = nil
end