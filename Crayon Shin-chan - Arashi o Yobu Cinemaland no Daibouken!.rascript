// Crayon Shin-chan - Arashi o Yobu Cinemaland no Daibouken!
// #ID = 6814

//#region Variables
_galleryStart = 0x00aaf4
_galleryEnd = 0x00ab00

_familySkills1 = 0x00ab71
_familySkills2 = 0x00ab72

_famHiroshi = 1
_famMisae = 2
_famHima = 3
_famShiro = 4

_unlockedCostumes = 0x00b7c4
_cosNone = 0
_cosActionMask = 1
_cosMonkey = 2
_cosFrog = 3
_cosChicken = 4
_cosBee = 5

_dfEasy = 0
_dfHard = 1

_lv1 = 1
_lv2 = 2
_lv3 = 3
_lv4 = 4
_lv5 = 5
_lv6 = 6
_lv7 = 7
_lv8 = 8
_lv9 = 9
_lv10 = 10
_lv11 = 11
_lvMinigames = 12
_lv12 = 13

_exPirate = 1
_exConcert = 2
_exCamera = 3
_exStone = 4
_exBunny = 5

_minWest = 0
_minMonkey = 2
_minFrog = 1
_minAction = 3
_minTricycle = 4
_minRobot = 5
_minBike = 6

_fGallery = [0x00aaf4, 0x00ab00, 0, 3]

//#endregion

//#region Dictionaries
_dictHearts = {
	_famHiroshi: 0x00b7d0,
	_famMisae: 0x00b7d1,
	_famHima: 0x00b7d2,
	_famShiro: 0x00b7d3
}

_dictExchanges = {
	_exPirate: ["Exchange the Pirate Hat for Card #22", 0x00ab74, 7, 0x00aaf6, 5],
	_exConcert: ["the Concert Ticket for Card #", 0, 0, 0, 0],
	_exCamera: ["Exchange the Disposable Camera for Card #43", 0x00ab75, 5, 0x00aaf9, 2],
	_exStone: ["the Stone for Card #", 0, 0, 0, 0],
	_exBunny: ["Give the Bunny Plush back to Nene", 0x00ab73, 5, 0, 0]
}

_dictSkills = {
	_famHiroshi: [bit0(_familySkills1),
					bit1(_familySkills1), 
					bit2(_familySkills1),
					bit3(_familySkills1)],
	_famMisae: [bit4(_familySkills1),
					bit5(_familySkills1), 
					bit6(_familySkills1),
					bit7(_familySkills1)],
	_famHima: [bit0(_familySkills2),
					bit1(_familySkills2), 
					bit2(_familySkills2)],
	_famShiro: [bit3(_familySkills2),
					bit4(_familySkills2), 
					bit5(_familySkills2)]
}

_dictNames = {
	_famHiroshi: "Hiroshi",
	_famMisae: "Misae",
	_famHima: "Himawari",
	_famShiro: "Shiro",
}

_dictMini = {
	_minWest: "Wild West",
	_minMonkey: "Monkeyboy",
	_minFrog: "Frogboy",
	_minAction: "Actionboy",
	_minTricycle: "Supertricycle",
	_minRobot: "Robot Battle",
	_minBike: "Bike Chase"
}

_dictMini2 = {
	_minWest: "The Fantastic 5 in the Wild West",
	_minMonkey: "Monkeyboy",
	_minFrog: "Frogboy",
	_minAction: "Actionboy",
	_minTricycle: "The Supertricycle",
	_minRobot: "Giant Robot Battle",
	_minBike: "Full Steam Bike Chase"
}

_dictCostumes = {
	_cosActionMask: "Action Mask",
	_cosMonkey: "Monkey",
	_cosFrog: "Frog",
	_cosChicken: "Chicken",
	_cosBee: "Bee",
}

_dictBoss = {
	_lv1: "Leotard Devil",
	_lv3: "Unkokusai",
	_lv5: "Hecson",
	_lv8: "Paradise King",
	_lv10: "Okurai",
	_lv11: "the Boss",
	_lv12: "the Director"
}

_dictCostumesE = {
	_cosNone: "",
	_cosActionMask: "🦸",
	_cosMonkey: "🐵",
	_cosFrog: "🐸",
	_cosChicken: "🐔",
	_cosBee: "🐝"
}

_dictLvNum = {
	_lv1: "1",
	_lv2: "2",
	_lv3: "3",
	_lv4: "4",
	_lv5: "5",
	_lv6: "6",
	_lv7: "7",
	_lv8: "8",
	_lv9: "9",
	_lv10: "10",
	_lv11: "11",
	_lv12: "12"
}

_dictLvName = {
	_lv1: "Action Mask VS. Leotard Devil",
	_lv2: "The Hidden Treasure of the Buri Buri Kingdom",
	_lv3: "Unkokusai's Ambition",
	_lv4: "Great Adventure in Henderland",
	_lv5: "Pursuit of the Balls of Darkness",
	_lv6: "Blitzkrieg! Pig's Hoof Secret Mission",
	_lv7: "Burst! Hot Spring Battle!",
	_lv8: "Bungle in the Jungle",
	_lv9: "Counter Attacking the Adult's Empire",
	_lv10: "Bravo! Samurai Battle!",
	_lv11: "The Glorious Road to Grilled Beef",
	_lv12: "Adventures in Cinema-Land"
}

_dictBossArea = {
	_lv1: 2,
	_lv3: 1,
	_lv5: 1,
	_lv8: 3,
	_lv9: 2,
	_lv10: 1,
	_lv11: 2,
	_lv12: 4
}

_dictLevelBit = {
	_lv1: [0, 0x00ab77],
	_lv2: [1, 0x00ab77],
	_lv3: [2, 0x00ab77],
	_lv4: [3, 0x00ab77],
	_lv5: [4, 0x00ab77],
	_lv6: [5, 0x00ab77],
	_lv7: [6, 0x00ab77],
	_lv8: [7, 0x00ab77],
	_lv9: [0, 0x00ab78],
	_lv10: [1, 0x00ab78],
	_lv11: [2, 0x00ab78],
	_lv12: [3, 0x00ab78]
}

_dictDifficulty = {
	_dfEasy: "Easy",
	_dfHard: "Hard"
}

//#endregion

//#region Memory Accessors
level = byte(0x00ab1e)
level2 = byte(0x00c7cd)
area = byte(0x00ab1f)
difficulty = byte(0x00ab1c)

animation = word(0x00b3c4)

lives = byte(0x00b7c5)
stars = byte(0x00b7c7)
maxHealth = byte(0x00b7c6)
health = byte(0x00b81d)
health2 = byte(0x02ffee)
costume = byte(0x00b81e)

bossHP = byte(0x033e26)
defeatedEnemy = dword(0x033ddc)
areaTimer = dword(0x00b64c)

miniScore = word(0x00b648)
miniScore2 = word(0x00bcf0)
miniEnemies = byte(0x00b650)
miniStars = word(0x00b656)
mini5Stars = word(0x00b654)
mini10Stars = word(0x00b652)
miniHearts = byte(0x00b658)

miniStars2 = word(0x00bce3)
//#endregion

//#region Functions

function alive() => prev(health2) > 0
function inHallway() => areaTimer == 0
function playing() => !inTitle() && !inHallway()
function inTitle() => maxHealth == 0 || level == 0
function inLevel(lv) => level == lv
function inArea(ar) => area == ar
function bossDefeated() => prev(defeatedEnemy) > 0 && defeatedEnemy == 0
function damaged() => prev(health) > health
function damagedInArea(ar) => damaged() && inArea(ar)
function died() => prev(lives) > lives 
function gameover() => (prev(lives) == 0 && lives > 1)
function inDifficulty(diff) => difficulty == diff
function inHard() => inDifficulty(_dfHard)
function finishedLevel(lv) => prev(bit(_dictLevelBit[lv][0],_dictLevelBit[lv][1])) == 0 && bit(_dictLevelBit[lv][0],_dictLevelBit[lv][1]) == 1


function miniStarsGot(st) => miniStars >= st[0] && mini5Stars >= st[1] && mini10Stars >= st[2]
function miniDamageless() => miniHearts == maxHealth

function miniKillGot(kl) => miniEnemies == kl
function finishedMinigame() => prev(miniScore) == 0 && miniScore > 0
function maxHearts(char) => prev(byte(_dictHearts[char])) == 4 && byte(_dictHearts[char]) == 5

function allSkills(char) {
	skills = _dictSkills[char]
	trigger = 0
	prevTrigger = 0
	
	for skill in skills {
		trigger = trigger + skill
		prevTrigger = prevTrigger + prev(skill)
	}
	
	prevTrigger = prevTrigger == length(skills) - 1
	trigger = measured(trigger == length(skills)) 
	
	return trigger && prevTrigger
}

function unlockedBitflags(flags){
	startAddress = flags[0]
	endAddress = flags[1]
	startBit = flags[2]
	endBit = flags[3]

	result = 0
	totalFlags = 0
	
	if (startAddress == endAddress){
		for nbit in range(startBit, endBit){
			result = result + bit(nbit, startAddress)
			totalFlags = totalFlags + 1
		}
	}
	else{
		for address in range(startAddress, endAddress){				
			if (address == startAddress && startBit > 0){			
				for nbit in range(startBit, 7){
					result = result + bit(nbit, address)
					totalFlags = totalFlags + 1
				}
			}
			else {
				if (address == endAddress && endBit < 7){
					for nbit in range(0, endBit){
						result = result + bit(nbit, address)
						totalFlags = totalFlags + 1
					}
				}
				else{
					result = result + bitcount(address)
					totalFlags = totalFlags + 8
				}
			}
		}
	}
	return measured(result == totalFlags)
}

function prevUnlockedBitflags(flags){
	startAddress = flags[0]
	endAddress = flags[1]
	startBit = flags[2]
	endBit = flags[3]

	result = 0
	totalFlags = 0
	
	if (startAddress == endAddress){
		for nbit in range(startBit, endBit){
			result = result + prev(bit(nbit, startAddress))
			totalFlags = totalFlags + 1
		}
	}
	else{
		for address in range(startAddress, endAddress){				
			if (address == startAddress && startBit > 0){			
				for nbit in range(startBit, 7){
					result = result + prev(bit(nbit, address))
					totalFlags = totalFlags + 1
				}
			}
			else {
				if (address == endAddress && endBit < 7){
					for nbit in range(0, endBit){
						result = result + prev(bit(nbit, address))
						totalFlags = totalFlags + 1
					}
				}
				else{
					result = result + prev(bitcount(address))
					totalFlags = totalFlags + 8
				}
			}
		}
	}
	
	return result == totalFlags - 1
}

function flagCounter(flags) {
	startAddress = flags[0]
	endAddress = flags[1]
	startBit = flags[2]
	endBit = flags[3]

	result = 0	
	
	if (startAddress == endAddress){
		for nbit in range(startBit, endBit){
			result = result + bit(nbit, startAddress)			
		}
	}
	else{
		for address in range(startAddress, endAddress){				
			if (address == startAddress && startBit > 0){			
				for nbit in range(startBit, 7){
					result = result + bit(nbit, address)
				}
			}
			else {
				if (address == endAddress && endBit < 7){
					for nbit in range(0, endBit){
						result = result + bit(nbit, address)
					}
				}
				else{
					result = result + bitcount(address)
				}
			}
		}
	}
	
	return result
}

function unlockedCostume(cost) => bit(cost, _unlockedCostumes) == 1

function withCostume(cost) => prev(costume) != cost && costume == cost

function putCostume(cost) => unlockedCostume(cost) && withCostume(cost)

function changedCookies(c) => stars > prev(stars) && stars - prev(stars) > c
function changedCookies2(c) => prev(stars) > stars && prev(stars) - stars < c

function exchanged(ex) {
	exc = _dictExchanges[ex]
	ditem = bit(exc[2]-1,exc[1])
	item = bit(exc[2],exc[1])
	card = bit(exc[4],exc[3])
	
	trigger = prev(ditem) == 1 && ditem == 0 &&
			prev(item) == 0 && item == 1 
	
	if (exc[3] > 0){
		trigger = trigger && prev(card) == 0 && card == 1
	}
	return trigger
} 

function totalCookies(cook) {
	conditions = []
	for index in range(0, 9){
		array_push(conditions, changedCookies(index))
	}
	for index in range(91, 100){
		array_push(conditions, changedCookies2(index))
	}
	return tally(cook, conditions)
}

//#endregion

//#region Achievement logic

function heartsAchievement(id, char, title, points){
	
	description = format("Get 5 Hearts with {0}", _dictNames[char])
	
	trigger = playing()
		&& maxHearts(char)

	achievement(title = title, points = points, description = description, trigger = trigger, id = id)
}

function skillAchievement(id, char, title, points){
	
	description = format("Get every skill for {0}", _dictNames[char])
	
	trigger = playing() &&
			allSkills(char)

	achievement(title = title, points = points, description = description, trigger = trigger, id = id)
}

function costumeAchievement(id, cost, title, points){
	
	description = format("Put on the {0} suit", _dictCostumes[cost])
	
	trigger = playing() && putCostume(cost)

	achievement(title = title, points = points, description = description, trigger = trigger, id = id)
}

function damagelessBossAchievement(id, lv, title, points){
	
	description = format("Defeat {0} without being hit in Hard difficulty", _dictBoss[lv])
	
	trigger = inLevel(lv)
			&& alive()
			&& playing()
			&& inArea(_dictBossArea[lv])
			&& inHard()
			&& trigger_when(bossDefeated())
			&& unless(once(damagedInArea(_dictBossArea[lv])))
			&& (always_false() || never(died()) || never(gameover()))

	achievement(title = title, points = points, description = description, trigger = trigger, id = id)
}

function levelAchievement(id, lv, title, description, points){
	
	trigger = !inTitle()
			&& alive()
			&& playing()
			&& inLevel(lv)
			&& inArea(_dictBossArea[lv])
			&& finishedLevel(lv)

	achievement(title = title, points = points, description = description, trigger = trigger, id = id)
}

function bossAchievement(id, lv, title, points){
	
	description = format("Defeat {0}", _dictBoss[lv])
	
	trigger = inLevel(lv)
			&& alive()
			&& playing()
			&& inArea(_dictBossArea[lv])
			&& bossDefeated()

	achievement(title = title, points = points, description = description, trigger = trigger, id = id)
}

function starAchievement(id, strs, lv, title, points){

	description = format("Get {0} Star Cookies on level {1} in one life, Hard Difficulty", strs, lv)
	
	trigger = playing() &&
			never(!inLevel(lv))
			&& inHard()
			&& measured(totalCookies(strs), inLevel(lv))
			&& never(died())
			&& never(gameover())
			
	achievement(title = title, points = points, description = description, trigger = trigger, id = id)
}

function exchangeAchievement(id, ex, title, points){

	description = format("{0}", _dictExchanges[ex][0])
	
	trigger = !inTitle() && exchanged(ex)
			
	achievement(title = title, points = points, description = description, trigger = trigger, id = id)
}

function galleryAchievement(id, title, points){
	description = format("Collect every collectible card")
	
	trigger = !inTitle() 
			&& unlockedBitflags(_fGallery)
			&& prevUnlockedBitflags(_fGallery)
			
	achievement(title = title, points = points, description = description, trigger = trigger, id = id)
}

function miniStarAchievement(id, area, strs, title, points){

	totalStr = strs[0] + strs[1]*5 + strs[2]*10

	description = format("Get {0} Star Cookies on minigame {1}, Hard Difficulty", totalStr, _dictMini[area])
	
	trigger = !inTitle()
			&& inHard()
			&& inLevel(_lvMinigames)
			&& inArea(area)
			&& finishedMinigame()
			&& miniStarsGot(strs)
			
	achievement(title = title, points = points, description = description, trigger = trigger, id = id)
}

function miniKillAchievement(id, area, klls, title, points){
	description = format("Defeat {0} enemies on minigame {1}, Hard Difficulty", klls, _dictMini[area])
	
	trigger = !inTitle()
			&& inHard()
			&& inLevel(_lvMinigames)
			&& inArea(area)
			&& finishedMinigame()
			&& miniKillGot(klls)
			
	achievement(title = title, points = points, description = description, trigger = trigger, id = id)
}

function miniStarDamAchievement(id, area, strs, title, points){

	totalStr = strs[0] + strs[1]*5 + strs[2]*10

	description = format("Get {0} Star Cookies on minigame {1} and finish it without being hit, Hard Difficulty", totalStr, _dictMini[area])
	
	trigger = !inTitle()
			&& inHard()
			&& inLevel(_lvMinigames)
			&& inArea(area)
			&& finishedMinigame()
			&& miniStarsGot(strs)
			&& miniDamageless()
			
	achievement(title = title, points = points, description = description, trigger = trigger, id = id)
}

function miniDamAchievement(id, area, title, points){

	description = format("Finish minigame {0} without taking damage, Hard Difficulty", _dictMini[area])
	
	trigger = !inTitle()
			&& inHard()
			&& inLevel(_lvMinigames)
			&& inArea(area)
			&& finishedMinigame()
			&& miniDamageless()
			
	achievement(title = title, points = points, description = description, trigger = trigger, id = id)
}
//#endregion

//#region Leaderboard Logic
function miniLeaderboard(id, mini){
	
	title = _dictMini2[mini]
	description = format("Get the highest score at {0} (Hard)", _dictMini2[mini])
	
    start = !inTitle()
			&& inHard()
			&& inLevel(_lvMinigames)
			&& inArea(mini)
			&& finishedMinigame()
			
    cancel = always_false()
	
    submit = miniScore == miniScore2
			
    value = miniScore2
	
    leaderboard(title, description, start, cancel, submit, value, "SCORE", id = id)    
}

//#endregion

//#region Achievements
//-Get 5 Hearts with Hiroshi (3)
heartsAchievement(1, _famHiroshi, "I <3 Dad", 2)
//-Get 5 Hearts with Misae (3)
heartsAchievement(2, _famMisae, "I <3 Mom...really!", 2)
//-Get 5 Hearts with Hima (3)
heartsAchievement(3, _famHima, "I <3 Hima", 2)
//-Get 5 Hearts with Shiro (3)
heartsAchievement(4, _famShiro, "I <3 Shiro", 2)

//-Get every skill for Hiroshi (5)
skillAchievement(5, _famHiroshi, "Stinky Penpusher", 5)
//-Get every skill for Misae (5)
skillAchievement(6, _famMisae, "Old Lady Complex", 5)
//-Get every skill for Himawark (5)
skillAchievement(7, _famHima, "Professional Scammer", 5)
//-Get every skill for Shiro (5)
skillAchievement(8, _famShiro, "Drunken Vandalist", 5)

//-Put on the Action Mask suit (1)
costumeAchievement(9, _cosActionMask, "Haaa, ha, ha, ha, ha!", 1)
//-Put on the Monkey suit (1)
costumeAchievement(10, _cosMonkey, "Look My Banana!", 1)
//-Put on the Frog suit (1)
costumeAchievement(11, _cosFrog, "Gero! Gero! Gero!", 1)
//-Put on the Chicken suit (1)
costumeAchievement(12, _cosChicken, "Are you a Chicken? Chip-chip-cheep-cheep", 3)
//-Put on the Bee suit (1)
costumeAchievement(13, _cosBee, "Bee Movie", 3)

//-Defeat
bossAchievement(14, _lv1, "Phanto Face", 2)
bossAchievement(15, _lv3, "Stinky Poop", 5)
bossAchievement(16, _lv5, "Shin-chan Vs Gaijin", 5)
bossAchievement(31, _lv8, "King Afro", 5)
levelAchievement(33, _lv9, "The 20th Century is Over", "Get back to the 21th century", 5)
bossAchievement(37, _lv10, "Unhonorable Warrior", 5)
bossAchievement(39, _lv11, "The Unbrave Pig", 5)
levelAchievement(41, _lv12, "A Day in Cinema-Land", "Finish the game", 10)

//-Defeat without being hit (5)
damagelessBossAchievement(214495, _lv1, "Dastard Devil", 5)
damagelessBossAchievement(214493, _lv3, "Jarring Machinery", 10)
damagelessBossAchievement(214496, _lv5, "Hecson Hexer", 10)
damagelessBossAchievement(214506, _lv8, "Funky Dynamite", 10)
damagelessBossAchievement(214515, _lv10, "Way of the Buttshido", 10)
damagelessBossAchievement(214517, _lv11, "Sweaty Like a Pig", 10)
damagelessBossAchievement(214519, _lv12, "Dir. Willy", 25)

//-Get 74 Star Cookies on level 1 in one life, Hard Difficulty (5)
starAchievement(20, 79, _lv1, "Action Mask VS. Leotard Devil", 5)
//-Get 50 Star Cookies on level 2, Hard Difficulty, without dying (5)
starAchievement(21, 50, _lv2, "The Hidden Treasure of the Buri Buri Kingdom", 5)
//-Get XX Star Cookies on level 3, Hard Difficulty, without dying (42)
starAchievement(22, 42, _lv3, "Unkokusai's Ambition", 5)
//-Get XX Star Cookies on level 4, Hard Difficulty, without dying (10)
starAchievement(23, 69, _lv4, "Great Adventure in Henderland", 5)
//-Get XX Star Cookies on level 5, Hard Difficulty, without dying (10)
starAchievement(24, 74, _lv5, "The Balls of Darkness", 5)
//-Get XX Star Cookies on level 6, Hard Difficulty, without dying (10)
starAchievement(25, 60, _lv6, "Pig's Hoof Secret Mission", 5)
//-Get XX Star Cookies on level 7, Hard Difficulty, without dying (10)
starAchievement(26, 37, _lv7, "Hot Spring Battle!", 5)
//-Get XX Star Cookies on level 8, Hard Difficulty, without dying (10)
starAchievement(27, 112, _lv8, "Bungle in the Jungle", 10)
//-Get XX Star Cookies on level 9, Hard Difficulty, without dying (10)
starAchievement(28, 115, _lv9, "Counter Attacking the Adult's Empire", 10)
//-Get XX Star Cookies on level 10, Hard Difficulty, without dying (10)
starAchievement(29, 66, _lv10, "Samurai of the Blue Sky", 5)
//-Get XX Star Cookies on level 11, Hard Difficulty, without dying (10)
starAchievement(30, 157, _lv11, "Glorious Road to Grilled Beef", 10)

//-Exchanges
exchangeAchievement(34, _exPirate, "Old English Pirate", 2)
exchangeAchievement(35, _exCamera, "Volley Shot", 2)
exchangeAchievement(36, _exBunny, "Crazy Little Girl Called Nene", 3)
galleryAchievement(43, "Card Captor Shin-chan", 25)

//-Minigames
miniStarAchievement(44, _minWest, [67, 0, 0], _dictMini2[_minWest], 5)
miniKillAchievement(45, _minWest, 23, "Smelly Finger from the Wild West", 10)
miniStarAchievement(46, _minMonkey, [54, 0, 0], "Wall Climber", 5)
miniStarAchievement(47, _minFrog, [77, 15, 4], "Tounge Clinger", 10)
miniKillAchievement(48, _minAction, 100, "Shin-chan Vs Everyone", 10)

miniStarDamAchievement(49, _minTricycle, [30, 1, 0], _dictMini2[_minTricycle], 10)
miniDamAchievement(50, _minRobot, _dictMini2[_minRobot], 3)
miniStarDamAchievement(51, _minBike, [74, 0, 0], _dictMini2[_minBike], 10)

//#endregion

//#region Leaderboards
miniLeaderboard(52, _minWest)
miniLeaderboard(53, _minMonkey)
miniLeaderboard(54, _minFrog)
miniLeaderboard(55, _minAction)
miniLeaderboard(56, _minTricycle)
miniLeaderboard(57, _minRobot)
miniLeaderboard(58, _minBike)

//#endregion

//#region Rich Presence
rich_presence_conditional_display(inTitle(), "In the Title Screen")

rich_presence_conditional_display(inHallway(), "[{1}] In the Movie Theather Hallway [🃏: {0}/100]", 
				rich_presence_value("val", flagCounter(_fGallery)),
				rich_presence_lookup("dif", difficulty, _dictDifficulty))

rich_presence_conditional_display(inLevel(_lvMinigames), 
							"[{7}] {0}Shin-chan is in Minigame: {1} [❤️ {2}/{3}] [👦x{4}] [⭐x{5}] [🃏: {6}/100]",
							rich_presence_lookup("costume", costume, _dictCostumesE),
							rich_presence_lookup("mini", area, _dictMini2),
							rich_presence_value("val", health),
							rich_presence_value("val", maxHealth),
							rich_presence_value("val", lives),
							rich_presence_value("val", stars),
							rich_presence_value("val", flagCounter(_fGallery)),
							rich_presence_lookup("dif", difficulty, _dictDifficulty)
							)
							
rich_presence_display("[{7}] {0}Shin-chan is in movie {8}: {1} [❤️ {2}/{3}] [👦x{4}] [⭐x{5}] [🃏: {6}/100]",
							rich_presence_lookup("costume", costume, _dictCostumesE),
							rich_presence_lookup("lvna", level, _dictLvName),
							rich_presence_value("val", health),
							rich_presence_value("val", maxHealth),
							rich_presence_value("val", lives),
							rich_presence_value("val", stars),
							rich_presence_value("val", flagCounter(_fGallery)),
							rich_presence_lookup("dif", difficulty, _dictDifficulty),
							rich_presence_lookup("lvnu", level, _dictLvNum)
							)

//#endregion
