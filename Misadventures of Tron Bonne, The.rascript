// Misadventures of Tron Bonne, The
// #ID = 11304

//#region Variables

_statePlaying = 1
_carryThrow = 0xfe

//-Mission
_mIntro = 1

_mTecheHarbor = 32
_mBank = 33
_mPrimikiHarbor = 34
_mAurora = 35
_mFarm = 36


_mBank1 = 0x4
_mBank2 = 0x5
_mBank3 = 0x6
_mTecheHarbor1 = 0x7
_mTecheHarbor2 = 0x8
_mTecheHarbor3 = 0x9
_mPrimikiHarbor1 = 0x13
_mPrimikiHarbor2 = 0x14
_mPrimikiHarbor3 = 0x15
_mAurora1 = 0xa
_mAurora2 = 0xb
_mAurora3 = 0xc
_mFarm1 = 0xd
_mFarm2 = 0xe
_mFarm3 = 0xf
_mRuin = 0x10
_mPrision = 0x16
_mColossus = 0x17

_mLastMission = {
	_mBank: _mBank3,
	_mTecheHarbor: _mTecheHarbor3,
	_mPrimikiHarbor: _mPrimikiHarbor3,
	_mAurora: _mAurora3,
	_mFarm: _mFarm3,
	_mRuin: _mRuin
}

//-ShipRoom
_shTeasel = 0x16
_shTrons = 0x15
_shGym = 0xd
_shEngine = 0x18
_shDeck = 0x17
_shCafe = 0x12
_shStorage = 0xe
_shLab = 0x9
_shHQ = 0x10
_shCourse1 = 0x4
_shCourse2 = 0xf
_shTorture = 0x14
_shCasino = 0xa
_shResults = 0xb
_shMeetingRoom = 0x11
_sh1M = 0x5
_sh2M = 0x19
_shCredits = 0x1d
_shFinal = 0x21

//-TortureState
_trSpike = 7
_trFire = 4
_trWeight = 3
_trEnd = 5

//-Items
_miEBottle1 = -14
_miEBottle2 = -13
_miEBottle3 = -12
_miStart = 0x0ca443
_miPork = 0
_miFish = 1
_miApple = 2
_miCurry = 3
_miHamburger = 4
_miJuice = 5
_miCake = 6
_miTire = 7
_miPolLights = 8
_miRiotShield = 9
_miComic = 10
_miHat = 11
_miChicken = 12
_miLetter = 13
_miScallop = 14
_miRing = 15
_miShell = 16
_miLunchbox = 17
_miDesignMagazine = 68
_miLitnium = 45
_miBlueCrystal = 56
_miGreenCrystal = 57
_miPinkCrystal = 58
_miSteak = 23
_miPig = 24
_miRabbit = 25
_miCow = 26
_miBlackHorse = 28
_miHorse = 29
_miBirdbot = 30
_miMilk = 31
_miCheese = 32
_miYogurt = 33
_miIceCream = 34
_miHorseshoe = 35
_miBeef = 36

_miSuperDrill = 59
_miHyperDrill = 60

_mzLevels = {
	_mBank1: 80000,
	_mBank2: 100000,
	_mBank3: 120000,
	_mAurora1: 30800,
	_mAurora2: 119000,
	_mAurora3: 137000,
	_mFarm1: 0,
	_mFarm2: 2000,
	_mFarm3: 24000
}
_miLevels = {
	_mBank1: { //-Mission 1-1
		_miPork: 4,
		_miFish: 6,
		_miApple: 15,
		_miCurry: 6,
		_miTire: 12,
		_miPolLights: 3,
		_miRing: 2
	},
	_mBank2: { //-Mission 1-2
		_miPork: 6,
		_miFish: 6,
		_miCurry: 9,
		_miHamburger: 2,
		_miComic: 1,
		_miLetter: 6,
		_miRing: 3,
		_miDesignMagazine: 1
	},
	_mBank3: { //-Mission 1-3
		_miPork: 4,
		_miFish: 6,
		_miCurry: 7,
		_miHamburger: 7,
		_miCake: 6,
		_miRiotShield: 3,		
		_miComic: 5,
		_miLetter: 12,
		_miRing: 2
	},
	_mAurora1: {
		_miBlueCrystal: 1,
		_miEBottle1: 1 //-Fixed address
	},
	_mAurora2: {
		_miGreenCrystal: 1,
		_miEBottle2: 1,
		_miLitnium: 1,
		_miSuperDrill: 1
	},
	_mAurora3: {
		_miPinkCrystal: 1,
		_miEBottle3: 2,		
		_miHyperDrill: 1
	},
	_mFarm1: {
		_miApple: 9,
		_miRabbit: 2,
		_miPig: 6,
		_miMilk: 12,
		_miCheese: 6
	},
	_mFarm2: {
		_miSteak: 1,
		_miPig: 2,
		_miRabbit: 2,
		_miCow: 6,
		_miMilk: 15,
		_miCheese: 7,
		_miBeef: 6
	},
	_mFarm3: {
		_miRabbit: 2,
		_miMilk: 9,
		_miCheese: 8,
		_miYogurt: 10,
		_miIceCream: 8,
		_miHorseshoe: 1,
		_miBlackHorse: 1,
		_miHorse: 5
	}
}

eTank = 0x0c8882
eBottle = 0x0c880d
eWeapon = 0x0c887e
eArmor = 0x0c8880

developItemCount = {
	eTank: 8,
	eBottle: 4,
	eWeapon: 2,
	eArmor: 2	
}

//-Servbot
_servbotStart = 0x0cb540
_servbotATK = 0
_servbotBrains = 1
_servbotSpeed = 2
_servbotSkill = 3
_servbotSloth = 4
_servbotOffset = 8

_skillNone = 0x1f
_skillSniper = 0x00
_skillBazooka = 0x01
_skillRapid = 0x02
_skillSlings = 0x03
_skillGrenade = 0x04
_skillRamming = 0x05
_skillBazookaDev = 0x06
_skillGatlingDev = 0x07
_skillArmorDev = 0x08
_skillTankDev = 0x09
_skillBottleDev = 0xa
_skillTrainDev = 0xf
_skillApprise = 0xc
_skillStrategy = 0x10
_skillPoetry = 0x11
_skillPainting = 0x12
_skillMusic = 0x13
_skillDesign = 0x14

_svVal = {
	1: 0x00,
	2: 0x3c,
	3: 0x78,
	4: 0xb4
}

_colorsDict = [[0, 0x0c44bb], [1, 0x0c44bb], [2, 0x0c44bb], [7, 0x0c44bc]]

_musicDict = [[0, 0x0c44b9], [7, 0x0c44ba]]


//-------ATK--------BRAINS----SPEED-----
_servbotMaxValues = {
	1: [_svVal[3], _svVal[3], _svVal[2]],
	2: [_svVal[4], _svVal[4], _svVal[2]],
	3: [_svVal[3], _svVal[2], _svVal[4]],
	4: [_svVal[2], _svVal[4], _svVal[3]],	
	5: [_svVal[2], _svVal[4], _svVal[2]],
	6: [_svVal[3], _svVal[4], _svVal[2]],
	7: [_svVal[4], _svVal[1], _svVal[4]],
	8: [_svVal[1], _svVal[4], _svVal[3]],
	9: [_svVal[2], _svVal[3], _svVal[4]],
	10: [_svVal[4], _svVal[2], _svVal[3]],
	11: [_svVal[3], _svVal[3], _svVal[4]],
	12: [_svVal[4], _svVal[2], _svVal[4]],
	13: [_svVal[4], _svVal[4], _svVal[2]],
	14: [_svVal[1], _svVal[4], _svVal[3]],
	15: [_svVal[3], _svVal[2], _svVal[4]],
	16: [_svVal[2], _svVal[2], _svVal[2]],
	17: [_svVal[3], _svVal[4], _svVal[3]],
	18: [_svVal[4], _svVal[4], _svVal[2]],
	19: [_svVal[2], _svVal[4], _svVal[2]],
	20: [_svVal[2], _svVal[4], _svVal[3]],
	21: [_svVal[2], _svVal[4], _svVal[1]],
	22: [_svVal[4], _svVal[3], _svVal[4]],
	23: [_svVal[4], _svVal[4], _svVal[3]],
	24: [_svVal[4], _svVal[4], _svVal[2]],
	25: [_svVal[3], _svVal[1], _svVal[4]],
	26: [_svVal[3], _svVal[4], _svVal[3]],
	27: [_svVal[3], _svVal[4], _svVal[4]],
	28: [_svVal[3], _svVal[4], _svVal[3]],
	29: [_svVal[2], _svVal[3], _svVal[3]],
	30: [_svVal[2], _svVal[4], _svVal[3]],
	31: [_svVal[3], _svVal[4], _svVal[1]],
	32: [_svVal[2], _svVal[4], _svVal[4]],
	33: [_svVal[4], _svVal[3], _svVal[2]],
	34: [_svVal[1], _svVal[4], _svVal[3]],
	35: [_svVal[1], _svVal[4], _svVal[1]],
	36: [_svVal[2], _svVal[4], _svVal[2]],
	37: [_svVal[1], _svVal[4], _svVal[3]],
	38: [_svVal[3], _svVal[3], _svVal[2]],
	39: [_svVal[1], _svVal[4], _svVal[1]],
	40: [_svVal[2], _svVal[1], _svVal[4]],
}


_servbotSkillValues = { //-0x1f = No Skill
	1: _skillSniper,
	2: _skillBazooka,
	3: _skillRapid,
	4: _skillSlings,	
	5: _skillNone,
	6: _skillSlings,
	7: _skillNone,
	8: _skillSniper,
	9: _skillSniper,
	10: _skillSniper,
	11: _skillNone,
	12: _skillRapid,	
	13: _skillBazooka,	
	14: _skillApprise,
	15: _skillRapid,	
	16: _skillNone,	
	17: _skillGrenade,
	18: _skillBazooka,
	19: _skillApprise,
	20: _skillGrenade,
	21: _skillNone,
	22: _skillRamming,
	23: _skillBazooka,
	24: _skillNone,
	25: _skillSniper,
	26: _skillNone,
	27: _skillGrenade,
	28: _skillSlings,
	29: _skillNone,
	30: _skillTankDev,
	31: _skillBazookaDev,
	32: _skillGatlingDev,
	33: _skillBottleDev,
	34: _skillArmorDev,
	35: _skillPainting,
	36: _skillMusic,
	37: _skillStrategy,
	38: _skillTrainDev,
	39: _skillPoetry,
	40: _skillDesign
}



//#endregion

//#region Dictionaries
_dicMissionNumber = {
	_mBank1: "1-1",
	_mBank2: "1-2",
	_mBank3: "1-3",
	_mAurora1: "3-1",
	_mAurora2: "3-2",
	_mAurora3: "3-3",
	_mFarm1: "5-1",
	_mFarm2: "5-2",
	_mFarm3: "5-3",
	_mTecheHarbor1: "1-3",
	_mTecheHarbor2: "4-6",
	_mTecheHarbor3: "7-9",
	_mPrimikiHarbor1: "1-3",
	_mPrimikiHarbor2: "4-6",
	_mPrimikiHarbor3: "7-9",	
}

_dicMissions = {
	_mBank: "Gold City Bank",
	_mTecheHarbor: "Teche Harbor",
	_mPrimikiHarbor: "Primiki Harbor",
	_mAurora: "Shala-Kun Ruins",
	_mFarm: "Sart Farm",
	_mRuin: "Nakkai Ruins"
}

_dicBoss = {
	_mAurora1: "Hanmuru Doll",
	_mAurora2: "Koltkoitan",
	_mAurora3: "Gravurwa"
}

_dictLevels = {
	0: "At Nakkai Desert",
	1: "Ryship Island Bank",
	2: "Solving puzzles at Teche Harbor",
	3: "Digging for the Aurora Stones",
	4: "Stealing cattle from Sart Farm",
	5: "Fighting your way through Nakkai Ruins",	
	6: "Solving more puzzles at Primiki Harbor",
	7: "It's Payback time!"
}

_dictRooms = {
	_shTeasel: "In Tiesel's room",
	_shTrons: "In Tron's room",
	_shGym: "At the Gym",
	_shEngine: "In the engine room",
	_shDeck: "At the deck",	
	_shCafe: "At the cafe",
	_shStorage: "In the storage room",
	_shLab: "At the lab",
	_shHQ: "At H.Q.",
	_shCourse1: "Playing 💣 Attack Course",
	_shCourse2: "Playing 🍛 Speed Course",
	_shCasino: "Betting all your zenny at the Casino",
	_shTorture: "At the Torture Room",
	_shMeetingRoom: "In the Meeting Room",
	_shCredits: "Thank you for playing!",
	_shFinal: "The End."
}

_dictArmor = {
	0: "No Armor",
	1: "Armor",
	2: "Hard Armor"
}
//#endregion

//#region Memory Accessors
realMission = byte(0x0c8639)
missionStage = byte(0x0c8638)
mission = byte(0x0c863a)
missionLevel = byte(0x0c863b)
retreatVariable = byte(0x0c862f)
atShip = byte(0x0c8642)
state = byte(0x0bfef6)
garmor = byte(0x0c863e)

roomKey = byte(0x0ca47a)
bossExists = byte(0x0c92e0)

carryObject = byte(0x0ba1fd)
attackWithWeapon = byte(0x0ba1e5)
beaconBomb = byte(0x0ba1e9)
moneyMission = dword(0x0C85CC)
moneyShip = dword(0x0C85D4)
totalPlaytime = tbyte(0x0c85c0)
favoriteServbot = byte(0x0c864b)

gustaffHP = word(0x0C8620)
gustaffMaxHP = word(0x0C8622)

mission = byte(0x0C863A)
turnOption = bit0(0x0C863F)
aimMode = bit0(0x0C8640)
pointOfView = bit0(0x0C8641)

bossHPPointer = word(0x0a6728)

shipRoom = byte(0x0f27f5)
course1Level = byte(0x0f2a98) //-Starts 0
course1Sublevel = byte(0x0f2a99)
course1Target = byte(0x0f2a9a)
course1Score = byte(0x0f2a9b)
course1RemainingTime = word(0x0f2a9c) //-Frames
course1Pause = byte(0x0f2aa4) //- Pause = 1
course1Finish = byte(0x0f2adf)

course2Round = byte(0x0f2a9c)
course2Day = byte(0x0f2a9d)
course2ServbotsLeft = byte(0x0f2a9e)
course2Failures = byte(0x0f2aac)
course2Finish = byte(0x0f2aae)
course2Time = word(0x0f2ab4)
course2Pause = byte(0x0f2aad)

tortureStart = byte(0x09f728) //-0 -> 1
tortureState = byte(0x09f729)
tortureObstacle = byte(0x09f72b)
tortureStamina = word(0x0f2a98)

selectedServbot = byte(0x0f2154)

//-Containers
maxGreenContainers = byte(0x167008)
maxBonusContainer = byte(0x167009)
greenContainer = byte(0x16700d)
bonusContainer = byte(0x16700e)

truckHP = byte(0x0bff10)

casinoResult = byte(0x0de5a4)
casinoGame = byte(0x0de5b4)
casinoTurn = byte(0x0de5c1)
bingoNumber = 0x0de5b5
bingoBet = word(0x0de4fc)

redHeadParts = byte(0x0c8861)
magicNumber1 = byte(0x0f1f06) //-Use 0x02
magicNumber2 = byte(0x0f1f07) //-Use 1 for time, 2 for credits

//#endregion

//#region Functions
function atTitle() => totalPlaytime == 0
function BossHP() => word(bossHPPointer + 0xBFB8E)
function killedBoss() => prev(BossHP()) > 0 && bossHPPointer == 0
function retreated() => prev(retreatVariable) == 0 && retreatVariable == 0xff

function bossStaticHP(offset) => word(0x0bff18 + offset*2)
function bossStaticMaxHP(offset) => word(0x0bff18 + offset*2 + 6)

function bossExists() => bossStaticHP(0) > 0 || bossStaticHP(1) > 0 || bossStaticHP(2) > 0

function bossNeverExisted() => prev(bossStaticHP(0)) == 0 && prev(bossStaticHP(1)) == 0 && prev(bossStaticHP(2)) == 0

function genericBossHPToZero() {
	return 
	(prev(bossStaticHP(0)) != bossStaticHP(0) && bossStaticHP(0) == 0) ||
	(prev(bossStaticHP(1)) != bossStaticHP(1) && bossStaticHP(1) == 0) ||
	(prev(bossStaticHP(2)) != bossStaticHP(2) && bossStaticHP(2) == 0) 
}

function genericBossHPToZeroTrigger() {
	return 
	trigger_when(prev(bossStaticHP(0)) != bossStaticHP(0) 
					&& bossStaticHP(0) == 0) ||
	trigger_when(prev(bossStaticHP(1)) != bossStaticHP(1) 
					&& bossStaticHP(1) == 0) ||
	trigger_when(prev(bossStaticHP(2)) != bossStaticHP(2) 
					&& bossStaticHP(2) == 0) 
}

function genericBossHPToZeroByThrowTrigger() {
	return 
	trigger_when(prev(bossStaticHP(0)) != bossStaticHP(0) 
					&& bossStaticHP(0) == 0 
					&& carryObject == _carryThrow) ||
	trigger_when(prev(bossStaticHP(1)) != bossStaticHP(1) 
					&& bossStaticHP(1) == 0
					&& carryObject == _carryThrow) ||
	trigger_when(prev(bossStaticHP(2)) != bossStaticHP(2) 
					&& bossStaticHP(2) == 0
					&& carryObject == _carryThrow) 
}

function genericBossHPDownByHit() {
	return 
	((prev(bossStaticHP(0)) > bossStaticHP(0)) ||
	(prev(bossStaticHP(1)) > bossStaticHP(1)) ||
	(prev(bossStaticHP(2)) > bossStaticHP(2))) && carryObject != _carryThrow
}

function genericBossHPDownByShot() {
	return 
	((prev(bossStaticHP(0)) > bossStaticHP(0)) ||
	(prev(bossStaticHP(1)) > bossStaticHP(1)) ||
	(prev(bossStaticHP(2)) > bossStaticHP(2))) && attackWithWeapon != 0
}

function servbotMaxed(servNum, alt) {
	servbotData = _servbotStart + servNum*_servbotOffset
	servbotAtk =  byte(servbotData + _servbotATK)
	servbotBrain = byte(servbotData + _servbotBrains)
	servbotSpeed = byte(servbotData + _servbotSpeed)
	maxValues = _servbotMaxValues[servNum + 1]
	
	if (alt == 0){
		return servbotAtk >= maxValues[0] && servbotBrain >= maxValues[1] && servbotSpeed >= maxValues[2]		
	}
	else{
		return prev(servbotAtk) >= maxValues[0] && prev(servbotBrain) >= maxValues[1] && prev(servbotSpeed) >= maxValues[2]
	}
}

function servbotsMaxed(num) {	
	conditionsArray = []
	alt_conditions = []
	
	for servbot in range(0, 39){
		array_push(conditionsArray, once(servbotMaxed(servbot, 0)))
		array_push(alt_conditions, once(servbotMaxed(servbot, 1)))
	}
	
	trigger = measured(tally(num, conditionsArray)) && (always_false() || never(tally(num, alt_conditions)))
	
	return trigger
}

function servbotsSkill(num) {	
	conditionsArray = []
	alt_conditions = []
	
	for servbot in range(0, 39){
		servbotData = _servbotStart + servbot*_servbotOffset
		servbotSkill =  byte(servbotData + _servbotSkill)	
		actualSkill = _servbotSkillValues[servbot + 1]
		
		if (actualSkill != _skillNone){
			array_push(conditionsArray, once(servbotSkill == actualSkill))
			array_push(alt_conditions, once(prev(servbotSkill) == actualSkill))
		}
	}
	
	trigger = measured(tally(num, conditionsArray)) && (always_false() || never(tally(num, alt_conditions)))
	
	return trigger
}

function allSpecialItems(start, num) {
	
	conditionsArray = []
	alt_conditions = []
	
	for item in range(0, num - 1){
		array_push(conditionsArray, once(byte(start + item) >= 1))
		array_push(alt_conditions, once(prev(byte(start + item)) >= 1))
	}
	
	trigger = measured(tally(num, conditionsArray)) && (always_false() || never(tally(num, alt_conditions)))
	
	return trigger
}

function allMissionItems(mission){
	conditionsArray = []
	
	items = _miLevels[mission]
	for item in items{		
		array_push(conditionsArray, once(byte(_miStart + item) >= items[item]))
	}
	trigger = measured(tally(length(conditionsArray), conditionsArray), realMission == mission)
		
	return trigger
}

function allGustaffColors(){
	conditionsArray = []
	alt_conditions = []
	
	colors = _colorsDict
	
	for color in colors{		
		array_push(conditionsArray, 
				once(bit(color[0], color[1]) == 1))
		array_push(alt_conditions, 
				once(prev(bit(color[0], color[1])) == 1))
	}
	trigger = measured(tally(length(conditionsArray), conditionsArray))  && (always_false() || never(tally(length(alt_conditions), alt_conditions)))
		
	return trigger
}

function allMusic(){
	conditionsArray = []
	alt_conditions = []
	
	music = _musicDict
	
	for music in music{		
		array_push(conditionsArray, 
				once(bit(music[0], music[1]) == 1))
		array_push(alt_conditions, 
				once(prev(bit(music[0], music[1])) == 1))
	}
	trigger = measured(tally(length(conditionsArray), conditionsArray))  && (always_false() || never(tally(length(alt_conditions), alt_conditions)))
		
	return trigger
}

function allMissionItemsV2(mission){
	conditionsArray = []
	
	items = _miLevels[mission]
	totalItems = 0
	for item in items{
		itemAddress = _miStart + item
		array_push(conditionsArray, tally(items[item], byte(itemAddress) > prev(byte(itemAddress))))
		totalItems = totalItems + items[item]
	}
	trigger = measured(tally(totalItems, conditionsArray), realMission == mission)
		
	return trigger
}

function isDevless(){
	trigger = always_true()
	
	for item in developItemCount{
		if (item != eBottle){
			for specItem in range(0, developItemCount[item] - 1){
				trigger = trigger && byte(item + specItem) == 0
			}
		}
	}
	return trigger
}

function totalTanks(){
	result = 0
	for specItem in range(0, developItemCount[eTank] - 1){
		result = result + byte(eTank + specItem)
	}
	
	return result
}
//#endregion

//#region Achievement logic
function GlideBossAchievement(title, points){
    description = "Defeat Glide in front of the Nakkai Ruins by throwing a boulder as your last hit (damageless)"
	trigger = realMission == _mIntro
	&& killedBoss()
	&& unless(missionStage != 2)
	&& once(bossHPPointer == 0 && carryObject == _carryThrow)	
	&& unless(once(gustaffHP < prev(gustaffHP)))	
	&& (always_false() || never(state != 1))
            
    achievement(title = title, points = points, description = description, trigger = trigger)	
}

function GlideBossAchievementV2(title, points){
    description = "Defeat Glide in front of the Nakkai Ruins by throwing a boulder as your last hit (damageless)"
	trigger = realMission == _mIntro	
	&& unless(missionStage != 2)
	&& unless(once(gustaffHP < prev(gustaffHP)))	
	&& (always_false() || 
			genericBossHPToZeroByThrowTrigger() || 
				(always_false() && never(state != 1)))	
            
    achievement(title = title, points = points, description = description, trigger = trigger)	
}

function AllItemsAchievement(mission, title, description, points) {
	missionZenny = _mzLevels[mission]
		
	trigger = atShip == 0 && moneyMission >= missionZenny && allMissionItems(mission)
	
	if (mission == _mBank2){		
		trigger = trigger && unless(once(prev(gustaffHP) - gustaffHP == 0x100)) && (always_false() || genericBossHPToZero() || (always_false() && never(retreated() || realMission != mission)))
	}
	else{
		trigger = trigger && never(retreated() || realMission != mission)
	}
            
    achievement(title = title, points = points, description = description, trigger = trigger)	
}

function AllItemsFarmAchievement(mission, title, description, points) {
	missionZenny = _mzLevels[mission]
		
	trigger = atShip == 0 
			&& moneyMission >= missionZenny 
			&& allMissionItems(mission)

	if (mission == _mFarm1 || mission == _mFarm2){
		trigger = trigger && unless(
					once(prev(gustaffHP) > gustaffHP 
						|| prev(truckHP) > truckHP)
					)
	}
	else {
		trigger = trigger && unless(
					tally(4, prev(gustaffHP) > gustaffHP)
						|| truckHP < 0x18
					)
	}
	
	trigger = trigger && (always_false() || never(retreated() || realMission != mission))
            
    achievement(title = title, points = points, description = description, trigger = trigger)	
}

function AuroraStonesAchievement(mission, title, description, points) {
	missionZenny = _mzLevels[mission]
		
	trigger = atShip == 0 && moneyMission >= missionZenny && allMissionItemsV2(mission) && unless(once(gustaffHP < prev(gustaffHP))) && bossExists == 1 && prev(bossExists) == 0 && (always_false() || never(retreated() || realMission != mission))
	            
    achievement(title = title, points = points, description = description, trigger = trigger)	
}

function Mission1BossAchievement(title, points){
	description = "Defeat Denise by only throwing things at her (damageless)"
	trigger = realMission == _mBank3 &&
	unless(missionStage != 2) &&
	unless(once(genericBossHPDownByHit())) &&	
	unless(once(gustaffHP < prev(gustaffHP))) &&	
	(always_false() || genericBossHPToZero() || (always_false() && never(retreated())))
            
    achievement(title = title, points = points, description = description, trigger = trigger)
}

function BossTimeAchievement(mission, seconds, title, points) {
	description = format("Defeat {0} in {1} seconds or less", _dicBoss[mission], seconds)
	
	if (seconds == 150){
		description = format("Defeat {0} in 2 minutes 30 seconds or less", _dicBoss[mission], seconds)
	}
		
	trigger = realMission == mission && atShip == 0 && unless(state != 1) && unless(tally(seconds*30 + 1, totalPlaytime != prev(totalPlaytime))) && (always_false() || genericBossHPToZero() || (always_false() && never(retreated() || gustaffHP == 0 || bossExists == 0)))
	            
    achievement(title = title, points = points, description = description, trigger = trigger)	
}

function BossTruckAchievement(mission, title, description, points) {
	
	trigger = realMission == mission && atShip == 0 && unless(once(truckHP < prev(truckHP))) && (always_false() || genericBossHPToZero() || (always_false() && never(retreated() || gustaffHP == 0 || bossExists == 0)))
	            
    achievement(title = title, points = points, description = description, trigger = trigger)	
}


function FinishedMissionAchievement(totalMission, title, points){
	description = format("Finish every {0} mission", _dicMissions[totalMission])
	
	trigger = prev(realMission) == _mLastMission[totalMission] &&
	prev(atShip) == 0 && atShip == 1 && retreatVariable != 0xff
	
	if (totalMission == _mFarm){
		trigger = trigger && truckHP > 0
	}
	
	if (totalMission == _mRuin){
		trigger = trigger && missionStage == 2
		description = "Get Diana's Tear at Nakkai Ruins"
	}

    achievement(title = title, points = points, description = description, trigger = trigger)
}

function RuinsZennyAchievement(title, points){
	description = "Get 500000Z on Nakkai Ruins (Mission 4) without recovering your HP"
	
	trigger = unless(missionStage == 0 && state != 1) &&
			realMission == _mRuin &&
			prev(moneyMission) < 500000 && 
			prev(moneyMission) > 400000 && 
			moneyMission >= 500000 && 
			unless(once(prev(gustaffHP) < gustaffHP)) &&
		(always_false() || 
		never(retreated() || gustaffHP == 0 || atShip == 1)
	)

    achievement(title = title, points = points, description = description, trigger = trigger)
}

function RuinBossAchievement(title, points) {
	description = "Defeat Hippulbash at Nakkai Ruins without being hit more than once"
	
	trigger = realMission == _mRuin && atShip == 0 && 
			unless(tally(2, gustaffHP < prev(gustaffHP))) && 
			(always_false() || genericBossHPToZero() || (always_false() && never(retreated() || gustaffHP == 0 || missionStage < 2)))
	            
    achievement(title = title, points = points, description = description, trigger = trigger)	
}

function Course1Achievement(title, points){
	description = "Finish Attack Training Course 3-3"
	
	trigger = atShip == 1 && shipRoom == _shCourse1 && course1Level == 2 && course1Sublevel == 2 && prev(course1Finish) == 0 && course1Finish == 1 && course1Score >= course1Target
            
    achievement(title = title, points = points, description = description, trigger = trigger)
}

function Course2Achievement(title, points){
	description = "Finish Speed Training Course 3-3 without pausing the game"
	
	trigger = atShip == 1 && shipRoom == _shCourse2 && course2Round == 2 && course2Day == 2 && prev(course2ServbotsLeft) == 1 && course2ServbotsLeft == 0 && unless(once(prev(course2Pause) == 0 && course2Pause == 1)) && (always_false() || never(shipRoom != _shCourse2))
            
    achievement(title = title, points = points, description = description, trigger = trigger)
}

function TortureRoomPerfectAchievement(title, points){ //-Needs fix
	description = "Punish a servbot without missing any trap"
	
	trigger = atShip == 1 && shipRoom == _shTorture && tortureStart == 1 && unless(tally(5, prev(tortureObstacle) == 3 && tortureObstacle == 0)) && tally(5, prev(tortureState) == 0 && tortureState == _trSpike) && tally(5, prev(tortureState) == 0 && tortureState == _trFire) && tally(5, prev(tortureState) == 0 && tortureState == _trWeight) && (always_false() || never(tortureStart == 0))
            
    achievement(title = title, points = points, description = description, trigger = trigger)
}

function TortureRoomFavoriteAchievement(title, points){
	description = "Punish your favorite servbot"
	
	trigger = atShip == 1 && shipRoom == _shTorture && tortureStart == 1 && tortureState == 5 && favoriteServbot == selectedServbot && tortureStamina == 0
            
    achievement(title = title, points = points, description = description, trigger = trigger)
}

function MillionZennyAchievement(zenmi, title, points){
	description = format("Collect {0}M Zenny", zenmi)
	
	zenamount = 1000000*zenmi
	
	
	trigger = atShip == 1 && once(shipRoom == _shResults && prev(moneyShip) < zenamount && moneyShip >= zenamount)
	
	if (zenmi == 1){
		trigger = trigger && shipRoom == _sh1M
	}
	else{
		trigger = trigger && shipRoom == _sh2M
	}
            
    achievement(title = title, points = points, description = description, trigger = trigger)
}

function HighAndLowAchievement(title, points){
	description = "Guess correctly everytime on a round of High and Low at the Casino"
	
	trigger = atShip == 1 && shipRoom == _shCasino && casinoTurn == 0xb && prev(casinoResult) == 3 && casinoResult == 6
            
    achievement(title = title, points = points, description = description, trigger = trigger)
}

function GustaffColorsAchievement(title, points){
	description = "Unlock every Gustaff Color Skin"
	
	trigger = atShip == 1 && shipRoom == _shMeetingRoom && allGustaffColors()
            
    achievement(title = title, points = points, description = description, trigger = trigger)
}

function MusicAchievement(title, points){
	description = "Help #36 to learn new music"
	
	trigger = atShip == 1 && shipRoom == _shTrons && allMusic()
            
    achievement(title = title, points = points, description = description, trigger = trigger)
}

function AllBonusContainersAchievement(mission, title, points){
	missionNum = 2
	if (mission > _mTecheHarbor3){
		missionNum = 6
	}
	
	description = format("Get every bonus container from mission {0} Rounds {1}", missionNum, _dicMissionNumber[mission])
	
	trigger = missionStage == 2 && never(retreated() || realMission != mission)
	
	for stage in range(0, 2){
		trigger = trigger && once(missionStage == stage && greenContainer == maxGreenContainers && bonusContainer == maxBonusContainer && prev(greenContainer) == maxGreenContainers - 1)
	}
            
    achievement(title = title, points = points, description = description, trigger = trigger)
}

function servbotsMaxedAchievement(num, title, points){
	description = format("Max {0} Servbots stats", num)
	if (num == 40){
		description = "Max every Servbot stats"
	}
	
	trigger = prev(totalPlaytime) > 0 && atShip == 1 && servbotsMaxed(num)
            
    achievement(title = title, points = points, description = description, trigger = trigger)	
}

function servbotsSkillAchievement(num, title, points){
	description = format("Help {0} Servbots with their skills", num)
	
	if (num == 32){
		description = format("Help every Servbot with their skills", num)
	}		
		
	trigger = prev(totalPlaytime) > 0 && atShip == 1 && servbotsSkill(num)
            
    achievement(title = title, points = points, description = description, trigger = trigger)	
}

function developItemAchievement(start, num, title, description, points){
	
	trigger = prev(totalPlaytime) > 0 && atShip == 1 && allSpecialItems(start, num)
            
    achievement(title = title, points = points, description = description, trigger = trigger)	
}

function favoriteServbotAchievement(title, points){
	description = "Give the Red Parts to your favorite servbot"
		
	trigger = prev(favoriteServbot) == 0xff && favoriteServbot != 0xff && atShip == 1 && !atTitle() && prev(redHeadParts) == 1 && redHeadParts == 0
            
    achievement(title = title, points = points, description = description, trigger = trigger)
}
function FastGlideBossAchievement(title, points) {
	description = "Defeat Glide on the underground prison only using your servbots to fight (Damageless)"
	
	trigger = realMission == _mPrision &&
			atShip == 0 &&
			state == 1 && 
			unless(once(gustaffHP < prev(gustaffHP))) &&
			unless(once(genericBossHPDownByShot())) &&
				(always_false() || 
				genericBossHPToZero() || 
					(always_false() && 
						never(gustaffHP == 0 || 
						missionStage != 1)
					)
				)
	            
    achievement(title = title, points = points, description = description, trigger = trigger)	
}
function ColossusBossAchievement(title, points) {
	description = "Defeat the Colossus without being hit"
	
	trigger = realMission == _mColossus &&
			atShip == 0 && 
			state == 1 && 
			unless(once(gustaffHP < prev(gustaffHP))) &&			
				(always_false() || 
				genericBossHPToZero() || 
					(always_false() && 
						never(gustaffHP == 0 || 
						missionStage != 0 ||
						realMission != _mColossus)
					)
				)
	            
    achievement(title = title, points = points, description = description, trigger = trigger)	
}

function SpeedrunAchievement(title, points){
	description = "Finish the game in under 1 hour"
	
	trigger = atShip == 1 && 
			shipRoom == _shFinal &&
			totalPlaytime < 60*60*30 && //-Mins*secs*frames
			once(realMission == _mPrision) &&
			once(realMission == _mColossus) &&
			never(atTitle()) &&
			magicNumber1 == 2 &&
			prev(magicNumber2) == 0 &&
			magicNumber2 == 1
	            
    achievement(title = title, points = points, description = description, trigger = trigger)	
}

function EndGameAchievement(devless, title, points){
	description = "Finish the game"
	
	trigger = atShip == 1 && 
			shipRoom == _shCredits &&			
			once(realMission == _mPrision) &&
			once(realMission == _mColossus) &&
			never(atTitle()) &&
			magicNumber1 == 2 &&
			prev(magicNumber2) == 1 &&
			magicNumber2 == 2
			
	if (devless == 1){
		description = description + " without developing any upgrade."
		
		trigger = trigger && isDevless()
	}
	            
    achievement(title = title, points = points, description = description, trigger = trigger)	
}
//#endregion

//#region Leaderboard Logic
function bankMissionLeaderboard(course){
    title = format("Ryship Island Bank - Level {0}", course + 1)
    description = format("Get as much zenny as you can at Mission 1-{0}", course + 1)
		
    start = prev(state) == 0 && state == 1 && mission == 1 && missionLevel == course && totalPlaytime > 200
    cancel = retreated() || mission != 1 || missionLevel != course
    submit = prev(atShip) == 0 && atShip == 1
    value = moneyMission
    leaderboard(title, description, start, cancel, submit, value, "SCORE")
}

function auroraMissionLeaderboard(mission){
    title = format("Shala-Kun Ruins - {0}", _dicBoss[mission])
    description = format("Defeat Mission {0} boss", _dicMissionNumber[mission])
	
	if (mission == _mAurora3){
		description = description + "as fast as you can"
	}
	else{
		description = description + "without using a Beacon Bomb"
	}
		
    start = prev(state) == 0 && state == 1 && realMission == mission && bossExists == 1
    cancel = retreated() || realMission != mission || gustaffHP == 0 || (prev(beaconBomb) == 2 && beaconBomb == 3)
    submit = genericBossHPToZero()
    value = measured(totalPlaytime != prev(totalPlaytime)) + measured(totalPlaytime != prev(totalPlaytime))
    leaderboard(title, description, start, cancel, submit, value, "FRAMES")
}

function course1Leaderboard(level, sublevel){
    title = format("💣 Attack Course [{0}-{1}]", level + 1, sublevel +1)
    description = format("Get the highest score on Course 1 [{0}-{1}]", level + 1, sublevel +1)
		
    start = atShip == 1 && shipRoom == _shCourse1 && course1Level == level && course1Sublevel == sublevel && course1RemainingTime < prev(course1RemainingTime)
    cancel = shipRoom != _shCourse1 || (course1Finish == 1 && course1Score < course1Target)
    submit = course1Finish == 1 && course1Score >= course1Target
    value = course1Score
    leaderboard(title, description, start, cancel, submit, value, "SCORE")
}

function course2Leaderboard(round, day){
    title = format("🍛 Speed Course [{0}-{1}]", round + 1, day +1)
    description = format("Get the highest score on Course 2 [{0}-{1}]", round + 1, day +1)
		
    start = atShip == 1 && shipRoom == _shCourse2 && course2Round == round && course2Day == day && prev(course2Time) == 0 && course2Time > 0
    cancel = shipRoom != _shCourse2 || course2Pause == 1 || (course2Finish == 1 && course2ServbotsLeft > 0)
    submit = prev(course2ServbotsLeft) == 1 && course2ServbotsLeft == 0
    value = course2Time*2
    leaderboard(title, description, start, cancel, submit, value, "FRAMES")
}

function ruinMissionLeaderboard(){
    title = "Nakkai Ruins"
    description = "Get as much zenny as you can at Mission 4"
		
    start = prev(state) == 0 && state == 1 && mission == 5 && missionLevel == 0
    cancel = retreated() || mission != 5 || missionLevel != 0
    submit = prev(atShip) == 0 && atShip == 1
    value = moneyMission
    leaderboard(title, description, start, cancel, submit, value, "SCORE")
}

function bingoLeaderboard(){
    title = "⭐ Bingo! ⭐"
    description = "Get the highest profit from the Bingo!"
		
    start = atShip == 1 && shipRoom == _shCasino && casinoGame == 0x7f && prev(casinoResult) == 6 && casinoResult == 7
    cancel = casinoResult != 7 || casinoGame != 0x7f
    submit = moneyMission > prev(moneyMission)
    value = moneyMission - prev(moneyMission) - prev(bingoBet)
    leaderboard(title, description, start, cancel, submit, value, "SCORE")
}
function endGameMoneyLeaderboard(){
	title = "Moneymaker"
    description = "Get the most Zenny at the end of the game"
		
    start = atShip == 1 && 
			shipRoom == _shFinal &&			
			totalPlaytime > 0 &&
			magicNumber1 == 2 &&
			prev(magicNumber2) == 0 &&
			magicNumber2 == 1
    cancel = atTitle()
    submit = always_true()
    value = moneyShip
    leaderboard(title, description, start, cancel, submit, value, "SCORE")
}
function endGameTimeLeaderboard(){
	title = "SpeedRunner"
    description = "Finish the game as fast as you can"
		
    start = atShip == 1 && 
			shipRoom == _shFinal &&			
			totalPlaytime > 0 &&
			magicNumber1 == 2 &&
			prev(magicNumber2) == 0 &&
			magicNumber2 == 1
    cancel = atTitle()
    submit = always_true()
    value = totalPlaytime*2
    leaderboard(title, description, start, cancel, submit, value, "FRAMES")
}
//#endregion

//#region Achievements

//-Game (75)
//-Collect 1M Zenny
MillionZennyAchievement(1, "Not bad...But not quite good enough!!", 5)
//-Collect 2M Zenny
MillionZennyAchievement(2, "Be seeing you, missie!", 10)
//-Finish the game
EndGameAchievement(0, "The Bonne Family", 25)

//-Beat the game without developing any Gustaff part (eBottles are ok) (25) "Underdeveloped"
EndGameAchievement(1, "Underdeveloped", 25)
//-Beat the game in 59m:59s or less (25) "The Quick Adventures of Tron Bonne"
SpeedrunAchievement("The Quick Adventures of Tron Bonne", 25)

//-Training Courses (20)
//-Master Course 1 (10)
Course1Achievement("Bombs & Curry", 10)
//-Master Course 2 (10)
Course2Achievement("FasterChef", 10)

//-Gustaff (30)
//-Get E.Tanks 1-7 and P (10)
developItemAchievement(eTank, developItemCount[eTank], "Better Endurance, High Capacity", "Develop E.Tanks 1-7 and P", 10)

//-Get E.Bottles 1-4 (5)
developItemAchievement(eBottle, developItemCount[eBottle], "Health To Go", "Have at least one of each E.Bottles (1-4)", 5)

//-Get Bonne Bazooka and Gatling Gun (5)
developItemAchievement(eWeapon, developItemCount[eWeapon], "Versatile Firepower", "Develop Bonne Bazooka and Gatling Gun", 5)

//-Get the Hard Armor (10)
developItemAchievement(eArmor, developItemCount[eArmor], "Military Grade Gustaff", "Develop Armor and Hard Armor", 10)

//-Get Every Gustaff skin (5)
GustaffColorsAchievement("Pimp My Gustaff", 5)

//-Servbot achievements (52)
//-Have a favorite servbot, red parts (1)
favoriteServbotAchievement("With Red Head Comes Great Responsibility", 1)

//-Unlock the skill of 15 servbots (5)
servbotsSkillAchievement(16, "Talent Hunter", 5)
//-Unlock the skill of 30 servbots (10)
servbotsSkillAchievement(32, "Thank You, Miss Tron", 10)

//-Max the stats of 20 servbots (10)
servbotsMaxedAchievement(20, "Servbot Enthusiast", 10)
//-Max all 40 servbots stats (25)
servbotsMaxedAchievement(40, "Full Fledged Small Army", 25)

//-Damageless Boss (5)
GlideBossAchievementV2("Boulder for Birdie", 5)

//-Items in missions?
//-Mission 1: Ryship Island Bank (35)
AllItemsAchievement(_mBank1, "This is G.C.P.D.! Surrender!", format("On Mission {1} Get {0}Z and find every item (See Comments)", _mzLevels[_mBank1], _dicMissionNumber[_mBank1]), 5)

AllItemsAchievement(_mBank2, "Why Are You Running?", format("On Mission {1} Get {0}Z, find every item and don't get grabbed by Denise", _mzLevels[_mBank2], _dicMissionNumber[_mBank2]), 10)

AllItemsAchievement(_mBank3, "Scavenger Hunt", format("On Mission {1} Get {0}Z and find every item (See Comments)", _mzLevels[_mBank2], _dicMissionNumber[_mBank3]), 10)

//-Defeat Denise only throwing things back at her (damageless) (10)
Mission1BossAchievement("I try and I try...", 10)

//-Mission 2: Teche Harbor Puzzles (15)
AllBonusContainersAchievement(_mTecheHarbor1, "You're Full of Crab", 5)
AllBonusContainersAchievement(_mTecheHarbor2, "A Nice Container of Coffee", 5)
AllBonusContainersAchievement(_mTecheHarbor3, "I'm in Danger", 5)
//-Mission 3: Aurora Stones (10)
AuroraStonesAchievement(_mAurora1, "Rookie Digger", format("On Mission {1} Get {0}Z and every item without damaging the Finkel", _mzLevels[_mAurora1], _dicMissionNumber[_mAurora1]), 5)

BossTimeAchievement(_mAurora1, 30, "Rusty N' Toasty", 10)

AuroraStonesAchievement(_mAurora2, "Clever Digger", format("On Mission {1} Get {0}Z and every item without damaging the Finkel", _mzLevels[_mAurora2], _dicMissionNumber[_mAurora2]), 10)

BossTimeAchievement(_mAurora2, 40, "One Reaverbot Army", 10)

AuroraStonesAchievement(_mAurora3, "Veteran Digger", format("On Mission {1} Get {0}Z and every item without damaging the Finkel", _mzLevels[_mAurora3], _dicMissionNumber[_mAurora3]), 10)

BossTimeAchievement(_mAurora3, 150, "You Spin Me Fire Round", 10)

//-Mission 4: Nakkai Ruins
RuinsZennyAchievement("Ruination", 10)
//-Defeat Boss without recovering HP (10)
RuinBossAchievement("Guardian of the Ruins", 10)

//-Mission 5: Sart Farm (10)
AllItemsFarmAchievement(_mFarm1, "It's a Piggie!", format("On Mission {0} Get every item without being hit", _dicMissionNumber[_mFarm1]), 5)

AllItemsFarmAchievement(_mFarm2, "Lactose Lover", format("On Mission {0} Get {1}Z and every item without letting you or the truck being hit", _dicMissionNumber[_mFarm2], _mzLevels[_mFarm2]), 10)

BossTruckAchievement(_mFarm2, "AT-MS Walker", format("On Mission {0} Defeat Loath Robot without letting it damage the truck", _dicMissionNumber[_mFarm2]), 5)

AllItemsFarmAchievement(_mFarm3, "Tron's Rodeo", format("On Mission {0} Get {1}Z and every item without being hit +3 times or your truck HP < 50%", _dicMissionNumber[_mFarm3], _mzLevels[_mFarm3]), 10)

BossTruckAchievement(_mFarm3, "Hammerhead & Birdie", format("On Mission {0} Defeat Loath Robot without letting it damage the truck", _dicMissionNumber[_mFarm3]), 5)

//-Mission 6: Pirmiki Harbor Puzzles (15)
AllBonusContainersAchievement(_mPrimikiHarbor1, "Lot's of Melons", 5)
AllBonusContainersAchievement(_mPrimikiHarbor2, "Servbot Shining Pearl", 5)
AllBonusContainersAchievement(_mPrimikiHarbor3, "Directly From Sart Farm", 5)

//-Story achievements
//-Mission 1: Ryship Island Bank (10)
FinishedMissionAchievement(_mBank, "Town Busters", 10)
//-Mission 2: Teche Harbor Puzzles (10)
FinishedMissionAchievement(_mTecheHarbor, "Heavy Duty", 10)
//-Mission 3: Aurora Stones (10)
FinishedMissionAchievement(_mAurora, "The Aurora Stones", 10)
//-Mission 4: Nakkai Ruins (10)
FinishedMissionAchievement(_mRuin, "The Legendary Refractor", 10)
//-Mission 5: Sart Farm (10)
FinishedMissionAchievement(_mFarm, "Farm of Thieves", 10)
//-Mission 6: Pirmiki Harbor Puzzles (10)
FinishedMissionAchievement(_mPrimikiHarbor, "Helping Machinery", 10)

//-Mission 7: Casino (5)
HighAndLowAchievement("The Servbot Sometimes Wins", 5)
//-Mission 8: Bonne Family Rescue (25)
FastGlideBossAchievement("Glide's Revenge", 25)
//-Mission 9: Colossus Showdown (25)
ColossusBossAchievement("Servbot of the Colossus", 25)

//-Use Torture room (5)
TortureRoomPerfectAchievement("I'm sorry, Miss Tron", 5)
//-Torture your favorite servbot (1)
TortureRoomFavoriteAchievement("Love Hurts", 1)

//-Unlock Music (3)
MusicAchievement("Servbotify", 3)

//-Easter eggs achievements
//-Find Megaman (1) //-Too common
//-Not through the tunnel (1)


//#endregion

//#region Leaderboards
bankMissionLeaderboard(0)
bankMissionLeaderboard(1)
bankMissionLeaderboard(2)

auroraMissionLeaderboard(_mAurora1)
auroraMissionLeaderboard(_mAurora2)
auroraMissionLeaderboard(_mAurora3)

ruinMissionLeaderboard()

course1Leaderboard(0, 0)
course1Leaderboard(0, 1)
course1Leaderboard(0, 2)
course1Leaderboard(1, 0)
course1Leaderboard(1, 1)
course1Leaderboard(1, 2)
course1Leaderboard(2, 0)
course1Leaderboard(2, 1)
course1Leaderboard(2, 2)

course2Leaderboard(0, 0)
course2Leaderboard(0, 1)
course2Leaderboard(0, 2)
course2Leaderboard(1, 0)
course2Leaderboard(1, 1)
course2Leaderboard(1, 2)
course2Leaderboard(2, 0)
course2Leaderboard(2, 1)
course2Leaderboard(2, 2)

bingoLeaderboard()

endGameMoneyLeaderboard()
endGameTimeLeaderboard()

//#endregion

//#region Rich Presence
rich_presence_conditional_display(atTitle(), "In the Title Screen")

rich_presence_conditional_display(atShip == 1, "{0} - [🕰️ {1}] [{2}Z] [E.Tanks {3}/{4}] [🛡️ {5}]",
rich_presence_lookup("Room", shipRoom, _dictRooms),
rich_presence_value("Time", totalPlaytime*2, format="FRAMES"),
rich_presence_value("val", moneyShip),
rich_presence_value("val", totalTanks()),
rich_presence_value("val", developItemCount[eTank]),
rich_presence_lookup("Armor", garmor, _dictArmor))

rich_presence_conditional_display(atShip == 0, "{0} - [🕰️ {1}] [{2}Z] [E.Tanks {3}/{4}] [🛡️ {5}]",
rich_presence_lookup("Episode", mission, _dictLevels),
rich_presence_value("Time", totalPlaytime*2, format="FRAMES"),
rich_presence_value("val", moneyShip),
rich_presence_value("val", totalTanks()),
rich_presence_value("val", developItemCount[eTank]),
rich_presence_lookup("Armor", garmor, _dictArmor))

rich_presence_display("[🕰️ {0}] [{1}Z] [E.Tanks {2}/{3}] [🛡️ {4}]",
rich_presence_value("Time", totalPlaytime*2, format="FRAMES"),
rich_presence_value("val", moneyShip),
rich_presence_value("val", totalTanks()),
rich_presence_value("val", developItemCount[eTank]),
rich_presence_lookup("Armor", garmor, _dictArmor))



//#endregion