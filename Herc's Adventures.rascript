// Herc's Adventures
// #ID = 16237

//#region Variables
//-Characters
_chAtlanta = 0
_chHerc = 1
_chJson = 2
_chNone = 0xff

//-Maps
_mTitle = 0
_mArea1 = 0xb   //-1 HC
_mArea2 = 0x10  //-1HC
_mLerna = 0x2
_mPBoar = 0x1  //-2HC, 1 from Boar
_mArea3 = 0xC //-Road to Elis
_mElis = 0xD
_mSparta = 0xa
_mArea4 = 0x7 //-Road to Athens
_mEntryAthens = 0xE
_mPoseidon = 0x5
_mMinotaur = 0x9
_mTalos = 0xf
_mEgypt = 0x6
_mHydra = 0x17
_mEIslands = 0x26
_mCirce = 0x19
_mMedusa = 0x3
_mLamiaBaby = 0x18
_mAthens = 0x11
_mAmazon = 0x12
_mIceLands = 0x4
_mMacedonia = 0x1b
_mPBoar2 = 0x22
_mCrete = 0x1a
_mHydra = 0x17
_mIolcus = 0x1e
_mHadesLair = 0x1f
_mHarpies = 0x20
_mColchis = 0x21
_mSnake = 0x23
_mCerberus = 0x14
_mCerberus2 = 0x13
_mHades = 0x27
_mCredits = 0x29
_mUnderworld1 = 0x2d
_mUnderworld2 = 0x2e
_mUnderworld3 = 0x2f
_mUnderworld4 = 0x30
_mUnderworld5 = 0x31
_mGameOver = 0x32

//-Items
_iHotPepper = 0x9
_iTrash = 0xa
_iBomb = 0x8
_iTaboo = 0xd
_iSpear = 0x4
_iFrost = 0x7
_iThunder = 0x1
_iStone = 0x2

_icMagicPotion = 0x5
_icTrap = 0xa
_icVulture = 0x2
_icGyro = 0x9
_icCowBaloon = 0x1
_icPandoraBox = 0xc

//-Key
_kUp = 4
_kDown = 6
_kLeft = 7
_kRight = 5

//-Addresses
_aBombs = 0x0c4afe
_aTrash = 0x0c4b02
_aSpears = 0x0c4af6
_aTaboo = 0x0c4b08
_aHotPepper = 0x0c4b00
_aVulture = 0x0c4b1c
_aFrogs = 0x0c4b1e
_aGyros = 0x0c4b2a
_aBoar = 0x0c4b36
_aFrost = 0x0c4afc
_aThunder = 0x0c4af0
_aCowBaloon = 0x0c4b1a
_aMagicPotion = 0x0c4b22
_aStone = 0x0c4af2
_aPandoraBox = 0x0c4b30
_aRayGun = 0x0c4b06
_aLipstick = 0x0c4b0e
_aTrident = 0x0c4af8
_aBaby = 0x0c4b24
_aGreenEgg = 0x0c4b28
_aMatchsicks = 0x0c4b0c

//-Spritesheets
_ssMinotaur = 0x26 //-Minotaur
_ssElectrocuted = 0x11 //-Boar
_ssMedusa = 0x2b
_ssSnake = 0x48

//-Animations
_anPetrified = 0x7a
_anElectrocuted = 0x7e //-0x80 and 0x7f also work
_anKnocked = 0xf2
_anKnockedMinoHerc = 0xf2 //-0x5c by the amazons
_anKnockedMinoAtlanta = 0x11e
_anKnockedMinoJson = 0x130
_anPetrifiedHerc = 0x71
_anPetrifiedAtlanta = 0x7a
_anPetrifiedJson = 0x83
_anKnockedSnakeAtlanta = 0x86
_anKnockedSnakeHerc = 0x7d
_anKnockedSnakeJson = 0x8f

//-Perspectives
_psEaten = 0x1d1

//-Boss States
_bNormal = 0x0f39
_bAboutDie = 0x2f39
_bDead = 0x2f38

_bAboutDieHydra = 0x0f39
_bDeadHydra = 0x0f38

//#endregion

//#region Dictionaries
	//-Item, cost, quantity, map
_dicShoppingList = {
	0: [_aBombs, 3, 20, _mArea1],
	1: [_aTaboo, 6, 30, _mArea1],
	2: [_aMatchsicks, 2, 20, _mCrete]	
}

_dicPickingList = {
	_mArea3: [[_aFrost, 99], [_aThunder, 10]],
	_mCirce: [[_aMagicPotion, 1], [_aThunder, 10], [_aStone, 99]],
	_mArea4: [[_aPandoraBox, 1]],
	_mEntryAthens: [[_aVulture, 1], [_aGyros, 1]],
	_mMinotaur: [[_aTrash, 50]],
	_mTalos: [[_aThunder, 10]],
	_mEgypt: [[_aCowBaloon, 10]],
	_mEIslands: [[_aMagicPotion, 1], [_aPandoraBox, 1],  [_aTrident, 20], [_aTaboo, 1]],
	_mAmazon: [[_aRayGun, 1], [_aTaboo, 1], [_aGreenEgg, 1], [_aPandoraBox, 1]],
	_mHarpies: [[_aGyros, 1]],
	_mCerberus2: [[_aRayGun, 1], [_aPandoraBox, 1], [_aBombs, 1], [_aRayGun, 1], [_aThunder, 1], [_aMatchsicks, 1]]
}

_dictBosses = {
	_mPBoar: "Caledonian Boar",
	_mMedusa: "Medusa",
	_mMinotaur: "Minotaur",
	_mTalos: "Talos",
	_mPBoar2: "Tundra Boar",
	_mHydra: "Hydra",
	_mSnake: "Giant Snake",
	_mCerberus: "Cerberus",
	_mHades: "Hades"
}

_dictChar = {
	_chAtlanta: "Atlanta",
	_chHerc: "Hercules",
	_chJson: "Jason"
}
_dictDummy = {
	0: ""
}

//#endregion

//#region Memory Accessors
mainChar = byte(0x0c759c)
secChar = byte(0x0c75a0)
playing = byte(0x0b6f78)
characterP1 = byte(0x0b6f80)
characterP2 = byte(0x0b6f84)
P1DirKeyAdd = 0x0bc352

//-Player 1
health = word(0x0c4ae0)
maxHealth = word(0x0c4ae2)
stamina = word(0x0c4ae4)
maxStamina = word(0x0c4ae6)
gold = byte(0x0c4ae8)

spritesheetP1 = word(0x0d67be)
animationP1 = word(0x0d67c0)
carryingP1 = byte(0x0d67c1) //-Also 1 while talking
perspectiveP1 = word(0x0d67d0)
zCoord = word(0x0d67c6)
swim = byte(0x0d67e7)

keys = word(0x0c4b3a)
hKey = word(0x0c4b3c)
uKey = word(0x0c4b3e)
aKey = word(0x0c4b40)
pKey = word(0x0c4b42)
dKey = word(0x0c4b44)

lipstick = byte(_aLipstick)
hurtFlag = byte(0x0c4bb6)
boarTraps = byte(0x0c4c48)

pause = byte(0x0d6750)
xCoord = dword(0x0cc8d0) //-Initial Coordinates (1236, 1eaf)
yCoord = dword(0x0cc8d4)
mapId = byte(0x0d8510)
underworld = byte(0x0c46d4) //-5 last chance
isPig = byte(0x1fdf84)

bossPointer = tbyte(0x1ee7b0) //-No offset
heraPointer = tbyte(0x0eb698)
//#endregion

//#region Functions
function isPlaying() => playing == 1
function inTitle() => inMap(_mTitle)
function bossStarted() => prev(word(bossPointer)) != _bNormal 
					&& word(bossPointer) == _bNormal
					
function bossDied(map){
	vAboutDie = _bAboutDie
	vDead = _bDead
	if (map == _mHydra){
		vAboutDie = _bAboutDieHydra
		vDead = _bDeadHydra
	}
	
	return prev(word(bossPointer)) == vAboutDie 
					&& word(bossPointer) == vDead
}
					
function inMap(map) => mapId == map
function visitUnderworld(umap) {
	if (umap == _mCerberus){
		switchMaps(_mHadesLair, _mCerberus)
	}
	else{
		return inMap(umap) && prev(underworld) < underworld
	}
}
function switchMaps(oMap, nMap) => prev(mapId) == oMap
									&& inMap(nMap)
function preventMapChange(map){
	if (map == _mCerberus){
		return never(!inMap(map) && !inMap(_mCerberus2))
	}
	else{
		return never(!inMap(map))
	}
} //-prev(mapId) == mapId && inMap(map)

function eaten() => perspectiveP1 == _psEaten
function electrocuted() => animationP1 == _anElectrocuted
function petrified() => (spritesheetP1 == _ssMedusa
						&& characterP1 == _chAtlanta 
						&& animationP1 == _anPetrifiedAtlanta) 
						||
						(spritesheetP1 == _ssMedusa
						&& characterP1 == _chHerc 
						&& animationP1 == _anPetrifiedHerc) 
						||
						(spritesheetP1 == _ssMedusa
						&& characterP1 == _chJson 
						&& animationP1 == _anPetrifiedJson)
function knockedMinotaur() =>
						(spritesheetP1 == _ssMinotaur 
						&& characterP1 == _chAtlanta 
						&& animationP1 == _anKnockedMinoAtlanta) 
						||
						(spritesheetP1 == _ssMinotaur
						&& characterP1 == _chHerc 
						&& animationP1 == _anKnockedMinoHerc) 
						||
						(spritesheetP1 == _ssMinotaur
						&& characterP1 == _chJson 
						&& animationP1 == _anKnockedMinoJson)
						
function neverKnockedSnake(times) =>
						never(once(bossStarted()) && repeated(times, (spritesheetP1 == _ssSnake 
						&& characterP1 == _chAtlanta 
						&& animationP1 == _anKnockedSnakeAtlanta
						&& prev(animationP1) == _anKnockedSnakeAtlanta - 1)))
						||
						never(once(bossStarted()) && repeated(times, (spritesheetP1 == _ssSnake
						&& characterP1 == _chHerc 
						&& animationP1 == _anKnockedSnakeHerc
						&& prev(animationP1) == _anKnockedSnakeHerc - 1)))
						||
						never(once(bossStarted()) && repeated(times, (spritesheetP1 == _ssSnake
						&& characterP1 == _chJson 
						&& animationP1 == _anKnockedSnakeJson
						&& prev(animationP1) == _anKnockedSnakeJson - 1)))

function finishedHeraCow() => hKey == prev(hKey) + 1
function finishedLipstick() => prev(lipstick) == lipstick + 1

//-prev(byte(heraPointer+0x14)) == 3 && byte(heraPointer+0x14) == 4

//-0 None, 1: Quest given, 2: Insisted, 3: Cow given 4: Bye
function heraEvent() => byte(heraPointer + 0x14) 

function isSwimming() => swim == 2
function gotBaby(bb) => prev(byte(_aBaby)) == bb - 1 && byte(_aBaby) == bb

function changedHealth(he) => prev(health) - health > he
function maxDamage(dam, start) {
	conditions = []
	for index in range(0, 27){
		array_push(conditions, start && changedHealth(index))
	}
	return tally(dam + 1, conditions)
}

function keyPressed(key) => bit(key, P1DirKeyAdd) == 0
function paused() => pause == 1
function notLoading() => prev(playing) == 1
						&& prev(mapId) != _mTitle
						&& isPlaying()
						
function hasSpecialKey() => hKey + pKey + aKey + dKey + uKey > 0

//#endregion

//#region Achievement logic
function BuyItemAchievement(iShop, title, description, points){

	shopping = _dicShoppingList[iShop]	
	itemAddress = word(shopping[0])
	
	trigger = isPlaying()
	&& never (mapId != shopping[3])
	&& once(prev(gold) == gold + shopping[1])
	&& itemAddress == prev(itemAddress) + shopping[2]
	
	if (shopping[0] == _aTaboo){
		trigger = trigger && prior(mapId) == 0
	}	
	
    achievement(title = title, points = points, description = description, trigger = trigger)	
}

function FoundItemAchievement(iShop, title, description, points){

	shopping = _dicShoppingList[iShop]
	itemAddress = word(shopping[0])
	
	trigger = isPlaying()
	&& inMap(shopping[3])	
	&& itemAddress == prev(itemAddress) + shopping[2]
	
    achievement(title = title, points = points, description = description, trigger = trigger)	
}

function PickItemsAchievement(iPick, title, description, points){

	picking = _dicPickingList[iPick]
	
	trigger = isPlaying()
	&& never (mapId != iPick)
	
	for item in picking {
		itemAddress = word(item[0])
		
		trigger = trigger && 
		once(itemAddress > prev(itemAddress))//- + item[1])
	}
			
    achievement(title = title, points = points, description = description, trigger = trigger)	
}

function PickItemsPlusAchievement(id, iPick, title, description, points){

	picking = _dicPickingList[iPick]
	
	trigger = isPlaying()
	&& never (mapId != iPick)
	
	subTrigger = always_true()
	
	for item in picking {
		itemAddress = word(item[0])
		
		subTrigger = subTrigger && 
		once(itemAddress > prev(itemAddress))
	}
	
	coordTrigger = xCoord >= 0x1e1d && xCoord <= 0x1e1f && yCoord >= 0x314a && yCoord <= 0x3167
	
	trigger = trigger && ((subTrigger) || (coordTrigger))
			
    achievement(title = title, points = points, description = description, trigger = trigger, id = id)	
}

function PickMoneyAchievement(map, money, title, description, points){

	trigger = isPlaying()
			&& never (mapId != map)
			&& repeated(money, gold > prev(gold))
			
    achievement(title = title, points = points, description = description, trigger = trigger)	
}

function PickUfoAchievement(title, description, points){
	itemAddress = word(_aThunder)
	
	trigger = isPlaying()
				&& inMap(_mEgypt)
				&& itemAddress > prev(itemAddress)
				&& yCoord < 0x29a0	
			
    achievement(title = title, points = points, description = description, trigger = trigger)	
}

function PickHeartAchievement(map, title, description, points){
	
	trigger = isPlaying()
				&& maxHealth == prev(maxHealth) + 10
				&& inMap(map)
	
    achievement(title = title, points = points, description = description, trigger = trigger)	
}

function PickLastItemsAchievement(iPick, title, description, points){

	picking = _dicPickingList[iPick]
	
	trigger = isPlaying()
			&& never (mapId != iPick)
	
	for item in picking {
		itemAddress = word(item[0])
		
		trigger = trigger && 
		once(itemAddress > prev(itemAddress))
	}
	
	trigger = trigger && once(maxHealth == prev(maxHealth) + 10)
			
    achievement(title = title, points = points, description = description, trigger = trigger)	
}

function PigBoarAchievement(title, points){

	description = "Pick up Thunderbolt and a Heart Container while in Pig form"
	itemAddress = word(_aThunder)
	
	trigger = isPlaying()
	&& never(isPig != 1)
	&& once(itemAddress == prev(itemAddress) + 10)
	&& once(maxHealth == prev(maxHealth) + 10)
	&& inMap(_mPBoar)
	
    achievement(title = title, points = points, description = description, trigger = trigger)	
}

function BobbyAchievement(title, points){

	description = "Pick up Ray Gun and a Heart Container after giving Bobby a buck"
	itemAddress = word(_aRayGun)
	
	trigger = isPlaying()
	&& once(itemAddress > prev(itemAddress))
	&& once(maxHealth == prev(maxHealth) + 10)
	&& never(mapId != _mEIslands)
	
    achievement(title = title, points = points, description = description, trigger = trigger)	
}

function BossAchievement(map, title, points){

	description = format("Defeat {0}", _dictBosses[map])

	trigger = isPlaying()
	&& bossDied(map)
	&& preventMapChange(map)
	
    achievement(title = title, points = points, description = description, trigger = trigger)
}

function UnderworldEndAchievement(times, title, points){

	if (times == 0){
		description = "Finish the game without dying"
	}
	else {
		description = "Reach the depths of the Underworld and finish the game"
	}
	
	trigger = isPlaying()
	&& bossDied(_mHades)
	&& preventMapChange(_mHades)
	&& underworld == times
	
    achievement(title = title, points = points, description = description, trigger = trigger)
}

function CBoarBossAchievement(map, title, points){

	description = format("Defeat the {0} without being eaten or electrocuted", _dictBosses[map])

	trigger = isPlaying()
	&& trigger_when(bossDied(map))
	&& preventMapChange(map)
	&& once(bossStarted())
	&& never(eaten() || electrocuted())
	
    achievement(title = title, points = points, description = description, trigger = trigger)
}

function CMedusaBossAchievement(map, title, points){

	description = format("Defeat {0} without being petrified", _dictBosses[map])

	trigger = isPlaying()
	&& trigger_when(bossDied(map))
	&& preventMapChange(map)
	&& once(bossStarted())
	&& never(petrified())
	
    achievement(title = title, points = points, description = description, trigger = trigger)
}

function CMinotaurBossAchievement(map, title, points){

	description = format("Defeat the {0} without being knocked down", _dictBosses[map])

	trigger = isPlaying()
	&& trigger_when(bossDied(map))
	&& preventMapChange(map)
	&& once(bossStarted())
	&& never(knockedMinotaur())
	
    achievement(title = title, points = points, description = description, trigger = trigger)
}

function CSnakeBossAchievement(map, title, points){

	description = format("Defeat the {0} without being knocked down more than 3 times", _dictBosses[map])

	trigger = isPlaying()
	&& trigger_when(bossDied(map))
	&& preventMapChange(map)
	&& once(bossStarted())
	&& neverKnockedSnake(4)
	
    achievement(title = title, points = points, description = description, trigger = trigger)
}

function CHydraBossAchievement(map, title, points){

	description = format("Defeat the {0} without using more than 2 Fire Spears", _dictBosses[map])

	trigger = isPlaying()
	&& trigger_when(bossDied(map))
	&& preventMapChange(map)
	&& once(bossStarted())
	&& never(once(bossStarted()) && repeated(3, prev(word(_aMatchsicks)) > word(_aMatchsicks)))
	
    achievement(title = title, points = points, description = description, trigger = trigger)
}

function CHadesBossAchievement(map, title, points){

	description = format("Defeat {0} in 2 minutes or less", _dictBosses[map])

	trigger = isPlaying()
	&& trigger_when(bossDied(map))
	&& preventMapChange(map)
	&& once(bossStarted())
	&& never(once(bossStarted()) && repeated(2*60*60, !paused()))
	
    achievement(title = title, points = points, description = description, trigger = trigger)
}

function CCerberusBossAchievement(map, title, points){

	description = format("Defeat {0} without pressing Down or taking more than 50HP Damage", _dictBosses[map])

	trigger = isPlaying()
	&& trigger_when(bossDied(_mCerberus2))
	&& preventMapChange(map)
	&& once(bossStarted())
	&& never(once(bossStarted()) && !paused() && keyPressed(_kDown))
	&& never(maxDamage(50, once(bossStarted())))
	
    achievement(title = title, points = points, description = description, trigger = trigger)
}

function CDamagelessBossAchievement(map, title, points){

	description = format("Defeat {0} without getting hit", _dictBosses[map])
	
	bombs = word(_aBombs)

	trigger = isPlaying()
	&& trigger_when(bossDied(map))
	&& preventMapChange(map)
	&& once(bossStarted())
	&& never(health < prev(health))
	
    achievement(title = title, points = points, description = description, trigger = trigger)
}

function HeraQuestAchievement(title, points){

	description = format("Bring Io back to Hera and get the H Key")

	trigger = isPlaying()
	&& inMap(_mElis)
	&& finishedHeraCow()
	
    achievement(title = title, points = points, description = description, trigger = trigger)
}

function LipstickQuestAchievement(title, points){

	description = format("Give her Lipstick to the girl in Egypt")

	trigger = isPlaying()
	&& inMap(_mEgypt)
	&& finishedLipstick()
	
    achievement(title = title, points = points, description = description, trigger = trigger)
}

function BabyAchievement(title, points){

	description = format("Get 2 Babies from the Lamias")

	trigger = isPlaying()
			&& inMap(_mLamiaBaby)
			&& gotBaby(2)
	
    achievement(title = title, points = points, description = description, trigger = trigger)
}

function UnderworldAchievement(title, points){

	description = "We have no milk or cookies"

	trigger = isPlaying()
		&& (visitUnderworld(_mCerberus)
			|| visitUnderworld(_mUnderworld1)
			|| visitUnderworld(_mUnderworld2)
			|| visitUnderworld(_mUnderworld3)
			|| visitUnderworld(_mUnderworld4)
			|| visitUnderworld(_mUnderworld5))
	
    achievement(title = title, points = points, description = description, trigger = trigger)
}

function JumpingBarrelAchievement(title, description, points){
	
	trigger =  unless(xCoord < 0x1830 && yCoord < 0x1530)
				&& unless(once(health < prev(health)))
				&& unless(isSwimming())
				&& inMap(_mPoseidon)
				&& trigger_when(xCoord < 0x1880 
							&& yCoord < 0x15b6
							&& zCoord == 0)
				&& (always_false() 
					|| never(xCoord > 0x1970 || yCoord > 0x1941))
	
	trigger2 = isPlaying()
				&& inMap(_mPoseidon)
				&& never(inTitle())
				&& never(health < prev(health))
				&& never(isSwimming())
				&& never(zCoord > 0x50 && zCoord < 0x1000)
				&& never(xCoord > 0x1990)
				&& never(yCoord > 0x1995)
				&& once(xCoord <= 0x198d && xCoord >= 0x195a)
				&& once(yCoord <= 0x1992 && yCoord >= 0x1920)
				&& trigger_when(xCoord < 0x1880 
							&& yCoord < 0x15b6
							&& zCoord == 0)
	
    achievement(title = title, points = points, description = description, trigger = trigger2)	
}

function IceLandAchievement(title, description, points){
	
	trigger = isPlaying()
				&& never(health < prev(health)) 
				&& never(isSwimming())
				&& never(inTitle())
				&& never(switchMaps(_mIceLands, _mMedusa))
				&& once(switchMaps(_mMedusa, _mIceLands))
				&& trigger_when(switchMaps(_mIceLands, _mMacedonia))
	
    achievement(title = title, points = points, description = description, trigger = trigger)	
}

function CreditAchievement(){

	title = "Achievement Developer"
	description = "Lordpsycho: 'Thank you for playing my set!'"
	
	trigger = never(!inMap(_mCredits))
			&& zCoord == 0
			&& once(yCoord == 0xd10)
			&& yCoord < 0xcda
	
    achievement(title = title, points = 0, description = description, trigger = trigger)
}

function EndGameAchievement(char, title, points){

	description = format("Finish the game with {0}", _dictChar[char])

	trigger = mainChar == char
			&& once(inMap(_mHades)) 
			&& switchMaps(_mTitle, _mCredits) 
			&& never(!inMap(_mHades) && !inMap(_mTitle) && !inMap(_mCredits))
	
    achievement(title = title, points = points, description = description, trigger = trigger)
}

function GoldAchievement(gld, title, description, points){

	trigger = notLoading()
			&& prev(gold) == gld - 1
			&& gold == gld
	
    achievement(title = title, points = points, description = description, trigger = trigger)
}

function HPAchievement(val, title, description, points){

	trigger = notLoading()
			&& prev(maxHealth) > val - 100
			&& prev(maxHealth) < val
			&& maxHealth >= val
	
    achievement(title = title, points = points, description = description, trigger = trigger)
}

function STAchievement(val, title, description, points){
	trigger = notLoading()
			&& prev(maxStamina) > val - 100
			&& prev(maxStamina) < val
			&& maxStamina >= val
	
    achievement(title = title, points = points, description = description, trigger = trigger)
}

function DefaultStatsAchievement(title, points){

	description = "Finish the game with 50HP and 160ST"

	trigger = isPlaying()
		&& bossDied(_mHades)
		&& preventMapChange(_mHades)
		&& maxHealth == 50
		&& maxStamina == 160
	
    achievement(title = title, points = points, description = description, trigger = trigger)
}


function TestAchievement(){

	title = "Test"
	description = "Testing!"

	trigger = maxDamage(100)
	
    achievement(title = title, points = 0, description = description, trigger = trigger)
}

//#endregion

//#region Leaderboard Logic
function bossTimesLeaderboard(map, id){
	title = _dictBosses[map]
    description = format("Defeat {0} as fast as you can", _dictBosses[map])
		
    start =  isPlaying() && inMap(map) && bossStarted()
    cancel = !isPlaying() || !inMap(map)
    submit = isPlaying() && bossDied(map)
	
	if (map == _mCerberus){
		cancel = cancel && !inMap(_mCerberus2)
		submit = bossDied(_mCerberus2)
	}
	
    value =  measured(pause == 0)
    leaderboard(title, description, start, cancel, submit, value, "FRAMES", id = id)
}

//#endregion

//#region Achievements
//-Defeat Purple boar (5)
BossAchievement(_mPBoar, "Survival 101: Hunt Your Boar", 5)
//-Defeat Purple boar without being eaten or electrocuted (10)
CBoarBossAchievement(_mPBoar, "Not Into Boar", 10)
//-Defeat Blue Boar (5)
BossAchievement(_mPBoar2, "Survival 102: Freeze Your Boar", 5)
//-Defeat Blue Boar without being eaten or electrocuted (5)
CBoarBossAchievement(_mPBoar2, "All Boars Are Bacon", 5)
//-Defeat Medusa (10)
BossAchievement(_mMedusa, "Serpent Fatale", 10)
//-Defeat Medusa without being turned into stone (25)
CMedusaBossAchievement(_mMedusa, "Looks That Kill", 25)
//-Defeat Minotaur (10)
BossAchievement(_mMinotaur, "I Smell Dinner", 10)
//-Defeat Minotaur without being knocked down (10)
CMinotaurBossAchievement(_mMinotaur, "Don't Stomp Me Now", 25)
//-Defeat Snake (10)
BossAchievement(_mSnake, "Monstrous Reptile", 10)
//-Defeat Snake without being knocked down (25)
CSnakeBossAchievement(_mSnake, "Nokia Snake", 25)
//-Defeat Talos (10)
BossAchievement(_mTalos, "Ancient Guardian of Crete", 10)
//-Defeat Talos without using more than X bombs (10)
CDamagelessBossAchievement(_mTalos, "Bomb Your Behind", 10)
//-Defeat Hydra (10)
BossAchievement(_mHydra, "Get up on the Hydra's back!", 10)
//-Defeat the Hydra without using more than 2 Fire Spears
CHydraBossAchievement(_mHydra, "Seal It With Fire!", 10)
//-Defeat Cerberus (10)
BossAchievement(_mCerberus, "Dog Of War", 10)
CCerberusBossAchievement(_mCerberus, "Not One Step Back", 25)
//-Defeat Hades without being grabbed (25)
//-BossAchievement(_mHades, "Hades", 10) //-Replace with each hero
CHadesBossAchievement(_mHades, "Deux Ex Machina", 25)


//-Buy bombs from the secret shop (2)
BuyItemAchievement(0, "Bombs!? You want it!?", "Buy bombs from the secret shop", 2)
//-Buy Evil Taboo at the begining of the game (5)
BuyItemAchievement(1, "Swimming is Dangerous", "Buy Evil Taboo at the begining of the game without dying", 5)
//-Find Frost Breath on the path to Elis
PickItemsAchievement(_mArea3, "On My Way to Elis", "Find Thunderbolt and Frost Breath on the path to Elis", 2)
PickItemsAchievement(_mCirce, "The Island of Pigs", "Find Magic Potion, Thunderbolt and Stones on Circe Island", 3)
PickHeartAchievement(_mSparta, "Today We Dine in Sparta", "Pick up a Heart Container in Sparta", 2)
PickItemsAchievement(_mArea4, "Do Not Open Until Xmas", "Find Pandora's Box on the road to Athens", 3)
PickItemsAchievement(_mEntryAthens, "Bird's Food", "Find a Vulture and a Gyro on the entry to Athens", 2)
JumpingBarrelAchievement("Horned Kong", "Reach the pier from the island without swimming or getting hit", 5)
PickItemsPlusAchievement(195031, _mMinotaur, "Good Samaritan", "Rescue the lady and pick up her trash", 1)
PickItemsAchievement(_mTalos, "A Gift from Bob", "Find Thunderbolt before fighting Talos", 2)
PickItemsAchievement(_mEgypt, "UFO's Bait", "Find Inflatable Cows on Egypt", 2)
PickUfoAchievement("Independence Day", "Pick up Thunderbolt after defeating the UFO in Egypt", 3)
BobbyAchievement("Bobby's Buck", 2)
PickItemsAchievement(_mEIslands, "Curses, Omens and Forks", "Pick up Magic Potion, Trident, Evil Taboo and Pandora Box from the Eastern Islands", 5)
BabyAchievement("Irresponsible Parenting", 2)
PickHeartAchievement(_mAmazon, "She Crushed My Heart", "Pick up a Heart Container at the Amazon Fortress", 2)
PickItemsAchievement(_mAmazon, "Green Eggs and Harm", "Pick up Green Egg, Evil Taboo, Ray Gun and a Pandora Box at the Amazon Fortress", 5)
PickMoneyAchievement(_mAthens, 4, "I Predict Stonks", "At Athens, get 4 gold from Cassandra's predictions", 2)
PickHeartAchievement(_mMacedonia, "I Left my Heart in Macedonia", "Pick up a Heart Container in Macedonia", 2)


//-Bring back Hera's cow (10)
HeraQuestAchievement("A Cow for a Cow", 5)
PigBoarAchievement("A Gift from Papa Boar", 5)
//-Something at Athens (10)
//-Something at Sparta (10)
//-Something at Crete (10)
PickHeartAchievement(_mCrete, "ConCrete Friendship", "Pick up a Heart Container in Crete", 5)
BuyItemAchievement(2, "Best Matchsicks Money Can Buy", "Buy Fire Spears at Crete", 2)
//-Something at Egypt (10)
LipstickQuestAchievement("The Pharaon's Treasure", 5)
//-Something at Amazons (10)
//-Something at Iceland
IceLandAchievement("Brain Freeze", "Cross the Ice Lands without swimming or getting hit", 10)
PickHeartAchievement(_mIolcus, "Taken for a Fool", "Pick up a Heart Container at Iolcus", 5)
PickItemsAchievement(_mHarpies, "I Gave my Life for You!", "Pick up a Gyro at the Harpie's Mountain", 2)
PickHeartAchievement(_mColchis, "I'm the Lonely Fish", "Pick up a Heart Container at Colchis", 2)
//-Escape from the underworld (2)
UnderworldAchievement("Welcome to the Underworld", 1)
PickLastItemsAchievement(_mCerberus2, "Last Stop, The Land of the Dead", "Pick up Raygun, Bombs, Pandora Box, Thunderbolt, Fire Spears and a Heart Container before your final match", 5)

//-Reach the lowest level of the Underworld and finish the game (5)
UnderworldEndAchievement(5, "From The Ashes", 5)
//-Finish the game without visiting the underworld (10)
UnderworldEndAchievement(0, "With the Blessing of Persephone", 10)

//-Finish the game as Atlanta (25)
EndGameAchievement(_chAtlanta, "Stop Staring At Me", 10)
//-Finish the game as Herc (25)
EndGameAchievement(_chHerc, "Don't worry, I'm Hercules!", 10)
//-Finish the game as Jason (25)
EndGameAchievement(_chJson, "Check It Out. My Sword's Cool", 10)
//-Finish the game in less than 3 hours (25)

//-Get enough gold to see "You're Rich" (2) [20 coins]
GoldAchievement(20, "You're Rich!", "Or at least welthier than the average greek", 2)
//-Get 99 Coins (5)
GoldAchievement(99, "Now You're Rich!", "Get 99 Coins", 5)
//-Get 300 Max HP (5)
HPAchievement(300, "This Is Wellness", "Get 300 HP", 5) 
//-Get 300 Max ST (5)
STAchievement(300, "The Spartan Training", "Get 300 ST", 5)
//-Min ST Required to finish game = 160 0xa0 (25)
DefaultStatsAchievement("The Journey of a Demigod", 25)
CreditAchievement()
//#endregion
//-TestAchievement()

//#region Leaderboards
bossTimesLeaderboard(_mPBoar, 24408)
bossTimesLeaderboard(_mMedusa, 24459)
bossTimesLeaderboard(_mMinotaur, 24587)
bossTimesLeaderboard(_mTalos, 24607)
bossTimesLeaderboard(_mPBoar2, 29771)
bossTimesLeaderboard(_mHydra, 29772)
bossTimesLeaderboard(_mSnake, 29773)
bossTimesLeaderboard(_mCerberus, 29774)
bossTimesLeaderboard(_mHades, 29775)

//#endregion

//#region Rich Presence

rich_presence_conditional_display(inTitle(), "In the Title Screen")

rich_presence_conditional_display(isPlaying() && hasSpecialKey(), 
			"{4} [{0}/{1}❤️] [{2}/{3}💪] [{5}💰] [{6}🗝️] [{7}{8}{9}{10}{11}🗝]",
			rich_presence_value("val", health),
			rich_presence_value("val", maxHealth),
			rich_presence_value("val", stamina),
			rich_presence_value("val", maxStamina),
			rich_presence_lookup("char", mainChar, _dictChar, ""),
			rich_presence_value("val", gold),
			rich_presence_value("val", keys),
			rich_presence_lookup("hk", hKey, _dictDummy, "🇭"),
			rich_presence_lookup("pk", pKey, _dictDummy, "🇵"),
			rich_presence_lookup("ak", aKey, _dictDummy, "🇦"),
			rich_presence_lookup("dk", dKey, _dictDummy, "🇩"),
			rich_presence_lookup("uk", uKey, _dictDummy, "🇺"))
			
rich_presence_conditional_display(isPlaying(), 
			"{4} [{0}/{1}❤️] [{2}/{3}💪] [{5}💰] [{6}🗝️]",
			rich_presence_value("val", health),
			rich_presence_value("val", maxHealth),
			rich_presence_value("val", stamina),
			rich_presence_value("val", maxStamina),
			rich_presence_lookup("char", mainChar, _dictChar, ""),
			rich_presence_value("val", gold),
			rich_presence_value("val", keys))
					
rich_presence_display("Playing Herc's Adventures")


//#endregion
