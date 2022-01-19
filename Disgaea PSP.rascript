// Disgaea: Afternoon of Darkness
// #ID = 3979

//#region Variables
//-Area IDs

//-LevelID

//-Map IDs
_mCastleRoom = 0x2
_mCastleHub = 0x3
_mHallOfCaresses = 0xc
_mWhiteDeath = 0x10
_mLavishHall = 0x14
_mMoltenLabyrinth = 0x18
_mIceQueen = 0x1c
_mHeartOfEvil = 0x22
_mEmberOfDreams = 0x27
_mUnderTheMoon = 0x2b
_mPrimordialSoup = 0x30
_mPrimordialSoupZetta = 0x31
_mInferno = 0x36
_mHerosTomb = 0x3a
_mSideralRift = 0x3e
_mPonintAlphaIII = 0x03f
_mBridge = 0x43
_mSacredAltar = 0x4c
_mCaveOrdeal5 = 0x71
_mEDFHeadquarters = 0x67
_mPrinnyLand3 = 0x64
_mWarriorMaiden = 0x6c
_mDemonHallAdell = 0x77
_mDemonHallRozalin = 0x78
_mBeautyEvil = 0x7d
_mLordOfTerror = 0x7b
_mHallOfCaressesEtna = 0x51
_mLavishHallEtna = 0x55
_mInfernoEtna = 0x5a
_mMillenniumIceEtna = 0x61

//-ScreenId
_scrNormal = 0x15
_scrBattle = 0xb
_scrMusicShop = 0x8d
_scrWeaponShop = 0x47
_scrGateKeeper = 0x1f
_scrItemWorld = 0x3d
_scrHospital = 0x51
_scrDarkAssembly = 0x33
_scrSwitchDarkAssembly = 0x7d0
_scrEndChapter = 0x6f

//-Items
//-Item Icon
_iFirst = 0
_iSword = 1
_iLance = 2
_iBow = 3
_iGun = 4
_iAxe = 5
_iStaff = 6
_iClaw = 7
_iShield = 8
_iArmor = 9
_iShoe = 0xa
_iBoot = 0xb
_iPaper = 0xc
_iExclamation = 0xd

//-Item IDs
_iUltimus = 0x808c
_iYoshitsuna = 0x40f0
_iGlorious = 0x8154
_iGalaxy = 0x41b8
_iEtoile = 0x21c 
_iApocalypse = 0x280
_iOmniStaff = 0x82e4
_iStealHand = 0x835
_iDreamHand = 0x83a

_icFist = 0
_icSword = 1
_icLance = 2
_icBow = 3
_icGun = 4
_icAxe = 5
_icStaff = 6
_icMonsterWeapon = 7
_icArmor = 8
_icBelt = 9
_icShoe = 10
_icOrb = 11
_icGlasses = 12
_icMuscle = 13
_icEX = 14
_icSymbol = 15
_icUsable = 16
_icHand = 17

_itemsDict = {
	_icFist: [0x9c4030, 40],
	_icSword: [0x9c4060, 40],
	_icLance: [0x9c4090, 40],
	_icBow: [0x9c40c0, 40],
	_icGun: [0x9c40f0, 40],
	_icAxe: [0x9c4120, 40],
	_icStaff: [0x9c4150, 40],
	_icMonsterWeapon: [0x9c4180, 42],
	_icArmor: [0x9c41e0, 40],
	_icBelt: [0x9c4210, 20],
	_icShoe: [0x9c4240, 7],
	_icOrb: [0x9c4270, 10],
	_icGlasses: [0x9c42a0, 10],
	_icMuscle: [0x9c42d0, 10],
	_icEX: [0x9c4360, 8],
	_icSymbol: [0x9c4390, 10],
	_icUsable: [0x9c43c0, 32],
	_icHand: [0x9c43f0, 7]
}

//-Bosses
_bItemKing = 0
_bItemGeneral = 1
_bItemGod = 2
_bItemGod2 = 3
_bPriere = 4
_bAstro = 5
_bPrinnyGod = 6
_bMarjoly = 7
_bBaal = 8
_bPrinnyBaal = 9
_bZetta = 10
_bAdell = 11
_bRozalin = 12
_bZombieKing = 13

_bossesDict = {
	_bItemKing: [0x9c45b4, 0, _mCastleHub],
	_bItemGeneral: [0x9c45b4, 1, _mCastleHub],
	_bItemGod: [0x9c45b4, 2, _mCastleHub],
	_bItemGod2: [0x9c45b4, 3, _mCastleHub],
	_bAstro: [0x9c45b4, 4, _mEDFHeadquarters],
	_bPrinnyGod: [0x9c45b4, 5, _mPrinnyLand3],
	_bPriere: [0x9c45b4, 6, _mWarriorMaiden],
	_bMarjoly: [0x9c45b4, 7, _mBeautyEvil],
	_bBaal: [0x9c45b5, 0, _mLordOfTerror],
	_bPrinnyBaal: [0x9c45b5, 1, _mLordOfTerror],
	_bZetta: [0x9c45b5, 2, _mPrimordialSoupZetta],
	_bAdell: [0x9c45b5, 4, _mDemonHallAdell],
	_bRozalin: [0x9c45b5, 5, _mDemonHallRozalin]	
}

//-Dark Assembly menu option
_daCharacters = 0x3
_daProposal = 0x1F
_daDeleteChar = 0x137
_daPromotionExam = 0x136
_daChangeName = 0x20
_daOnAssembly = 0x64
_daCreateNewChar = 0x1
_daNewCharCapability = 0xb //-Turns 0xa then 0xb
_daNewCharName = 0xd
_daNewCharAllocatePoints = 0xe
_daNewCharFinish = 0xf

//-New Characters IDs
_brawlerM = 0x3f2
_brawlerF = 0x3fc
_warriorM = 0x406
_warriorF = 0x410
_archer = 0x442
_skull = 0x44c
_mage = 0x456
_clericM = 0x460
_clericF = 0x46a
_hobbit = 0x7d0
_ghost = 0x7da
_zombie = 0x848
_prinny = 0x8a2
_EDFSoldier = 0x47e
_scout = 0x474
_thief = 0x492
_ninja = 0x424
_ronin = 0x42e
_knight = 0x438
_angel = 0x488
_majin = 0x41a

_newCharCapability = [0, 1, 2, 3, 4, 5]
//-GFN, Incompetent, Average, Skilled, Distinguished, Genius

_newCharTiers = {
	_brawlerM : [0],
	_brawlerF : [0],
	_warriorM : [0],
	_warriorF : [0],
	_skull : [0, 1 , 2], //-Red, Green, Blue
	_mage : [0, 1 , 2],
	_clericM : [0, 1],
	_clericF : [0, 1], //-Cleric, Priest
	_hobbit : [0],
	_ghost : [0, 1],//-Ghost, Boggart
	_prinny : [0], 
}

_episodeLastMap = {
	1: _mHallOfCaresses,
	2: _mWhiteDeath,
	3: _mLavishHall,
	4: _mMoltenLabyrinth,
	5: _mIceQueen,
	6: _mHeartOfEvil,
	7: _mEmberOfDreams,
	8: _mUnderTheMoon,
	9: _mPrimordialSoup,
	10: _mInferno,
	11: _mHerosTomb,
	12: _mSideralRift,
	13: _mBridge,	
	14: _mSacredAltar,
	15: _mHallOfCaressesEtna,
	16: _mLavishHallEtna,
	17: _mInfernoEtna,
	18: _mMillenniumIceEtna
}

//-Endings
_endMidboss = 1
_endFlonneTragedy = 2
_endEtnaHeroine = 3
_endDarkAssembly = 4
_endItemGod = 5
_endEarth = 6
_endNormal = 7
_endBest = 8
_endEtnaNormal = 9
_endEtnaTyrant = 10

_endingFlags = {
	_endMidboss: [0x98008b, 6],
	_endFlonneTragedy: [0x9800ca, 3],
	_endEtnaHeroine: [0x9800ca, 4],
	_endDarkAssembly: [0x9800cb, 5],
	_endItemGod: [0x9800cb, 4],
	_endEarth: [0x98008c, 1],
	_endNormal: [0x9800cc, 0],
	_endBest: [0x98008b, 3],
	_endEtnaNormal: [0x9800b8, 3],
	_endEtnaTyrant: [0x98008e, 5],
}


//#endregion

//#region Dictionaries
_dicCharNames = {
	_brawlerM : ["Brawler (M)", "Pugilist (M)", "Fighter (M)", "Black Belt (M)", "Wushu Master (M)", "Eternal Fist (M)"],
	_brawlerF : ["Brawler (F)", "Pugilist (F)", "Fighter (F)", "Black Belt (F)", "Wushu Master (F)", "Eternal Fist (F)"],
	_warriorM : ["Warrior (M)", "Battler (M)", "Centurion (M)", "Champion (M)", "Hero (F)", "Cosmic Hero (M)"],
	_warriorF : ["Warrior (F)", "Battler (F)", "Centurion (F)", "Champion (F)", "Hero (F)", "Cosmic Hero (F)"],
	_archer: ["Archer"],
	_skull : ["Red Skull", "Green Skull", "Blue Skull", "Star Skull", "Prism Skull", "Galaxy Skull"],
	_mage : ["Red Mage", "Green Mage", "Blue Mage", "Star Mage", "Prism Mage", "Galaxy Mage"],
	_clericM : ["Cleric (M)", "Priest (M)", "Bishop (M)", "Sage (M)", "Prophet (M)", "Savior (M)"],
	_clericF : ["Cleric (F)", "Priest (F)", "Bishop (F)", "Sage (F)", "Prophet (F)", "Savior (F)"],
	_hobbit : ["Hobbit"],
	_ghost : ["Ghost", "Boggart"],
	_prinny : ["Prinny"],
	_EDFSoldier: ["EDF Soldier"],
	_scout: ["Strider"],
	_thief: ["Thief"],
	_ninja: ["Ninja"],
	_ronin: ["Samurai"],
	_knight: ["Knight"],
	_angel: ["Angel"],
	_majin: ["Majin"]
}

_dicItemNames = {	
	_iUltimus : "Ultimus",
	_iYoshitsuna : "Yoshitsuna",
	_iGlorious : "Glorious",
	_iGalaxy : "Galaxy",
	_iEtoile : "Etoile",
	_iApocalypse : "Apocalypse",
	_iOmniStaff : "Omni Staff"
}

_dicItemType = {
	_icFist: "Fist",
	_icSword: "Sword",
	_icLance: "Lance",
	_icBow: "Bow",
	_icGun: "Gun",
	_icAxe: "Axe",
	_icStaff: "Staff",
	_icMonsterWeapon: "Monster Weapon",
	_icArmor: "Armor",
	_icBelt: "Belt",
	_icShoe: "Shoes",
	_icOrb: "Orb",
	_icGlasses: "Glasses",
	_icMuscle: "Muscle",
	_icEX: "EX Item",
	_icSymbol: "Symbol",
	_icUsable: "Usable",
	_icHand: "Hand"
}

_dictBosses = {
	_bItemKing: "Item King",
	_bItemGeneral: "Item General",
	_bItemGod: "Item God",
	_bItemGod2: "Item God 2",
	_bPriere: "Priere",
	_bAstro: "Astro Carter",
	_bPrinnyGod: "Prinny God",
	_bMarjoly: "Marjoly",
	_bBaal: "Tyrant Overlord Baal",
	_bPrinnyBaal: "Prinny Baal",
	_bZetta: "Zetta",
	_bAdell: "Adell",
	_bRozalin: "Rozalin",
	_bZombieKing: "Zombie King"
}

_dictEndings = {
	_endMidboss: "Midboss",
	_endFlonneTragedy: "Flonne Tragedy",
	_endEtnaHeroine: "Etna Heroine",
	_endDarkAssembly: "Dark Assembly",
	_endItemGod: "Item God",
	_endEarth: "Overthrowing Earth",
	_endNormal: "Normal",
	_endBest: "Best",
	_endEtnaNormal: "Normal Etna's",
	_endEtnaTyrant: "Beauty Tyrant Overlord Etna",	
}

_dictEpisodeNames = {
	0: "Prince of the Netherworld",
	1: "Prince of the Netherworld",
	2: "Enter Flonne",
	3: "A Hint of Kindness",
	4: "Gift From an Angel",
	5: "Etna's Secret",
	6: "Laharl's Challenge",
	7: "On Being an Overlord",
	8: "Reincarnation",
	9: "Captain Gordon, Defender of Earth",
	10: "Angels, Demons, and Humans",
	11: "Hero's Will, Overlord's Way",
	12: "War of the Netherworld, Part 1",
	13: "War of the Netherworld, Part 2",
	14: "What Lies Beyond the Battle",
	15: "Super Dimensional Etna",
	16: "Space Detective Etna",
	17: "Finale - Chronicles of Etnarnia",
	18: "Finale cont. - Chronicles of Etnarnia"
}
//#endregion

//#region Memory Accessors
//-Game
timeHours = word(0x97ff88)
timeMinutes = byte(0x97ff8a)
timeSeconds = byte(0x97ff8b)
timesCleared = word(0x97ffb6)

charCreation = byte(0x9c45b0)
itemRate = byte(0x9c45a4)

screenId = word(0x8e9de0)
musicId = byte(0x9c3fc8)

episode = byte(0x97ffb4)
prevEpisode = byte(0x97ffb5)

etnaModeAdd = bit5(0x9800a4)
function etnaMode(isEnding) {
	trigger = timesCleared >= 1
	if (isEnding == 0){
		trigger = trigger && etnaModeAdd == 1
	}
	else{
		trigger = trigger && prev(etnaModeAdd) == 1
	}
	return trigger
}

//-Area/Level/Map/Episode
//-area = byte(0xC6CE8)
//-level = byte(0xC6CE4)
map = byte(0x9c3fba)

//-Dark Assembly
function daOnDarkAssembly() => screenId == _scrDarkAssembly || screenId == _scrSwitchDarkAssembly
daMenuOption = dword(0x9dd688)
//-NewChar
newCharTierId = word(0x9ddd6c)
newCharBaseId = word(0x9ddd6e)
newCharCapability = byte(0x9dd6b8)
confirmNewChar = byte(0x8e9e00)

//-Battle
stageClear = tbyte(0x94d208)
function stageCleared() => prev(stageClear) == 0 && stageClear > 0
enemiesRemaining = byte(0x8e9c0e)
totalDamageDoneInJoin = tbyte(0x8e9bd0)
prevTotalDamageDoneInJoin = tbyte(0x8e9bd8)

geoPanelFinalChain = byte(0x9cac44)
geoPanelColorCombo = byte(0x9cac40)

//-Endings
allyKilled = bit0(0x9800cc)

//-Player
money = dword(0x980210)

//-Hospital
hpHospital = dword(0x980228)
spHospital = dword(0x980230)
revivedHospital = dword(0x9c3fa0)

//-Collections
firstMusicAddress = 0x9c4800
totalMusicRecords = 33
firstSongAddress = 0x9c4821
totalSongRecords = 8


//-Netherworld Records data
maxLevel = tbyte(0x9c459c)
enemiesKilled = tbyte(0x9c4594)
reincarnation = tbyte(0x9c45a0)
maxDamage = dword(0x9c4580)
totalDamage = dword(0x9c4584)

//#endregion

//#region Functions 
function inEpisodeLastMap(epNum) => map == _episodeLastMap[epNum]
function inTitleScreen() => high4(0x980121) == 0

//-Collections
function hospitalRewards(actual, target) {
	result = 0
	for index in range(0, target - 1){
		if (actual == 1){
			result = result + byte(0x9801d0 + index)
			
		}
		else {
			result = result + prev(byte(0x9801d0 + index))
					
		}
	}
	
	if (actual == 1) {
		return measured(result == target)
	}
	else {
		return result < target
	}
}

function haveMusic(address) => bit0(address) + bit1(address) == 2
function gotMusic(address) => prev(bit1(address)) == 0 && bit1(address) == 1 && bit0(address) == 1

function killedBoss(boss) {
	bossAddress = _bossesDict[boss]
	bossStatus = bit(bossAddress[1], bossAddress[0])
	return once(bossStatus == 1 && prev(bossStatus) == 0) && map == bossAddress[2] && never(map != bossAddress[2])
}

function gotEnding(end) {
	trigger = bit(_endingFlags[end][1], _endingFlags[end][0]) == 1
	
	if (end == _endMidboss){
		trigger = trigger && prev(bit(_endingFlags[end][1], _endingFlags[end][0])) == 0 && (inEpisodeLastMap(1) || inEpisodeLastMap(4) || inEpisodeLastMap(6) || inEpisodeLastMap(10))
	}
	if (end == _endFlonneTragedy){
		trigger = trigger && inEpisodeLastMap(3) && prev(musicId) == 0x64 && musicId == 0x68
	}
	if (end == _endEtnaHeroine){
		trigger = trigger && inEpisodeLastMap(5) && prev(musicId) == 0x64 && musicId == 0x67
	}
	if (end == _endDarkAssembly){
		trigger = trigger && map == _mSacredAltar - 1 && allyKilled == 1 && prev(musicId) == 0x00 && musicId == 0x68 && episode == 14
	}
	if (end == _endNormal){
		trigger = trigger && inEpisodeLastMap(14) && allyKilled == 1 && musicId == 0x65 && screenId == _scrNormal && episode == 14 && (prev(screenId) == 0xd0 || prev(screenId) == 0x14)
	}
	if (end == _endBest){
		trigger = inEpisodeLastMap(14) && allyKilled == 0 && prev(musicId) == 0x64 && musicId == 0x65 && screenId == _scrNormal && episode == 14
	}
	if (end == _endItemGod){
		trigger = trigger && inEpisodeLastMap(14) && allyKilled == 1 && prev(musicId) == 0x00 && musicId == 0x68 && screenId == _scrNormal && episode == 14
	}
	if (end == _endEarth){
		trigger = trigger && map == _bossesDict[_bAstro][2] && prev(musicId) == 0x00 && musicId == 0x66 && screenId == _scrNormal
	}
	if (end == _endEtnaNormal) {
		trigger = prev(bit(_endingFlags[end][1], _endingFlags[end][0])) == 0 && trigger && etnaMode(1) && inEpisodeLastMap(18) && episode == 18
	}
	if (end == _endEtnaTyrant) {
		trigger = trigger && etnaMode(1) && map == _mLordOfTerror && prev(musicId) == 0x00 && musicId == 0x67 && screenId == _scrNormal
	}
	
	
	return trigger
}

function etnasDiary(target) {
	address = 0x98013a
	
	result = bit5(address) + bit6(address) + bit7(address) + bitcount(address + 1) + bit0(address + 2) + bit1(address + 2)
	
	return measured(result == target) && bit2(address + 2) == 1 && prev(bit3(address + 2)) == 0 && bit3(address + 2) == 1	
}

function newCharFlow() => 
		once(prev(daMenuOption) == _daProposal) //1f
	 && once(daMenuOption == _daNewCharCapability)	//b
	 && once(prev(daMenuOption) == _daNewCharAllocatePoints
			&& daMenuOption == _daNewCharFinish) //e->f
	 && prev(confirmNewChar) == 0 && confirmNewChar == 1

//#endregion

//#region Achievement logic
function episodeAchievement(epNum, title, points){	
    description = format("Finish episode {0}", epNum)
	trigger = episode == epNum + 1 && inEpisodeLastMap(epNum) 
	
	if (epNum == 1 || epNum == 15) {
		trigger = trigger && (prev(episode) == epNum || prev(episode) == 0)
	}
	else{
		trigger = trigger && prev(episode) == epNum
	}
	
	if (epNum >= 15){
		trigger = trigger && etnaMode(0)
		description = format("Finish episode {0} in Etna's story (no code)", epNum - 14)
	}
            
    achievement(title = title, points = points, description = description, trigger = trigger)	
}

function maxDamageAchievement(damage, title, points){	
    description = format("Deal {0} to a single enemy", damage)
	
	trigger = totalDamageDoneInJoin >= damage			
			&& prevTotalDamageDoneInJoin == prev(totalDamageDoneInJoin)	
			&& screenId == _scrBattle			
            
    achievement(title = title, points = points, description = description, trigger = trigger)	
}

function maxDamageAchievementV2(damage, title, points){	
    description = format("Deal {0} to a single enemy", damage)
	
	trigger = prev(maxDamage) < damage			
			&& maxDamage >= damage
			&& screenId == _scrBattle			
            
    achievement(title = title, points = points, description = description, trigger = trigger)	
}

function killedEnemyAchievement(enemies, title, points){
    description = format("Defeat {0} enemies", enemies)
	
	trigger = enemiesKilled >= enemies && prev(enemiesKilled) > 0 && prev(enemiesKilled) < enemies && prev(enemiesKilled) >= enemies - 9 && screenId == _scrBattle	
            
    achievement(title = title, points = points, description = description, trigger = trigger)	
}

function maxLevelAchievement(level, title, points){
    description = format("Reach level {0}", level)
	
	trigger = maxLevel == level && prev(maxLevel) > 2000 && screenId == _scrBattle	
            
    achievement(title = title, points = points, description = description, trigger = trigger)	
}

function reincarnateAchievement(reincarnateTimes, title, points){
	description = "Performed your first transmigration"
	
	if (reincarnateTimes > 1){
		description = format("Performed {0} transmigrations with the same character", reincarnateTimes)
	}
    	
	trigger = reincarnation == reincarnateTimes && prev(reincarnation) == reincarnateTimes - 1 && screenId == _scrDarkAssembly	
            
    achievement(title = title, points = points, description = description, trigger = trigger)	
}

function geoPanelAchievement(title, points){
	description = "Complete a full Geopanel color chain"
		    	
	trigger = geoPanelFinalChain == 6 && prev(geoPanelColorCombo) == geoPanelFinalChain && screenId == _scrBattle	
            
    achievement(title = title, points = points, description = description, trigger = trigger)	
}

function hospitalAchievement(title, points){	
    description = "Get all the prizes from the Hospital"
	
	trigger = screenId == _scrHospital && hpHospital >= 200000 && spHospital >= 50000 && revivedHospital >= 300 && hospitalRewards(1, 33) && hospitalRewards(0, 33)
            
    achievement(title = title, points = points, description = description, trigger = trigger)
}

function newCharAchievement(char, tier, title, points) {
	
	trigger = daOnDarkAssembly() && never(!daOnDarkAssembly() || daMenuOption == _daProposal)
	
	stepsConditions = newCharFlow()
					
	charConditions = always_true()
	
	if (char == _brawlerM || char == _warriorM || char == _clericM || char == _skull) 
	{
		charConditions = charConditions && 
		(newCharBaseId == char && newCharTierId == char + tier) || 
		(newCharBaseId == char + 10 && newCharTierId == char + tier + 10)
		description = format("Create a new {0} or {1} character", _dicCharNames[char][tier], _dicCharNames[char + 10][tier])
	}
	else {
		charConditions = charConditions && newCharBaseId == char &&  newCharTierId == char + tier
		description = format("Create a new {0} character", _dicCharNames[char][tier])
	}
	
	
	trigger = trigger && stepsConditions && charConditions
            
    achievement(title = title, points = points, description = description, trigger = trigger)
}

function geniusCharAchievement(title, points) {
	description = "Create or Reincarnate into a Genius character"
	
	trigger = daOnDarkAssembly() && never(!daOnDarkAssembly() || daMenuOption == _daProposal)
	
	stepsConditions = newCharFlow()
	
	trigger = trigger && stepsConditions && newCharCapability == 5
            
    achievement(title = title, points = points, description = description, trigger = trigger)
}

function everyMusic(type, title, points){	
	conditionsArray = []
	altConditions = always_false()
	
	if (type == 0){
		description = "Buy every BGM from the Music Shop"
		totalR = totalMusicRecords
		firstR = firstMusicAddress
	}
	else {
		description = "Buy every Song from the Music Shop"
		totalR = totalSongRecords
		firstR = firstSongAddress
	}
	
	for index in range(0, totalR - 1){
		array_push(conditionsArray, once(haveMusic(firstR + index)))
		altConditions = altConditions || gotMusic(firstR + index)
	}
	
	
	array_push(conditionsArray, always_false())
	
	trigger = screenId == _scrMusicShop && measured(tally(length(conditionsArray) - 1, conditionsArray)) && altConditions
	
	achievement(title = title, points = points, description = description, trigger = trigger)
}

function everyItem(type, title, points){
	description = format("Get every type of {0}", _dicItemType[type])
	
	trigger = screenId == _scrBattle
	if (type == _icOrb || type == _icMuscle || type == _icSymbol){
		trigger = trigger || screenId == _scrHospital
	}
	else {
		trigger = trigger || screenId == _scrWeaponShop
	}
	
	conditionsArray = []
	altConditionsArray = []
	
	itemTypes = _itemsDict[type]
		
	for itemType in range(0, itemTypes[1] - 1){
		array_push(conditionsArray, once(low4(itemTypes[0] + itemType) > 0))
		array_push(altConditionsArray, once(prev(low4(itemTypes[0] + itemType)) > 0))
	}
		
	array_push(conditionsArray, always_false())
	array_push(altConditionsArray, always_false())
	
	trigger = trigger && measured(tally(length(conditionsArray) - 1, conditionsArray)) && (always_false() || (never(tally(length(altConditionsArray) - 1, altConditionsArray))))	
	
	achievement(title = title, points = points, description = description, trigger = trigger)
}

function killedBossAchievement(boss, title, points){
	description = format("Defeat {0}", _dictBosses[boss])
	
	trigger = screenId == _scrBattle
	
	if (boss == _bZombieKing) {
		trigger = trigger && map == _mCaveOrdeal5 && stageCleared()
	}
	else{
		if (boss == _bItemGeneral || boss == _bItemKing || boss == _bItemGod || boss == _bItemGod2){
			trigger = trigger && killedBoss(boss)
		}
		else{
			trigger = trigger && killedBoss(boss) && stageCleared()
		}		
	}
	if (boss == _bBaal){
		trigger = trigger && etnaModeAdd == 0
		description = description + " in Normal/Laharl mode"
	}
            
    achievement(title = title, points = points, description = description, trigger = trigger)
}

function endingAchievement(end, title, points){
	description = format("Get {0} Ending", _dictEndings[end])
	if (end == _endEtnaTyrant){
		description = "Defeat Baal in Etna mode (no code)"
	}
	
	trigger = gotEnding(end)
            
    achievement(title = title, points = points, description = description, trigger = trigger)
}

function gargantuaAchievement(maxLvl, title, points){
	description = format("Destroy every cannon on Gargantua Deck - Point Alpha III (Max level {0} on Netherworld Records)", maxLvl)
	
	trigger = map == _mPonintAlphaIII && maxLevel <= maxLvl && 
	screenId == _scrBattle && enemiesRemaining == 0 && stageCleared()
            
    achievement(title = title, points = points, description = description, trigger = trigger)
}
function etnasDiaryAchievement(title, points){
	description = "Read all of Etna's memories and get a gift"
	
	trigger = map == _mCastleRoom && etnasDiary(13)
            
    achievement(title = title, points = points, description = description, trigger = trigger)
}
//#endregion

//#region Achievements (821)
//-Finish each episode (65)
//- Episode 1  (5)
episodeAchievement(1, "Prince of the Netherworld", 5)
//- Episode 2  (5)
episodeAchievement(2, "Enter Flonne", 5)
//- Episode 3  (5)
episodeAchievement(3, "A Hint of Kindness", 5)
//- Episode 4  (5)
episodeAchievement(4, "Gift From an Angel", 5)
//- Episode 5  (5)
episodeAchievement(5, "Etna's Secret", 5)
//- Episode 6  (5)
episodeAchievement(6, "Laharl's Challenge", 5)
//- Episode 7  (5)
episodeAchievement(7, "On Being an Overlord", 5)
//- Episode 8  (5)
episodeAchievement(8, "Reincarnation", 5)
//- Episode 9  (5)
episodeAchievement(9, "Captain Gordon, Defender of Earth", 5)
//- Episode 10 (5)
episodeAchievement(10, "Angels, Demons, and Humans", 5)
//- Episode 11 (5)
episodeAchievement(11, "Hero's Will, Overlord's Way", 5)
//- Episode 12 (5)
episodeAchievement(12, "War of the Netherworld", 5)
//- Episode 13 (5)
episodeAchievement(13, "Invasion of the Planet Snatchers", 5)

//-Finish each Etna episode (15)
//- Episode 1  (5) Super Dimensional Etna
episodeAchievement(15, "Super Dimensional Etna", 5)
//- Episode 2  (5) Space Detective Etna
episodeAchievement(16, "Space Detective Etna", 5)
//- Episode 3  (5) Chronicles of Etnarnia
episodeAchievement(17, "Chronicles of Etnarnia", 5)
//- Episode 4  (5) //Last chapter, dont give)

//-Endings (105)
//-Dark Assembly (10)
endingAchievement(_endDarkAssembly, "Forever Lost", 10)
//-Etna Heroine (10)
endingAchievement(_endEtnaHeroine, "Twisted Heroine Etna", 10)
//-Flone Tragedy (10)
endingAchievement(_endFlonneTragedy, "A Tragic Sacrifice", 10)
//-Best ending (25)
endingAchievement(_endBest, "Ruler of the Netherworld", 25)
//-Item God ending (10)
endingAchievement(_endItemGod, "The Runaway Prince", 10)
//-Midboss Ending (5)
endingAchievement(_endMidboss, "The Dark Adonis", 5)
//-Normal Ending (10)
endingAchievement(_endNormal, "My Life for Someone Dear", 10)
//-Overthrowing Earth Ending (10)
endingAchievement(_endEarth, "Ruler of the Earth", 10)
//-Normal Etna Ending
endingAchievement(_endEtnaNormal, "Demonic Vassal Etna", 10)
//-Etna Tyrant Ending
endingAchievement(_endEtnaTyrant, "Beauty Queen Overlord Etna", 25)

//-General (93)
//-Reach Customer Rank 40 (25)

//-Buy every music from the Music Shop (10)
everyMusic(0, "Low-wage Orchestra", 10)
everyMusic(1, "Expensive As Hell", 25)

//-Claim all prizes from the Hospital (10)
hospitalAchievement("Frequent Casualty", 10)

//-Reach Dark Assembly level 9 (25)
//-Pass Exp x3 (5)
//-Pass Bonus Up (5)
//-Pass Prinny Day (5)
//-Pass your first request by vote (1)
//-Pass your first request by force (2)
//-Raise Military Funds (5)

//-Item World  (25)
//-Defeat item General (5)
killedBossAchievement(_bItemGeneral, "Top Percentage of Grunts", 5)
//-Defeat Item King (10)
killedBossAchievement(_bItemKing, "King of the Item Hill", 5)
//-Defeat Item God (10)
killedBossAchievement(_bItemGod, "Legendary Item Being", 10)
//-Defeat Item God 2 (25)
killedBossAchievement(_bItemGod2, "There's No 1 Without 2", 25)

//-Bosses (35)
//-Prinny God (10) Prinny Land
killedBossAchievement(_bPrinnyGod, "The Golden Penguin", 10)
//-Zombie King (10) Cave of Ordeal
killedBossAchievement(_bZombieKing, "The Lonely Zombie", 10)

//-Defeat Tyrant Baal (25)
killedBossAchievement(_bBaal, "Laharl, the Lord of Terror", 25)
//-Defeat Uber Prinny Baal (10)
killedBossAchievement(_bPrinnyBaal, "What Remains of Tyrant Baal", 25)

//-Battle (25)
gargantuaAchievement(100, "Battleship Gargantua", 10)

//-Get a full Geo Panel Chain (5)
geoPanelAchievement("Colors of the Netherworld", 5)

//-Kill 500 enemies (5)
killedEnemyAchievement(500, "Monster Killer", 5)
//-Kill 1000 enemies (10)
killedEnemyAchievement(1000, "Demon Killer", 10)

//-Deal 100K damage (5)
maxDamageAchievementV2(100000, "That Must Have Hurt", 5)
//-Deal 10M damage (10)
maxDamageAchievementV2(10000000, "Overkill", 25)

//-Reach Lv9999 (25)
maxLevelAchievement(9999, "It's Almost 10000!", 25)

//-Reincarnate for the first time (5)
reincarnateAchievement(1, "Reborn!", 5)
//-Reincarnate 10 times (10)
reincarnateAchievement(10, "Rise and Shine", 10)

//-Obtain Ultimus (25) Get Every First
everyItem(_icFist, "One Punch Demon", 25)
//-Obtain Yoshitsuna (25) Get Every Sword
everyItem(_icSword, "The Definitive Blade", 25)
//-Obtain Glorious (25) Get Every Lance
everyItem(_icLance, "Glorious Maximus", 25)
//-Obtain Galaxy (25) Get Every Bow
everyItem(_icBow, "Sagittarius", 25)
//-Obtain Etoile (25) Get Every Gun
everyItem(_icGun, "Super Star Shooter", 25)
//-Obtain Apocalypse (25) Get Every Axe
everyItem(_icAxe, "World Destroyer", 25)
//-Omniscient Staff (25) Get Every Staff
everyItem(_icStaff, "Absolute Knowledge", 25)
//-Get Every monster weapon (25)
everyItem(_icMonsterWeapon, "Nemesis MK-Type", 25)

//-Get Every Armor (25)
everyItem(_icArmor, "The Best Offense is a Good Defense", 25)

//-Get Every Belt (10)
everyItem(_icBelt, "Harder, Better, Master, Stonger", 10)

//-Get Every Shoe (10) (Hyperdrive)
everyItem(_icShoe, "Gotta Go Hiperdrive", 10)

//-Get Every Orb (5) (Just for Universal Orb because the rest are from the Hospital)
everyItem(_icOrb, "Artifact of Mana", 5)

//-Get Every Glasses (10)
everyItem(_icGlasses, "HyperVision", 10)

//-Get Every Muscle (5)
everyItem(_icMuscle, "Onegai Muscle", 5)

//-Get Every ETC/EX (10)
everyItem(_icEX, "Costume Party", 10)

//-Get Every Symbol (5)
everyItem(_icSymbol, "Relics from the Netherworld", 5)

//-Get Every Usable (5)
everyItem(_icUsable, "Sweetery and Witchcraft", 5)

//-Etna (40)
//-Enter Etna's chamber

//-Read all of Etna's diary entries (5)
etnasDiaryAchievement("My Memories", 5)

//-Characters (193)
//-Create Distinguished char (5)
//-Create Genius char (5)
geniusCharAchievement("Demon Prodigy", 5)

//-Eternal Fist (10) Brawler
//-newCharAchievement(_brawlerM, 5, "Brawler", 5)

//-Cosmic Hero (10) Warrior
//-newCharAchievement(_warriorM, 5, "Warrior", 5)

//-Create Angel (10)
newCharAchievement(_angel, 0, "Valkyrie Profile", 10)
//-Create Paladin (10)

//-Unlock Archer (3)
newCharAchievement(_archer, 0, "Children of Nature", 3)
//-Freischutz (10)

//-Knight (5)
newCharAchievement(_knight, 0, "Magic Knight Braveheart", 5)
//-Space Knight (10)

//-Unlock Majin (25)
newCharAchievement(_majin, 0, "The Ultimate Warrior", 25)

//-Create Divine Majin (10)

//-Ninja (5)
newCharAchievement(_ninja, 0, "Nin-nin-nin", 5)
//-Shinobi (10)

//-Savior (10)
//-newCharAchievement(_clericM, 5, "Our Savior", 10)

//-Star Mage (3)
newCharAchievement(_skull, 3, "Starry Magick", 3)
//-Prism Mage (5)
newCharAchievement(_skull, 4, "Multi Flavored Mage", 5)
//-Galaxy Mage (10)
newCharAchievement(_skull, 5, "Galaxy M", 10)

//-EDF Soldier (10)
newCharAchievement(_EDFSoldier, 0, "Not-so-Big Daddy", 10)
//-Space Marine (10)
//-newCharAchievement(_EDFSoldier, 5, "Not-so-Big Daddy", 5)

//-Ronin (5)
newCharAchievement(_ronin, 0, "Lady Samurai", 5)
//-Shogun (10)

//-Scout (4)
newCharAchievement(_scout, 0, "Geo Shooter", 4)
//-Lord (10)

//-Thief/Rouge (4)
newCharAchievement(_thief, 0, "Five Finger Discount", 4)
//-Space Pirate (10)

//-Adell (10)
killedBossAchievement(_bAdell, "Red Haired Demon Buster", 10)
//-Marjoly (10)
killedBossAchievement(_bMarjoly, "Rated M for Malevolent", 10)
//-Priere (10)
killedBossAchievement(_bPriere, "The Maiden of Darkness", 10)
//-Rozalin (10)
killedBossAchievement(_bRozalin, "Busty Demon Princess", 10)
//-Zetta (10)
killedBossAchievement(_bZetta, "Bad-ass Overlord", 25)

//#endregion

//#region Leaderboards
//-Less turns on each level

//#endregion

//#region Rich Presence
rich_presence_conditional_display(inTitleScreen(), "In the Title Screen")

rich_presence_conditional_display(etnaModeAdd == 1, "{0} - [🕰️ {1}:{2}] [HL: {3}] [NG+ {4}] [MaxLv {5}] [👫 {6}] [🍮 {7}]",
rich_presence_lookup("Episode", episode, _dictEpisodeNames),
rich_presence_value("val", timeHours),
rich_presence_value("val", timeMinutes),
rich_presence_value("val", money),
rich_presence_value("val", timesCleared),
rich_presence_value("val", maxLevel),
rich_presence_value("val", charCreation),
rich_presence_value("val", itemRate))

rich_presence_display("Episode {0}: {1} - [🕰️ {2}:{3}] [HL: {4}] NG+ {5}] [MaxLv {6}] [👫 {7}%] [🍮 {8}%]", 
rich_presence_value("val", episode),
rich_presence_lookup("Episode", episode, _dictEpisodeNames),
rich_presence_value("val", timeHours),
rich_presence_value("val", timeMinutes),
rich_presence_value("val", money),
rich_presence_value("val", timesCleared),
rich_presence_value("val", maxLevel),
rich_presence_value("val", charCreation),
rich_presence_value("val", itemRate))


//#endregion

