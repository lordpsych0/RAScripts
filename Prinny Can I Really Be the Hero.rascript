// Prinny: Can I Really Be the Hero?
// #ID = 10846

//#region Variables

//-Difficulty
_difHell = 0
_difStandard = 1

//-Lucky Dolls, Bits 0, 1 and 2, that's 3 (111)
_ldFirst = 0x993abc
_ldLast = 0x993ae3

//-Collectible boss items 01
_ciRottingMeat = 0x993b7c //-First
_ciChocBox = 0x993b9f //-Last

//-Monster Flag and count
_mfMoabGrunt = 0x993ba0 //-First flag 01, Secret 03 or Bit1
_mcMoabGrunt = 0x993ba2 //-First count

_mfCX3Helleyes = 0x993cc8 //-Last monster
_mfSaveShop = 0x993d08 //-Last entry on monsterpedia

//-In Game Awards (01 won, 03 awarded, 01 -> 11)
_awFirst = 0x993d20
_awBBolter = 0
_awSSprinter = 1
_awGGlider = 2
_awBBoxer = 3
_awSSlugger = 4
_awGGrappler = 5
_awBBaddie = 6
_awSSatan = 7
_awGGhoul = 8
_awTOverlord = 9
_awPrinnycide = 10
_awFHunter = 11
_awAsagiFan = 12
_awMPassion = 13
_awBAMonstology = 14
_awButtbuster = 15
_awOverpopulation = 16
_awPrinsanity = 17
_awSOrder = 18
_awAsagiForever = 19
_awFMaster = 20
_awUWarrior = 21
_awSGirlfriend = 22
_awBaalGem = 23
_awGHand = 24
_awSCoward = 25
_awSScreamer = 26
_awCleansing = 27
_awLuckyPhd = 28
_awNTVMusic = 29
//#endregion

//-Levels
_lvNGrass = 1
_lvHTForest = 2
_lvDWTower = 3
_lvDSAria = 4
_lvMagmaH = 5
_lvMFortress = 6
_lvASAltar = 7
_lvBDDesert = 8
_lvSPalace = 9
_lvSGarden = 0xa
_lvEtna = 0xb
_lvTutorial1 = 0xc
_lvTutorial2 = 0xd
_lvAsagi = 0x15
_lvMartialT = 0x32
_lvDLC = 0x3c //-Time 0 Flonne 1 Marona 2 Asagi

//-Time
_tiDawn = 1
_tiDay = 2
_tiDusk = 3
_tiNight = 4
_tiMoon = 5
_tiOwl = 6
_tiFinale = 7
_tiFlonne = 0
_tiMarona = 1
_tiAsagi = 2

//-Rank
_rS = 4
_rA = 3
_rB = 2
_rC = 1
_rD = 0

_firstHellTime = 0x993130
_firstHellClear = 0x993134
_firstHellRank = 0x993135

_firstStandardTime = 0x9935f0
_firstStandardClear = 0x9935f4
_firstStandardRank = 0x9935f5

_firstMonster = 0x993ba0 //-Moab
_lastMonster = 0x993d08 //-Save Manager

//#region Dictionaries

_dictHours = {
	9: [1, 2],
	8: [2, 3],
	7: [3, 4],
	6: [4, 5],
	5: [5, 6],
	4: [6, 7],
	3: [7, 8],
	2: [8, 9],
	1: [9, 10],
}

_dictLevels = {
	_lvNGrass: "Nethergrasslands",
	_lvHTForest: "High Tome Forest",
	_lvDWTower: "Death's Watchtower",
	_lvDSAria: "Demon Sea Aria",
	_lvMagmaH: "Magma Hideout",
	_lvMFortress: "Moab Fortress",
	_lvASAltar: "Aged Sage Altar",
	_lvBDDesert: "Black Dessert Desert",
	_lvSPalace: "Sweet Palace",
	_lvSGarden: "Sweet Garden",
	_lvEtna: "Etna's Chamber",
	_lvTutorial1: "Tutorial 1",
	_lvTutorial2: "Tutorial 2",
	_lvMartialT: "Martial Tower",
	_lvAsagi: "Asagi's Story",
	_lvDLC: "DLC:"
}

_dictRP = {
	_lvASAltar: "Fighting CHEFBOT-9000!!!",
	_lvBDDesert: "Running through the Black Dessert Desert",
	_lvSPalace: "Going though Boss Rush at Sweet Palace",
	_lvSGarden: "Showdown against Sir Sweet",
	_lvEtna: "Fighting Master Etna, dood!",
	_lvTutorial1: "Learning the basics",
	_lvTutorial2: "Learning the not-so-basics"
}

_dictMartialRP = {
	_tiDawn: "Struggling through Martial Tower to find the Prince",
	_tiDay: "Struggling through Martial Tower to fight the Tyrant"
}

_dictMartial = {
	_tiDawn: ": Laharl",
	_tiDay: ": Baal"
}

_dictAsagiLevels = {
	_tiDawn: "Ch. 1: Who's the Hero?",
	_tiDay: "Ch. 2: Where Am I?",
	_tiDusk: "Ch. 3: Councelor's Office",
	_tiNight: "Ch. 4: What Am I Missing?",
	_tiMoon: "Ch. 5: Master the Self",
	_tiOwl: "Ch. 6: Cram Session",
	_tiFinale: "Finale: For Eternity!",
}

_dictDLC = {
	_tiFlonne: "Fallen Angel Flonne",
	_tiMarona: "Marona of Phantom Isle",
	_tiAsagi: "Li'l Asagi"
}

_dictDLCStage = {
	_tiFlonne: "Flonne's Castle",
	_tiMarona: "Marona of Phantom Isle",
	_tiAsagi: "Li'l Asagi Comes Home"
}

_dictStagesOffset = {
	_lvNGrass: 0,
	_lvHTForest: 6, //-+48
	_lvDWTower: 12,	//-+48
	_lvDSAria: 18,	//-+48
	_lvMagmaH: 24,	//-+48
	_lvMFortress: 30,//-+48
	_lvASAltar: 36,	//-+48
	_lvBDDesert: 37,
	_lvSPalace: 38,
	_lvSGarden: 39,
	_lvEtna: 40,
	_lvTutorial1: 41,
	_lvTutorial2: 42,
	_lvAsagi: 43,
	_lvMartialT: 50,
	_lvDLC: 52
}

_dictRank = {
	_rS: "S",
	_rA: "A",
	_rB: "B",
	_rC: "C",
	_rD: "D"
}

_dictScarf = {
	4: " [🧣🧣🧣]",
	3: " [🧣🧣]",
	2: " [🧣]"
}

_dictAwards = {
	_awBBolter: ["Bronze Bolter", "Get a Gold time in over 3 stages"],
	_awSSprinter: ["Silver Sprinter", "Get a Gold time in over 10 stages"],
	_awGGlider: ["Gold Glider", "Get a Gold time in over 20 stages"],
	_awBBoxer: ["Bronze Boxer", "Get a Clear Rank S in over 30 stages"],
	_awSSlugger: ["Silver Slugger", "Get a Clear Rank S in over 40 stages"],
	_awGGrappler: ["Gold Grappler", "Get a Clear Rank S in over 50 stages"],
	_awBBaddie: ["Bronze Baddie", "Finish 2 story stages on Hell's Finest without dying"],
	_awSSatan: ["Silver Satan", "Finish 3 story stages on Hell's Finest without dying"],
	_awGGhoul: ["Gold Ghoul", "Finish 4 story stages on Hell's Finest without dying"],
	_awTOverlord: ["True Overlord", "Finish 5 story stages on Hell's Finest without dying"],
	_awPrinnycide: ["Prinnycide", "Kill over 10'000 prinnies"],
	_awFHunter: ["Flavor Hunter", "Collect 10'000 sweets"],
	_awAsagiFan: ["Asagi's #1 Fan", "Find all Torn Letters and Asagi prizes"],
	_awMPassion: ["Medal of Passion", "Beat the game"],
	_awBAMonstology: ["BA in Monstology", "Complete the Monsterpedia"],
	_awButtbuster: ["Buttbuster", "Execute 10'000 Hip Pounds"],
	_awOverpopulation: ["Overpopulation", "Revive everyone in the village"],
	_awPrinsanity: ["Prinsanity", "Clear every stage"],
	_awSOrder: ["Satanic Order", "Defeat Demon Lord Etna"],
	_awAsagiForever: ["Asagi Forever", "Clear Asagi's special stage"],
	_awFMaster: ["Flavor Master", "Find all 36 ingredients in the 6 standard stages"],
	_awUWarrior: ["Ultimate Warrior", "Earn over 50'000 points without dying"],
	_awSGirlfriend: ["Superstar Girlfriend", "Get every other award"],
	_awBaalGem: ["Baal Gem", "Defeat Tyrant Baal"],
	_awGHand: ["God Hand", "Clear the Martial Tower"],
	_awSCoward: ["Son of a Coward", "Run away over 10 times"],
	_awSScreamer: ["Star Screamer", "Get over 1M points"],
	_awCleansing: ["The Cleansing", "Defeat over 10'000 enemies"],
	_awLuckyPhd: ["Dr. Lucky, PhD", "Collect every Lucky Doll"],
	_awNTVMusic: ["NTV Music Award", "Collect every Netherecord"]
}

_dictTime = {
	_tiDawn: "🌅",
	_tiDay:"☀️",
	_tiDusk:"🌇",
	_tiNight:"🌃",
	_tiMoon: "🌛",
	_tiOwl: "🦉"
}

_dictDifficulty = {
	_difHell: "Hell's Finest",
	_difStandard: "Standard"
}

_dictHell = {
	_difHell: "😈 ",
	_difStandard: ""
}

//#endregion

//#region Memory Accessors
modeFlag = byte(0x93c6d4) //-This is only seen on level
modeFlag2 = byte(0x993101) //-This changes when changing the mode
currentLevel = byte(0x93c6d8)
levelTime = byte(0x93c6dc)

resultsShown = byte(0x93c687)
totalScore = dword(0x93c6e0)
levelFinishedFlag = byte(0x93c680)
levelCountdownTimer = dword(0x93c6e8)
levelClearTime = dword(0x93c6f0)

diedDuringLevelFlag = byte(0x93c6e4)
diedStage = word(0x93c6f4)
diedBoss = word(0x93c6f6)
canMoveFlag = byte(0x93c6e7)

hourOfDay = byte(0x993100)

hpValue = byte(0x93c700)
lives = word(0x93c73c)

devilDeal = bit2(0x993104)
martialKey = bit3(0x993104)

totalPlayTime = dword(0x993108)
luckyDollsDeliver = byte(0x993abb)
replayFlag = byte(0x95a210)


bossRushN = byte(0x93c6e6)
inLevelPointer = dword(0x93c6f8)
bossesRemaining = byte(0x93b7e0)
carrying = dword(0xb6f340)
bossStartFlag = byte(0x93b7e6)
deadFlag = byte(0x93c684)
//#endregion

//#region Functions
function playing() => inLevelPointer > 0
function lastBossRush() => bossRushN == 6
function lastBossBattle() => bossRushN == 2
function inDifficulty(diff) => modeFlag == diff && modeFlag2 == modeFlag
function notReplay() => replayFlag == 0
function inLevel(level, time) {
	result = currentLevel == level
	if (level < _lvASAltar || level >= _lvAsagi){
		result = result && levelTime == time
	}
	return result
}
function killedBoss(level, time) => inLevel(level, time) && prev(levelFinishedFlag) == 0 && levelFinishedFlag == 1
function killedBossTrigger(level, time) => inLevel(level, time) && trigger_when(prev(levelFinishedFlag) == 0 && levelFinishedFlag == 1)

function finishedLevel(level, time) => inLevel(level, time) && shownResults()
function finishedLevelTrigger(level, time) => inLevel(level, time) && trigger_when(shownResults())

function shownResults() => prev(resultsShown) == 1 && resultsShown == 0
function notDied() => diedDuringLevelFlag == 0 && diedStage == 0 && diedBoss == 0
function notDiedMore(deaths) => diedStage + diedBoss <= deaths
function gotHour(hour) => prev(hourOfDay) == _dictHours[hour][0] && hourOfDay == _dictHours[hour][1]

function gotAward(award){
	awardMem = byte(_awFirst + award)
	
	return prev(awardMem) == 1 && awardMem == 3
}

function bossStarted() => prev(bossStartFlag) == 0 && bossStartFlag == 1

function getOffset(level, time, hell) {	
	hellOffset = hell * 0x4c0
	levelOffset = _dictStagesOffset[level] * 8
	timeOffset = (time - 1) * 0x8
	
	return hellOffset + levelOffset + timeOffset
}

function getBestTime(level, time, hell) => dword(_firstHellTime + getOffset(level, time, hell))

function getCleared(level, time, hell) => byte(_firstHellClear + getOffset(level, time, hell))

function getBestRank(level, time, hell) => byte(_firstHellRank + getOffset(level, time, hell))

function allSecrets() => sum_of(
						range(_firstMonster,_lastMonster,step=4), addr => byte(addr)/3)
						
function prevAllSecrets() => sum_of(
						range(_firstMonster,_lastMonster,step=4), addr => prev(byte(addr))/3)		
						

//#endregion

//#region Achievement logic

function levelWODyingAchievement(id, level, time, title, points){
	if (title == ""){
		title = format("{0}{1}", _dictLevels[level], _dictTime[time])
	}
	
	if (level == _lvTutorial1 || level == _lvTutorial2){
		description = format("Finish {0} on {1} without dying", _dictLevels[level], _dictDifficulty[_difHell])
	}
	else{
		description = format("Finish {0} {1} on {2} without dying", _dictLevels[level], _dictTime[time], _dictDifficulty[_difHell])
	}	
	
	trigger = notReplay()
			&& playing()
			&& inDifficulty(_difHell)
			&& finishedLevelTrigger(level, time)
			&& notDied()
			
	if (level == _lvSPalace) {
		trigger = trigger && bossRushN == 6		
	}

	achievement(title = title, points = points, description = description, trigger = trigger, id = id)
}

function levelWODyingMoreThanAchievement(id, level, time, deaths, title, points){
	if (title == ""){
		title = format("{0}{1}", _dictLevels[level], _dictTime[time])
	}
	
	if (time == 0){
		description = format("Finish {0} on {1} without dying more than {2} times", _dictLevels[level], _dictDifficulty[_difHell], deaths)
	}
	else{
		description = format("Finish {0} {1} on {2} without dying more than {3} times", _dictLevels[level], _dictTime[time], _dictDifficulty[_difHell], deaths)
		
		if (level == _lvDLC){
			description = format("Finish {0} {1} on {2} without dying more than {3} times", _dictLevels[level], _dictDLC[time], _dictDifficulty[_difHell], deaths)
		}
	}	
	
	trigger = notReplay()
			&& playing()
			&& inDifficulty(_difHell)
			&& finishedLevelTrigger(level, time)
			&& notDiedMore(deaths)
			
	if (level == _lvSPalace) {
		trigger = trigger && lastBossRush()
	}

	achievement(title = title, points = points, description = description, trigger = trigger, id = id)
}

function levelHellAchievement(id, level, time, title, points){
	if (title == ""){
		title = format("{0}", _dictLevels[level])
	}
	
	description = format("Finish {0} on {1}", _dictLevels[level], _dictDifficulty[_difHell])
	
	trigger = notReplay()
			&& playing()
			&& inDifficulty(_difHell)
			&& finishedLevel(level, time) 
			//-Day only applies to Baal, SrSweet and Etna don't care
			
	if (level == _lvSGarden){
		description = format("Defeat Sir Sweet on {0}", _dictDifficulty[_difHell])
	}
	
	if (level == _lvEtna){
		description = format("Defeat Etna on {0}", _dictDifficulty[_difHell])
	}
	
	if (level == _lvMartialT){
		description = format("Defeat Baal on {0}", _dictDifficulty[_difHell])
	}
	
	if (level == _lvDLC){
		description = format("Finish {0} {1} on {2}", _dictLevels[level], _dictDLCStage[time], _dictDifficulty[_difHell])
	}

	achievement(title = title, points = points, description = description, trigger = trigger, id = id)
}

function dlcNormalAchievement(id, level, time, title, points){
	description = format("Defeat {0}", _dictDLC[time])
	
	trigger = notReplay()
			&& playing()
			&& currentLevel == level
			&& levelTime == time
			&& shownResults()
			//-&& finishedLevel(level, title)

	achievement(title = title, points = points, description = description, trigger = trigger, id = id)
}

function levelRankAchievement(id, level, time, rank, title, points){
	if (title == ""){
		title = format("{0}{1}", _dictLevels[level], _dictTime[time])
	}
	
	if (rank < _rS){
		orB = " or better"
	}
	else {
		orB = ""
	}
	
	if (level >= _lvASAltar){
		description = format("Finish {0} on {1} with Rank {2}{3} for the first time",
			_dictLevels[level],
			_dictDifficulty[_difHell], 
			_dictRank[rank],
			orB)
		if (level == _lvAsagi){
			description = format("Finish Asagi's {0} on {1} with Rank {2}{3} for the first time", 
			_dictAsagiLevels[time], 
			_dictDifficulty[_difHell], 
			_dictRank[rank],
			orB)
		}
	}	
	else{
		description = format("Finish {0} {1} on {2} with Rank {3}{4} for the first time", 
		_dictLevels[level], 
		_dictTime[time], 
		_dictDifficulty[_difHell], 
		_dictRank[rank],
		orB)
		
		if (level == _lvDLC){
			description = format("Finish {0} {1} on {2} with Rank {3}{4} for the first time", 
			_dictLevels[level], 
			_dictDLCStage[time], 
			_dictDifficulty[_difHell], 
			_dictRank[rank],
			orB)
		}
	}
	
	
	trigger = notReplay()
			&& never(!playing())
			&& inDifficulty(_difHell)
			&& inLevel(level, time)
			&& once(killedBoss(level, time))
			&& prev(getBestRank(level, time, _difHell)) < rank
			&& getBestRank(level, time, _difHell) >= rank
			
	if (level == _lvSPalace) {
		trigger = trigger && bossRushN == 6		
	}

	achievement(title = title, points = points, description = description, trigger = trigger, id = id)
}

function hourAchievement(id, hour, title, points){
		
	if (hour > 1){
		description = "Just " + hour + " hours left..."
	}
	else{
		description = "Just " + hour + " hour left..."
	}
	
	trigger = notReplay()
			&& gotHour(hour)

	achievement(title = title, points = points, description = description, trigger = trigger, id = id)
}

function awardAchievement(id, award, points){

	title = _dictAwards[award][0]
		
	description = _dictAwards[award][1]
	
	trigger = notReplay() 
			&& gotAward(award)

	achievement(title = title, points = points, description = description, trigger = trigger, id = id)
}

function allSecretsAchievement(id, title, points){
		
	description = "Find every demon's secret"
	
	totalSecretsMin1 = (_lastMonster - _firstMonster) / 4
	
	trigger = notReplay()
			&& prevAllSecrets() == totalSecretsMin1
			&& measured(allSecrets() == totalSecretsMin1 + 1)

	achievement(title = title, points = points, description = description, trigger = trigger, id = id)
}

function laharlAchievement(id, title, points){
		
	description = "Defeat Laharl on Hell's Finest without tossing him"
	
	trigger = notReplay()
			&& playing()
			&& inDifficulty(_difHell)
			&& levelTime == _tiDawn
			&& never(bossesRemaining == 1 && carrying > 0)
			&& once(bossStarted())
			&& finishedLevelTrigger(_lvMartialT, _tiDawn)

	achievement(title = title, points = points, description = description, trigger = trigger, id = id)
}

//#endregion

//#region Leaderboard Logic
function levelLeaderboard(id, diff, level, time){
	
	if (level < _lvASAltar) {
		title = format("{0}{1} {2}", _dictHell[diff], _dictLevels[level], _dictTime[time])
	
		description = format("Complete {0} {1} with the best time", _dictLevels[level], _dictTime[time])
	}
	else{
		title = format("{0}{1}", _dictHell[diff], _dictLevels[level])
	
		description = format("Complete {0} with the best time", _dictLevels[level])
		
		if (level == _lvAsagi){
			title = format("{0}{1} {2}", _dictHell[diff], _dictLevels[level], _dictAsagiLevels[time])
	
			description = format("Complete {0} {1} with the best time", _dictLevels[level], _dictAsagiLevels[time])
		}

		if (level == _lvDLC){
			title = format("{0}{1} {2}", _dictHell[diff], _dictLevels[level], _dictDLCStage[time])
	
			description = format("Complete {0} {1} with the best time", _dictLevels[level], _dictDLCStage[time])
		}
		if (level == _lvMartialT){
			title = format("{0}{1}{2}", _dictHell[diff], _dictLevels[level], _dictMartial[time])
	
			description = format("Complete {0}{1} with the best time", _dictLevels[level], _dictMartial[time])
		}
	}
	
	if (diff == _difHell) {
			description = description + " on " + _dictDifficulty[diff]
		}
		
    start = inDifficulty(diff)
			&& notReplay()
			&& killedBoss(level, time)
			
	if (level == _lvSPalace) {
		start = start && lastBossRush()	
	}
	if (level == _lvSGarden) {
		start = start && lastBossBattle()	
	}
			
    cancel = always_false()
	
    submit = shownResults()
			
    value = levelClearTime
	
    leaderboard(title, description, start, cancel, submit, value, "FRAMES", id = id)    
}

//#endregion

//#region Achievements
hourAchievement(196660, 9, "9 Hours, dood!", 1)
hourAchievement(196661, 8, "8 Hours, dood!", 2)
hourAchievement(196662, 7, "7 Hours, dood!", 3)
hourAchievement(196663, 6, "6 Hours, dood!", 4)
hourAchievement(196664, 5, "5 Hours, dood!", 5)
hourAchievement(196665, 4, "4 Hours, dood!", 5)
hourAchievement(196666, 3, "3 Hours, dood!", 5)
hourAchievement(196667, 2, "2 Hours, dood!", 5)
hourAchievement(196668, 1, "1 Hour, dood!", 5)

awardAchievement(196593, _awBBolter, 5)
awardAchievement(196594, _awSSprinter, 10)
awardAchievement(196595, _awGGlider, 25)
awardAchievement(196596, _awBBoxer, 5)
awardAchievement(196597, _awSSlugger, 10)
awardAchievement(196598, _awGGrappler, 25)
awardAchievement(196599, _awBBaddie, 5)
awardAchievement(196600, _awSSatan, 10)
awardAchievement(196601, _awGGhoul, 10)
awardAchievement(196602, _awTOverlord, 25)
awardAchievement(196603, _awPrinnycide, 1)
awardAchievement(196604, _awFHunter, 10)
awardAchievement(196605, _awAsagiFan, 10)
awardAchievement(196606, _awMPassion, 10)
awardAchievement(196607, _awBAMonstology, 10)
awardAchievement(196608, _awButtbuster, 10)
awardAchievement(196609, _awOverpopulation, 5)
awardAchievement(196610, _awPrinsanity, 25)
awardAchievement(196611, _awSOrder, 10)
awardAchievement(196612, _awAsagiForever, 25)
awardAchievement(196613, _awFMaster, 25)
awardAchievement(196614, _awUWarrior, 25)
awardAchievement(196615, _awSGirlfriend, 1)
awardAchievement(196616, _awBaalGem, 25)
awardAchievement(196617, _awGHand, 10)
awardAchievement(196618, _awSCoward, 2)
awardAchievement(196619, _awSScreamer, 10)
awardAchievement(196620, _awCleansing, 10)
awardAchievement(196621, _awLuckyPhd, 25)
awardAchievement(196622, _awNTVMusic, 25)
//-Get every secret of every enemy

levelWODyingAchievement(196623, _lvTutorial1, _tiDawn, "Your Friendly Neighborhood Imp", 2)
levelWODyingAchievement(196624, _lvTutorial2, _tiDawn, "No More Mr. Nice Demon", 3)

levelWODyingAchievement(196592, _lvNGrass, _tiDawn, "Morning Breakfast", 5)
levelWODyingAchievement(196625, _lvNGrass, _tiDay, "Out To Lunch", 5) //-Tumeric
levelWODyingAchievement(196626, _lvNGrass, _tiDusk, "Greasy Paws", 10)
levelWODyingAchievement(196627, _lvNGrass, _tiNight, "Eat n' Run", 10)
levelWODyingAchievement(196628, _lvNGrass, _tiMoon, "Pinny For Dinner", 25)
levelWODyingMoreThanAchievement(196629, _lvNGrass, _tiOwl, 3, "Midnight Snack", 25)

levelWODyingAchievement(196630, _lvHTForest, _tiDawn, "Not a Morning Girl", 5)
levelWODyingAchievement(196631, _lvHTForest, _tiDay, "Pissed Demon Twins", 5)
levelWODyingAchievement(196632, _lvHTForest, _tiDusk, "Crazy Little Witch", 10)
levelWODyingAchievement(196633, _lvHTForest, _tiNight, "Cat Bait", 10)
levelWODyingAchievement(196634, _lvHTForest, _tiMoon, "Crazy Little Thing Called Love", 25)
levelWODyingMoreThanAchievement(196635, _lvHTForest, _tiOwl, 3, "Sweet Magic Dreams", 25)

levelWODyingAchievement(196636, _lvDWTower, _tiDawn, "You Hit My Funny Bone", 5)
levelWODyingAchievement(196637, _lvDWTower, _tiDay, "Murderous Intent", 5)
levelWODyingAchievement(196638, _lvDWTower, _tiDusk, "Bittersweet Comedy", 10)
levelWODyingAchievement(196639, _lvDWTower, _tiNight, "Prinny Hunters", 10)
levelWODyingAchievement(196640, _lvDWTower, _tiMoon, "A Dirty Offer", 25)
levelWODyingMoreThanAchievement(196641, _lvDWTower, _tiOwl, 3, "Midnight Hunt", 25)

levelWODyingAchievement(196642, _lvDSAria, _tiDawn, "CASINO Ways", 5)
levelWODyingAchievement(196643, _lvDSAria, _tiDay, "Guardian Kitten", 5)
levelWODyingAchievement(196644, _lvDSAria, _tiDusk, "The Brown Fox Girl Jumps Over the Lazy Prinny", 10)
levelWODyingAchievement(196645, _lvDSAria, _tiNight, "A SIMP Mercenary", 10)
levelWODyingAchievement(196646, _lvDSAria, _tiMoon, "The Choyminator", 25)
levelWODyingMoreThanAchievement(196647, _lvDSAria, _tiOwl, 3, "BEEP BOP BOOP -- I'LL KILL YOU!", 25)

levelWODyingAchievement(196648, _lvMagmaH, _tiDawn, "Toasts With Dragon Jam", 5)
levelWODyingAchievement(196649, _lvMagmaH, _tiDay, "Her Cutie Poopy Bum", 5)
levelWODyingAchievement(196650, _lvMagmaH, _tiDusk, "The Not-so-sweet Path of the Ninja", 10)
levelWODyingAchievement(196651, _lvMagmaH, _tiNight, "Prinny Dissection", 10)
levelWODyingAchievement(196652, _lvMagmaH, _tiMoon, "Dragon Disruptor", 25)
levelWODyingMoreThanAchievement(196653, _lvMagmaH, _tiOwl, 3, "Tsukikage of the Full Moon", 25)

levelWODyingAchievement(196654, _lvMFortress, _tiDawn, "Trash Collector", 5)
levelWODyingAchievement(196655, _lvMFortress, _tiDay, "The Secret Recipe", 5)
levelWODyingAchievement(196656, _lvMFortress, _tiDusk, "Mini Pastry Chefs", 10)
levelWODyingAchievement(196657, _lvMFortress, _tiNight, "Guinea Prinny", 10)
levelWODyingAchievement(196658, _lvMFortress, _tiMoon, "Dimension Chopper", 25)
levelWODyingMoreThanAchievement(196659, _lvMFortress, _tiOwl, 3, "Raging Moabsters", 25)

levelRankAchievement(196669, _lvASAltar, _tiDawn, _rS, "It's CHEFBOT NINE THOUSAND!!!", 10)
levelRankAchievement(196670, _lvBDDesert, _tiDawn, _rA, "May the Sauce Be With You", 10)
levelRankAchievement(196671, _lvSPalace, _tiDawn, _rA, "Familiar Faces", 10)
levelHellAchievement(196672, _lvSGarden, _tiDawn, "Sweet Dreams, Sweet Pig", 10)
//-Defeat Laharl on Hell's Finest without tossing him [m] (25)
//-Defeat Baal on Hell's Finest (10)
laharlAchievement(196675, "Prinny of the Netherworld [m]", 25)
levelHellAchievement(196673, _lvMartialT, _tiDay, "Prinny of Terror", 10)
levelHellAchievement(196674, _lvEtna, _tiDawn, "Master Queen Etna", 10)

levelRankAchievement(196676, _lvAsagi, _tiDawn, _rS, "Flavor Hunter Asagi", 10)
levelRankAchievement(196677, _lvAsagi, _tiDay, _rA, "The Dark, Ugly Hole Called Netherworld", 10)
levelRankAchievement(196678, _lvAsagi, _tiDusk, _rB, "Asagi's Counceling Booth", 10)
levelRankAchievement(196679, _lvAsagi, _tiNight, _rA, "Happy ★ Hero Life", 10)
levelRankAchievement(196680, _lvAsagi, _tiMoon, _rB, "Don't Be a Cheater, Dood!", 10)
levelRankAchievement(196681, _lvAsagi, _tiOwl, _rA, "Knocking Out The Competition", 10)
levelRankAchievement(196682, _lvAsagi, _tiFinale, _rA, "Pretty Prinny Heroine", 25)

//-DLC
dlcNormalAchievement(196683, _lvDLC, _tiFlonne, "[DLC] Celestial Disposer", 5)
dlcNormalAchievement(196684, _lvDLC, _tiMarona, "[DLC] Phantom Eater", 10)
dlcNormalAchievement(196685, _lvDLC, _tiAsagi, "[DLC] Evil's Beheaded", 25)

levelWODyingMoreThanAchievement(196686, _lvDLC, _tiFlonne, 3, "[DLC] Angel Of Hop", 10)
levelRankAchievement(196687, _lvDLC, _tiMarona, _rA, "[DLC] Marona, The Impulsive Chroma", 10)
levelHellAchievement(196688, _lvDLC, _tiAsagi, "[DLC] I Wanna Be The Gal", 25)

allSecretsAchievement(196689, "Can You Keep a Secret?", 25)

//#endregion

//#region Leaderboards

//-Tutorial
levelLeaderboard(27348, _difStandard, _lvTutorial1, 0)
levelLeaderboard(27349, _difHell, _lvTutorial1, 0)
levelLeaderboard(27458, _difStandard, _lvTutorial2, 0)
levelLeaderboard(27459, _difHell, _lvTutorial2, 0)

//-Nethergrasslands
levelLeaderboard(27460, _difStandard, _lvNGrass, _tiDawn)
levelLeaderboard(27461, _difHell, _lvNGrass, _tiDawn)
levelLeaderboard(27462, _difStandard, _lvNGrass, _tiDay)
levelLeaderboard(27463, _difHell, _lvNGrass, _tiDay)
levelLeaderboard(27464, _difStandard, _lvNGrass, _tiDusk)
levelLeaderboard(27465, _difHell, _lvNGrass, _tiDusk)
levelLeaderboard(27466, _difStandard, _lvNGrass, _tiNight)
levelLeaderboard(27467, _difHell, _lvNGrass, _tiNight)
levelLeaderboard(27468, _difStandard, _lvNGrass, _tiMoon)
levelLeaderboard(27469, _difHell, _lvNGrass, _tiMoon)
levelLeaderboard(27470, _difStandard, _lvNGrass, _tiOwl)
levelLeaderboard(27471, _difHell, _lvNGrass, _tiOwl)

//-High Tome Forest
levelLeaderboard(27472, _difStandard, _lvHTForest, _tiDawn)
levelLeaderboard(27473, _difHell, _lvHTForest, _tiDawn)
levelLeaderboard(27474, _difStandard, _lvHTForest, _tiDay)
levelLeaderboard(27475, _difHell, _lvHTForest, _tiDay)
levelLeaderboard(27476, _difStandard, _lvHTForest, _tiDusk)
levelLeaderboard(27477, _difHell, _lvHTForest, _tiDusk)
levelLeaderboard(27478, _difStandard, _lvHTForest, _tiNight)
levelLeaderboard(27479, _difHell, _lvHTForest, _tiNight)
levelLeaderboard(27480, _difStandard, _lvHTForest, _tiMoon)
levelLeaderboard(27481, _difHell, _lvHTForest, _tiMoon)
levelLeaderboard(27482, _difStandard, _lvHTForest, _tiOwl)
levelLeaderboard(29791, _difHell, _lvHTForest, _tiOwl)

//-Death's Watchtower
levelLeaderboard(0, _difStandard, _lvDWTower, _tiDawn)
levelLeaderboard(0, _difHell, _lvDWTower, _tiDawn)
levelLeaderboard(0, _difStandard, _lvDWTower, _tiDay)
levelLeaderboard(0, _difHell, _lvDWTower, _tiDay)
levelLeaderboard(0, _difStandard, _lvDWTower, _tiDusk)
levelLeaderboard(0, _difHell, _lvDWTower, _tiDusk)
levelLeaderboard(0, _difStandard, _lvDWTower, _tiNight)
levelLeaderboard(0, _difHell, _lvDWTower, _tiNight)
levelLeaderboard(0, _difStandard, _lvDWTower, _tiMoon)
levelLeaderboard(0, _difHell, _lvDWTower, _tiMoon)
levelLeaderboard(0, _difStandard, _lvDWTower, _tiOwl)
levelLeaderboard(0, _difHell, _lvDWTower, _tiOwl)

//-Demon Sea Aria
levelLeaderboard(0, _difStandard, _lvDSAria, _tiDawn)
levelLeaderboard(0, _difHell, _lvDSAria, _tiDawn)
levelLeaderboard(0, _difStandard, _lvDSAria, _tiDay)
levelLeaderboard(0, _difHell, _lvDSAria, _tiDay)
levelLeaderboard(0, _difStandard, _lvDSAria, _tiDusk)
levelLeaderboard(0, _difHell, _lvDSAria, _tiDusk)
levelLeaderboard(0, _difStandard, _lvDSAria, _tiNight)
levelLeaderboard(0, _difHell, _lvDSAria, _tiNight)
levelLeaderboard(0, _difStandard, _lvDSAria, _tiMoon)
levelLeaderboard(0, _difHell, _lvDSAria, _tiMoon)
levelLeaderboard(0, _difStandard, _lvDSAria, _tiOwl)
levelLeaderboard(0, _difHell, _lvDSAria, _tiOwl)

//-Magma Hideout
levelLeaderboard(0, _difStandard, _lvMagmaH, _tiDawn)
levelLeaderboard(0, _difHell, _lvMagmaH, _tiDawn)
levelLeaderboard(0, _difStandard, _lvMagmaH, _tiDay)
levelLeaderboard(0, _difHell, _lvMagmaH, _tiDay)
levelLeaderboard(0, _difStandard, _lvMagmaH, _tiDusk)
levelLeaderboard(0, _difHell, _lvMagmaH, _tiDusk)
levelLeaderboard(0, _difStandard, _lvMagmaH, _tiNight)
levelLeaderboard(0, _difHell, _lvMagmaH, _tiNight)
levelLeaderboard(0, _difStandard, _lvMagmaH, _tiMoon)
levelLeaderboard(0, _difHell, _lvMagmaH, _tiMoon)
levelLeaderboard(0, _difStandard, _lvMagmaH, _tiOwl)
levelLeaderboard(0, _difHell, _lvMagmaH, _tiOwl)

//-Moab Fortress
levelLeaderboard(0, _difStandard, _lvMFortress, _tiDawn)
levelLeaderboard(0, _difHell, _lvMFortress, _tiDawn)
levelLeaderboard(0, _difStandard, _lvMFortress, _tiDay)
levelLeaderboard(0, _difHell, _lvMFortress, _tiDay)
levelLeaderboard(0, _difStandard, _lvMFortress, _tiDusk)
levelLeaderboard(0, _difHell, _lvMFortress, _tiDusk)
levelLeaderboard(0, _difStandard, _lvMFortress, _tiNight)
levelLeaderboard(0, _difHell, _lvMFortress, _tiNight)
levelLeaderboard(0, _difStandard, _lvMFortress, _tiMoon)
levelLeaderboard(0, _difHell, _lvMFortress, _tiMoon)
levelLeaderboard(0, _difStandard, _lvMFortress, _tiOwl)
levelLeaderboard(0, _difHell, _lvMFortress, _tiOwl)

levelLeaderboard(0, _difStandard, _lvASAltar, 0)
levelLeaderboard(0, _difHell, _lvASAltar, 0)

levelLeaderboard(0, _difStandard, _lvBDDesert, 0)
levelLeaderboard(0, _difHell, _lvBDDesert, 0)

levelLeaderboard(0, _difStandard, _lvSPalace, 0)
levelLeaderboard(0, _difHell, _lvSPalace, 0)

levelLeaderboard(0, _difStandard, _lvSGarden, 0)
levelLeaderboard(0, _difHell, _lvSGarden, 0)

levelLeaderboard(0, _difStandard, _lvEtna, 0)
levelLeaderboard(0, _difHell, _lvEtna, 0)

levelLeaderboard(0, _difStandard, _lvMartialT, _tiDawn)
levelLeaderboard(0, _difHell, _lvMartialT, _tiDawn)

levelLeaderboard(0, _difStandard, _lvMartialT, _tiDay)
levelLeaderboard(0, _difHell, _lvMartialT, _tiDay)

//-Asagi mode
levelLeaderboard(0, _difStandard, _lvAsagi, _tiDawn)
levelLeaderboard(0, _difHell, _lvAsagi, _tiDawn)
levelLeaderboard(0, _difStandard, _lvAsagi, _tiDay)
levelLeaderboard(0, _difHell, _lvAsagi, _tiDay)
levelLeaderboard(0, _difStandard, _lvAsagi, _tiDusk)
levelLeaderboard(0, _difHell, _lvAsagi, _tiDusk)
levelLeaderboard(0, _difStandard, _lvAsagi, _tiNight)
levelLeaderboard(0, _difHell, _lvAsagi, _tiNight)
levelLeaderboard(0, _difStandard, _lvAsagi, _tiMoon)
levelLeaderboard(0, _difHell, _lvAsagi, _tiMoon)
levelLeaderboard(0, _difStandard, _lvAsagi, _tiOwl)
levelLeaderboard(0, _difHell, _lvAsagi, _tiOwl)
levelLeaderboard(0, _difStandard, _lvAsagi, _tiFinale)
levelLeaderboard(0, _difHell, _lvAsagi, _tiFinale)

//-DLC
levelLeaderboard(0, _difStandard, _lvDLC, _tiFlonne)
levelLeaderboard(0, _difHell, _lvDLC, _tiFlonne)
levelLeaderboard(0, _difStandard, _lvDLC, _tiMarona)
levelLeaderboard(0, _difHell, _lvDLC, _tiMarona)
levelLeaderboard(0, _difStandard, _lvDLC, _tiAsagi)
levelLeaderboard(0, _difHell, _lvDLC, _tiAsagi)


//-for level in _dictLevels {
//-	for time in _dictTime {
//-		for diff in _dictDifficulty {
//-			if (level < 7 || time == 1){
//-				levelLeaderboard(diff, level, time)
//-			}
//-		}
//-	}
//-}

//#endregion

//#region Rich Presence

rich_presence_conditional_display(!playing(), "Lazing around the Netherworld")

rich_presence_conditional_display(playing() && currentLevel < _lvASAltar, "{0}Fighting through {1} {2}{3} [🐧 x {4}]",
rich_presence_lookup("hell", modeFlag, _dictHell),
rich_presence_lookup("level", currentLevel, _dictLevels),
rich_presence_lookup("time", levelTime, _dictTime),
rich_presence_lookup("hp", hpValue, _dictScarf),
rich_presence_value("val", lives))

rich_presence_conditional_display(playing() && currentLevel == _lvMartialT, "{0}{1}{2} [🐧 x {3}]",
rich_presence_lookup("hell", modeFlag, _dictHell),
rich_presence_lookup("rptime", levelTime, _dictMartialRP),
rich_presence_lookup("hp", hpValue, _dictScarf),
rich_presence_value("val", lives))

rich_presence_conditional_display(playing() && currentLevel == _lvAsagi, "{0}Listening to {1} - {2}{3} [🐧 x {4}]",
rich_presence_lookup("hell", modeFlag, _dictHell),
rich_presence_lookup("level", currentLevel, _dictLevels),
rich_presence_lookup("rpasagi", levelTime, _dictAsagiLevels),
rich_presence_lookup("hp", hpValue, _dictScarf),
rich_presence_value("val", lives))

rich_presence_conditional_display(playing() && currentLevel == _lvDLC, "{0}Fighting through DLC - {1}{2}",
rich_presence_lookup("hell", modeFlag, _dictHell),
rich_presence_lookup("rpdlc", levelTime, _dictDLCStage),
rich_presence_lookup("hp", hpValue, _dictScarf))

rich_presence_conditional_display(playing() && (currentLevel >= _lvASAltar), "{0}{1}{2} [🐧 x {3}]",
rich_presence_lookup("hell", modeFlag, _dictHell),
rich_presence_lookup("rp", currentLevel, _dictRP),
rich_presence_lookup("hp", hpValue, _dictScarf),
rich_presence_value("val", lives))

rich_presence_conditional_display(!notReplay(), "Watching some replays")

rich_presence_display("Playing Prinny: Can I Really Be the Hero?")

//#endregion