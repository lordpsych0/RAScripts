// Feel the Magic XY|XX
// #ID = 9524

//#region Variables

//-Mode
_mdStory = 1
_mdMemories = 2

//-Difficulty
_dfNormal = 0
_dfHard = 1
_dfHell = 2

//-Screen
_scTitle = 2
_scMemories = 3
_scManiac = 4
_scOption = 5
_scSoundTest = 6
_scWinMiss = 7
_scGameSelect = 8
_scSceneSelect = 9
_scIntro = 0xa
_scOutro = 0xb
_scCredits = 0xc
_scPrevCredits = 0x14
_scBaseGame = 0x15

//-Minigames
_mgGoldfish = 0 //-15 in screen
_mgBusstop = 1
_mgCandle = 2
_mgAntlion = 3
_mgMonocycle = 4
_mgSnake = 5
_mgParachute = 6
_mgPainter = 7
_mgDrive = 8
_mgBull = 9
_mgCart = 0xa
_mgLastBattle = 0xb
_mgFinalBattle = 0xc
_mgChaser = 0xd
_mgYacht = 0xe
_mgNightmare = 0xf
_mgPlants = 0x10
_mgNightmare2 = 0x11
_mgNightmare3 = 0x12
_mgSteal = 0x13
_mgScorpion = 0x14
_mgSeeker = 0x15
_mgCleanup = 0x16
_mgHands = 0x17
_mgBonfire = 0x18
_mgMagicTouch = 0x19
_mgSign = 0x1a
_mgDance = 0x1b
_mgMicrophone = 0x1c

rabbitsStart = 0x0a4208
totalRabbits = 60

starsStart = 0x0a4228

//#endregion

//#region Dictionaries
_dictUnlocked = {
	_mgGoldfish: [0, 0x0a4220],
	_mgBusstop: [1, 0x0a4220],
	_mgCandle: [2, 0x0a4220],
	_mgAntlion: [3, 0x0a4220],
	_mgMonocycle: [4, 0x0a4220],
	_mgSnake: [5, 0x0a4220],
	_mgParachute: [6, 0x0a4220],
	_mgPainter: [7, 0x0a4220],
	_mgDrive: [0, 0x0a4221],
	_mgBull: [1, 0x0a4221],
	_mgCart: [2, 0x0a4221],
	_mgLastBattle: [3, 0x0a4221],
	_mgFinalBattle: [4, 0x0a4221],
	_mgChaser: [5, 0x0a4221],
	_mgYacht: [6, 0x0a4221],
	_mgNightmare: [7, 0x0a4221],
	_mgPlants: [0, 0x0a4222],
	_mgNightmare2: [1, 0x0a4222],
	_mgNightmare3: [2, 0x0a4222],
	_mgSteal: [3, 0x0a4222],
	_mgScorpion: [4, 0x0a4222],
	_mgSeeker: [5, 0x0a4222],
	_mgCleanup: [6, 0x0a4222],
	_mgHands: [7, 0x0a4222],
	_mgBonfire: [0, 0x0a4223],
	_mgMagicTouch: [1, 0x0a4223],
	_mgSign: [2, 0x0a4223],
	_mgDance: [3, 0x0a4223],
	_mgMicrophone: [4, 0x0a4223]
}
			//-[screenId, winScreenId, normalLast, hardLast]
_dictGameConf = { 
	_mgGoldfish: [0x15, 0xb, 3, 10, 10],
	_mgBusstop: [0x16, 0x7, 5, 10, 10],
	_mgCandle: [0x17, 0x7, 5, 10, 10],
	_mgAntlion: [0x18, 0x7, 5, 10, 10],
	_mgMonocycle: [0x19, 0x7, 5, 10, 10],
	_mgSnake: [0x1a, 0x7, 5, 10, 10],
	_mgParachute: [0x1b, 0x7, 5, 10, 10],
	_mgPainter: [0x1c, 0x7, 5, 10, 10],
	_mgDrive: [0x1d, 0x7, 1, 1, 1], //-Has HP 
	_mgBull: [0x1e, 0x7, 1, 1, 1],
	_mgCart: [0x1f, 0x7, 5, 10, 10],
	_mgLastBattle: [0x20, 0x7, 1, 1, 1], //-Has HP,
	_mgFinalBattle: [0x21, 0x7, 1, 1, 1],
	_mgChaser: [0x22, 0x7, 5, 10, 10],
	_mgYacht: [0x23, 0x7, 5, 10, 10],
	_mgNightmare: [0x1e, 0xa, 1, 1, 1],
	_mgPlants: [0x25, 0x7, 1, 1, 1], //-Has HP
	_mgNightmare2: [0x1d, 0xf, 1, 1, 1], //-Has HP
	_mgNightmare3: [0x25, 0xb, 1, 1, 1], //-Has HP,
	_mgSteal: [0x28, 0x7, 5, 10, 10],
	_mgScorpion: [0x29, 0x7, 5, 10, 10],
	_mgSeeker: [0x2a, 0x7, 5, 10, 10],
	_mgCleanup: [0x2b, 0x7, 1, 1, 1],
	_mgHands: [0x2c, 0x7, 1, 1, 1],
	_mgBonfire: [0x2d, 0x7, 1, 1, 1],
	_mgMagicTouch: [0x2e, 0x7, 1, 10, 10],
	_mgSign: [0x2f, 0x7, 5, 10, 10],
	_mgDance: [0x30, 0x7, 5, 10, 10],
	_mgMicrophone: [0x31, 0x7, 5, 10, 10] 
}

_dictStars = {
	_mgGoldfish: 10,
	_mgBusstop: 10,
	_mgCandle: 10,
	_mgAntlion: 10,
	_mgMonocycle: 10,
	_mgSnake: 10,
	_mgParachute: 10,
	_mgPainter: 10,
	_mgDrive: 1,
	_mgBull: 1,
	_mgCart: 10,
	_mgLastBattle: 1,
	_mgFinalBattle: 1,
	_mgChaser: 10,
	_mgYacht: 10,
	_mgNightmare: 1,
	_mgPlants: 1,
	_mgNightmare2: 1,
	_mgNightmare3: 1,
	_mgSteal: 10,
	_mgScorpion: 10,
	_mgSeeker: 10,
	_mgCleanup: 1,
	_mgHands: 1,
	_mgBonfire: 1,
	_mgMagicTouch: 1,
	_mgSign: 10,
	_mgDance: 10,
	_mgMicrophone: 10 
}

_dicHellGames = {
	0: [_mgGoldfish, _mgParachute, _mgCandle, _mgCart],
	1: [_mgBull, _mgCleanup, _mgAntlion, _mgBusstop],
	2: [_mgMonocycle, _mgPainter],
	3: [_mgScorpion, _mgSign, _mgMicrophone, _mgHands],
	4: [_mgDrive, _mgYacht, _mgBonfire],
	5: [_mgDance, _mgSnake, _mgSeeker],
	6: [_mgPlants, _mgChaser, _mgSteal],
	7: [_mgNightmare, _mgNightmare2, _mgNightmare3],
	8: [_mgLastBattle, _mgFinalBattle, _mgMagicTouch]	
}

_dictNames = {
	_mgGoldfish: "Goldfish",
	_mgBusstop: "Bus Stop",
	_mgCandle: "Candle",
	_mgAntlion: "Antlion",
	_mgMonocycle: "Monocycle",
	_mgSnake: "Snake",
	_mgParachute: "Parachute",
	_mgPainter: "Painter",
	_mgDrive: "Drive",
	_mgBull: "Bull",
	_mgCart: "Cart",
	_mgLastBattle: "Last Battle",
	_mgFinalBattle: "Final Battle",
	_mgChaser: "Chaser",
	_mgYacht: "Yacht",
	_mgNightmare: "Nightmare",
	_mgPlants: "Plants",
	_mgNightmare2: "Nightmare2",
	_mgNightmare3: "Nightmare3",
	_mgSteal: "Steal",
	_mgScorpion: "Scorpion",
	_mgSeeker: "Seeker",
	_mgCleanup: "Cleanup",
	_mgHands: "Hands",
	_mgBonfire: "Bonfire",
	_mgMagicTouch: "Magic Touch",
	_mgSign: "Sign",
	_mgDance: "Dance",
	_mgMicrophone: "Microphone" 
}

_dictDiff = {
	_dfNormal: "Normal",
	_dfHard: "Hard",
	_dfHell: "Hell"
}


//#endregion

//#region Memory Accessors

beatGame = byte(0x0a4214) //-ff not, 0 Hard unlocked, 1 Hell unlocked
mode = byte(0x0a401c)
language = byte(0x0a4030)

difficulty = byte(0x0a4215)
minigame = byte(0x0a4014)
minigameLevel = byte(0x0a403c)
startFlag = byte(0x0a4038)
lives = byte(0x0a4068)
currentScreen = byte(0x0a40c4)

heartEarned = byte(0x0a41e8)
heartPrevious = byte(0x0a41ec)
heartTotal = byte(0x0a41f0)

pause1 = byte(0x1f02a8)
pause2 = byte(0x1f02ac)
switch = byte(0x0a40d4)
//#endregion

//#region Functions
function hasQuit() => prev(switch) == 1 && switch == 0 && pause2 == 1 && (currentScreen == _scMemories || currentScreen == _scGameSelect)

function hasQuitS() => prev(switch) == 1 && switch == 0 && pause2 == 1 && currentScreen == _scGameSelect

function lostLife() => prev(lives) > lives 

function lostLifeHP() => prev(lives) > lives 
						&& minigame != _mgDrive 
						&& minigame != _mgLastBattle 
						&& minigame != _mgPlants
						&& minigame != _mgNightmare2
						&& minigame != _mgNightmare3

function died() => prev(lives) == 1 && lives == 0

function gameStarted() => prev(startFlag) == 0 && startFlag == 1
function gameEnded() => prev(startFlag) == 1 && startFlag == 0
function gameEndedBoss() => prev(currentScreen) != currentScreen

function gameScreen(game) => 
		minigame == game 
		&& currentScreen == _dictGameConf[game][0]

function gameDone(game, diff) =>
				minigame == game 
				&& prev(currentScreen) == _dictGameConf[game][0] 
				&& currentScreen != _dictGameConf[game][0]
				&& lives > 0
				&& minigameLevel == _dictGameConf[game][2+diff]
				

function pgameScreen(game) => unless(minigame != game || currentScreen != _scBaseGame + game)


function gameUnlocked(game) => bit(_dictUnlocked[game][0], _dictUnlocked[game][1]) == 1

function haveStar(game) => byte(starsStart + game) == 1

function gotTenStars(game) {
	address = byte(starsStart + game)
	return prev(address) == 9 && address == 10
}

function gotStar(game) {
	address = byte(starsStart + game)
	return prev(address) == 0 && address == 1
}

function formatTime(mins, secs){
	result = ""
	if (mins > 0){
		result = format("{0} mins", mins)
	}
	
	if (secs > 0){
		if (result != ""){
			result = result + " "
		}
		result = result + format("{0} secs", secs)
	}
	return result
}

function formatNames(list){
	result = ""
	
	for game in list{
		name = _dictNames[game]
		if (game == list[length(list)-1]){
			result = result + "and " + name
		}
		else{
			result = result + name + ", "
		}
	}
	
	return result
}

function allRabbits(numRabbits){
	conditionsArray = []
	alt_conditions = []
	
	nbit = 0
	nbyte = 0
		
	for rabbit in range(0, totalRabbits - 1){
		array_push(conditionsArray, 
				once(bit(nbit, rabbitsStart + nbyte) == 1))
		array_push(alt_conditions, 
				once(prev(bit(nbit, rabbitsStart + nbyte)) == 1))
		
		if (nbit == 7){
			nbit = 0
			nbyte = nbyte + 1
		}
		else{
			nbit = nbit + 1
		}				
	}
	
	return measured(tally(numRabbits, conditionsArray))  && (always_false() || never(tally(numRabbits, alt_conditions)))
}

function ownedRabbits(){	
	nbit = 0
	nbyte = 0
	result = 0
		
	for rabbit in range(0, totalRabbits - 1){
		result = result + bit(nbit, rabbitsStart + nbyte)
		
		if (nbit == 7){
			nbit = 0
			nbyte = nbyte + 1
		}
		else{
			nbit = nbit + 1
		}				
	}
	
	return result
}

function ownedStars(){
	result = 0
	
	for game in _dictGameConf{
		result = result + byte(starsStart + game)		
	}
	
	return result
}

function finishedGame() => prev(currentScreen) == _scPrevCredits && currentScreen == _scCredits

function allMinigames(diff){
	conditionsArray = []
	
	for game in _dictNames{
		array_push(conditionsArray, 
				once(gameDone(game, diff)))
	}
	
	return measured(
		tally(length(conditionsArray), conditionsArray), 
		mode == _mdStory && difficulty == diff)
}

function hellMinigames(diff, list){	
	conditionsArray = []
	
	for game in list{
		array_push(conditionsArray, 
				once(gameDone(game, diff)))
	}
	
	return measured(
		tally(length(conditionsArray), conditionsArray), 
		mode == _mdStory && difficulty == diff)
}

function allRabbits2(numRabbits){
	return measured(
	bitcount(rabbitsStart + 0) +
	bitcount(rabbitsStart + 1) + 
	bitcount(rabbitsStart + 2) + 
	bitcount(rabbitsStart + 3) +
	bitcount(rabbitsStart + 4) +
	bitcount(rabbitsStart + 5) +
	bitcount(rabbitsStart + 6) +
	bitcount(rabbitsStart + 7) +
	bit(0, rabbitsStart + 8) +
	bit(1, rabbitsStart + 8) +
	bit(2, rabbitsStart + 8) +
	bit(3, rabbitsStart + 8) == numRabbits)  
	&& prev(bitcount(rabbitsStart + 0)) +
		prev(bitcount(rabbitsStart + 1)) + 
		prev(bitcount(rabbitsStart + 2)) + 
		prev(bitcount(rabbitsStart + 3)) +
		prev(bitcount(rabbitsStart + 4)) +
		prev(bitcount(rabbitsStart + 5)) +
		prev(bitcount(rabbitsStart + 6)) +
		prev(bitcount(rabbitsStart + 7)) +
		prev(bit(0, rabbitsStart + 8)) +
		prev(bit(1, rabbitsStart + 8)) +
		prev(bit(2, rabbitsStart + 8)) +
		prev(bit(3, rabbitsStart + 8)) == numRabbits - 1
}

//#endregion

//#region Achievement logic
function BeatGameAchievement(diff, title, points){
    
	description = format("Beat Story mode on {0}", _dictDiff[diff])
		
	trigger = mode == _mdStory
	&& difficulty == diff
	&& finishedGame()
	
    achievement(title = title, points = points, description = description, trigger = trigger)	
}

function BeatNormalAchievement(title, points){    
	description = format("Beat every Story minigame on {0} without failing or quitting", _dictDiff[_dfNormal])
		
	trigger = unless(gameStarted()) //-Prevents pause on Newgame 3 -> 1
	&& unless(once(lostLifeHP())) //-For stages without HP, with HP use Died	
	&& allMinigames(_dfNormal) //-Beat every minigame
	//-&& trigger_when(finishedGame()) //-Ignore Trigger, unlock wherever
	&& (always_false() 
		|| (
			never(hasQuitS()) //-Pause and Quit
			&& never(died() //-For stages with HP
			|| once(lostLife()) //-If cheevo is paused because died
				&& currentScreen == _scGameSelect) //-Reset on game select screen
			) 
		)
	
    achievement(title = title, points = points, description = description, trigger = trigger)	
}

function BeatDeathlessAchievement(diff, title, points){    
	description = format("Beat every Story minigame on {0} without getting a Game Over (Miss) or quitting", _dictDiff[diff])
		
	trigger = allMinigames(diff)
	//-&& trigger_when(finishedGame()) //-Ignore Trigger, unloc wherever
	&& (always_false() 
		|| (never(hasQuitS()) //-Pause and Quit
		&& never(died())) //-Reset if died
		)
	
    achievement(title = title, points = points, description = description, trigger = trigger)	
}

function RabbitsAchievement(rabbitNum, title, points){
    
	description = format("Find {0} Rabbits", rabbitNum)
		
	trigger = currentScreen == _scIntro
	&& allRabbits2(rabbitNum)
            
    achievement(title = title, points = points, description = description, trigger = trigger)	
}

function MinigameTenStarsAchievement(game, title, points){
    
	description = format("Get 10 Stars on {0} (Memories mode)", _dictNames[game])
		
	trigger = gameScreen(game)
	&& gameUnlocked(game)
	&& gotTenStars(game)
	&& lives > 0
            
    achievement(title = title + "!", points = points, description = description, trigger = trigger)	
}
function MinigameStarAchievement(game, title, points){
    
	description = format("Complete {0} (Memories mode)", _dictNames[game])
		
	trigger = gameScreen(game)
	&& gameUnlocked(game)
	&& gotStar(game)
	&& lives > 0
            
    achievement(title = title + "!", points = points, description = description, trigger = trigger)	
}

function BossTimeAchievement(game, mins, secs, title, points) {
	
	description = format("Complete {0} in {1} or less (Memories mode)", _dictNames[game], formatTime(mins, secs))
	
	time = (mins * 60 * 60) + (secs * 60) + 1
			
	trigger = pgameScreen(game)
	&& unless(mode != _mdMemories)
	&& unless(once(hasQuit()))
	&& unless(tally(time, pause1 == 0))	
	&& gameUnlocked(game)
	&& haveStar(game)
	&& gameEnded()	
	&& (always_false() || 
		never(currentScreen == _scMemories 
				|| lives == 0))
	            
    achievement(title = title, points = points, description = description, trigger = trigger)	
}


function HellGamesAchievement(group, title, points){
    
	games = _dicHellGames[group]
	
	description = format("Complete {0} without failing on Hell", 
							formatNames(games))
		
	trigger = hellMinigames(_dfHell, games)	
	&& (always_false() 
		|| (never(hasQuitS()) //-Pause and Quit
		&& never(died())) //-Reset if died
		)
            
    achievement(title = title, points = points, description = description, trigger = trigger)	
}

function NakedAchievement(title, points){
	description = "Make the girl on the title screen lose her top"
		
	trigger = language == 0 //-Japanese
		&& prev(currentScreen) == _scOption
		&& currentScreen == _scTitle
            
    achievement(title = title, points = points, description = description, trigger = trigger)	
}

//#endregion

//#region Leaderboard Logic
function bossMinigameTimesLeaderboard(game){
	title = _dictNames[game]
    description = format("Finish {0} as fast as you can", _dictNames[game])
		
    start =  gameScreen(game) && gameStarted()
    cancel = hasQuit() || died()
    submit = lives > 0 && gameEndedBoss()
    value = measured(pause1 == 0)
    leaderboard(title, description, start, cancel, submit, value, "FRAMES")    
}

//#endregion

//#region Achievements
//-Beat the game on Normal (10)
BeatGameAchievement(_dfNormal, "Rub Lover!", 10)

//-Beat the game on Normal without losing a life (25)
BeatNormalAchievement("My One and Only!", 50)
BeatDeathlessAchievement(_dfNormal, "My Only Love!", 25)

//-Beat the game on Hard (25)
BeatGameAchievement(_dfHard, "Magic Lovers!", 25)

//-Beat the game on Hard without getting a Game Over (50)
BeatDeathlessAchievement(_dfHard, "Rub Is Love ❤️", 50)

//-Beat the game on Hell (25)
BeatGameAchievement(_dfHell, "Romantic Hell!", 25)

//-Complete Goldfish, Parachute, Candle and Cart without losing a life on Hell (10) [10, 10, 10, 10] (2+2+2+4=10)
HellGamesAchievement(0, "Super Performance!", 10)
//-Complete Bull, Cleanup, Antlion and Bus Stop without losing a life on Hell (10) [1-1-10-10] (2+1+6+4=13)
HellGamesAchievement(1, "Super Heroic Performance!", 10)
//-Complete Monocycle and Painter without losing a life on Hell (10) [10-10] (6+3=9)
HellGamesAchievement(2, "Super Strong Heavy-duty Performance!", 10)
//-Complete Scorpion, Sign, Microphone and Hands without losing a life on Hell (10) [10-10-10-1] (4+4+2+2=12)
HellGamesAchievement(3, "Super Date!", 10)
//-Complete Drive, Yatch and Bonfire without losing a life on Hell (10) [1-10-1] (4+2+3=9)
HellGamesAchievement(4, "Super Escape!", 10)
//-Complete Dance, Snake and Seeker without losing a life on Hell (10) [10-10-10] (6+4+2=12)
HellGamesAchievement(5, "Super Stranded!", 10)
//-Complete Plants, Chaser and Steal without losing a life on Hell (10) [1-10-10] (3+6+4=13)
HellGamesAchievement(6, "Super Rescuer!", 10)
//-Complete Nightmare, Nightmare2 and Nightmare3 without losing a life on Hell (10) [1-1-1] (3+4+4=11)
HellGamesAchievement(7, "Super Nightmare!", 10)
//-Complete Last Battle, Final Battle and Magic Touch without losing a life on Hell (10) [1-1-1] (4+5+3=12)
HellGamesAchievement(8, "Super Hero!", 10)

//-Find 30 rabbits (5)
RabbitsAchievement(30, "Poke!", 5)
//-Find 60 rabbits (10)
RabbitsAchievement(60, "Rub It!", 10)

//-Get 10 Stars on Goldfish (5)
MinigameTenStarsAchievement(_mgGoldfish, _dictNames[_mgGoldfish], 5)
//-Get 10 Stars on Parachute (5)
MinigameTenStarsAchievement(_mgParachute, _dictNames[_mgParachute], 5)
//-Get 10 Stars on Candle (5)
MinigameTenStarsAchievement(_mgCandle, _dictNames[_mgCandle], 5)
//-Get 10 Stars on Cart (5)
MinigameTenStarsAchievement(_mgCart, _dictNames[_mgCart], 5)
//-Get 10 Stars on Antlion (10)
MinigameTenStarsAchievement(_mgAntlion, _dictNames[_mgAntlion], 10)
//-Get 10 Stars on Bus Stop (5)
MinigameTenStarsAchievement(_mgBusstop, _dictNames[_mgBusstop], 5)
//-Get 10 Stars on Monocycle (10)
MinigameTenStarsAchievement(_mgMonocycle, _dictNames[_mgMonocycle], 10)
//-Get 10 Stars on Painter (5)
MinigameTenStarsAchievement(_mgPainter, _dictNames[_mgPainter], 5)
//-Get 10 Stars on Scorpion (5)
MinigameTenStarsAchievement(_mgScorpion, _dictNames[_mgScorpion], 5)
//-Get 10 Stars on Sign (5)
MinigameTenStarsAchievement(_mgSign, _dictNames[_mgSign], 5)
//-Get 10 Stars on Microphone (2)
MinigameTenStarsAchievement(_mgMicrophone, _dictNames[_mgMicrophone], 5)
//-Get 10 Stars on Yacht (5)
MinigameTenStarsAchievement(_mgYacht, _dictNames[_mgYacht], 5)
//-Get 10 Stars on Dance (10)
MinigameTenStarsAchievement(_mgDance, _dictNames[_mgDance], 10)
//-Get 10 Stars on Snake (5)
MinigameTenStarsAchievement(_mgSnake, _dictNames[_mgSnake], 5)
//-Get 10 Stars on Seeker (5)
MinigameTenStarsAchievement(_mgSeeker, _dictNames[_mgSeeker], 5)
//-Get 10 Stars on Chaser (10)
MinigameTenStarsAchievement(_mgChaser, _dictNames[_mgChaser], 10)
//-Get 10 Stars on Steal (5)
MinigameTenStarsAchievement(_mgSteal, _dictNames[_mgSteal], 5)

//-Complete Bull in less than (5)
//-BossTimeAchievement(_mgBull, 2, 25, _dictNames[_mgBull], 5)
MinigameStarAchievement(_mgBull, _dictNames[_mgBull], 2)
//-Complete Cleanup in less than (5)
//-BossTimeAchievement(_mgCleanup, 1, 15, _dictNames[_mgCleanup], 5)
MinigameStarAchievement(_mgCleanup, _dictNames[_mgCleanup], 2)
//-Complete Hands in less than (5)
//-BossTimeAchievement(_mgHands, 9, 0, _dictNames[_mgHands], 5)
MinigameStarAchievement(_mgHands, _dictNames[_mgHands], 2)
//-Complete Drive in less than (5)
//-BossTimeAchievement(_mgDrive, 9, 0, _dictNames[_mgDrive], 5)
MinigameStarAchievement(_mgDrive, _dictNames[_mgDrive], 5)
//-Complete Bonfire in less than (5)
//-BossTimeAchievement(_mgBonfire, 9, 0, _dictNames[_mgBonfire], 5)
MinigameStarAchievement(_mgBonfire, _dictNames[_mgBonfire], 2)
//-Complete Plants in less than (5)
//-BossTimeAchievement(_mgPlants, 9, 0, _dictNames[_mgPlants], 5)
MinigameStarAchievement(_mgPlants, _dictNames[_mgPlants], 5)
//-Complete Nightmare in less than (5)
//-BossTimeAchievement(_mgNightmare, 9, 0, _dictNames[_mgNightmare], 5)
MinigameStarAchievement(_mgNightmare, _dictNames[_mgNightmare], 3)
//-Complete Nightmare2 in less than (5)
//-BossTimeAchievement(_mgNightmare2, 9, 0, _dictNames[_mgNightmare2], 5)
MinigameStarAchievement(_mgNightmare2, _dictNames[_mgNightmare2], 5)
//-Complete Nightmare3 in less than (5)
//-BossTimeAchievement(_mgNightmare3, 9, 0, _dictNames[_mgNightmare3], 5)
MinigameStarAchievement(_mgNightmare3, _dictNames[_mgNightmare3], 5)
//-Complete Last Battle in less than (10)
//-BossTimeAchievement(_mgLastBattle, 9, 0, _dictNames[_mgLastBattle], 10)
MinigameStarAchievement(_mgLastBattle, _dictNames[_mgLastBattle], 5)
//-Complete Final Battle in less than (5)
//-BossTimeAchievement(_mgFinalBattle, 9, 0, _dictNames[_mgFinalBattle], 5)
MinigameStarAchievement(_mgFinalBattle, _dictNames[_mgFinalBattle], 3)
//-Complete Magic Touch in less than (5)
//-BossTimeAchievement(_mgMagicTouch, 1, 40, _dictNames[_mgMagicTouch], 5)
MinigameStarAchievement(_mgMagicTouch, _dictNames[_mgMagicTouch], 2)

//-Maybe....
NakedAchievement("Ecchi!", 1)
//-Touch the girl's breasts and lose heart level (1)
//-Touch the girl's privates and lose heart level (2)

//#endregion

//#region Leaderboards
//-Complete 1Lv minigames
bossMinigameTimesLeaderboard(_mgBull)
bossMinigameTimesLeaderboard(_mgCleanup)
bossMinigameTimesLeaderboard(_mgHands)
bossMinigameTimesLeaderboard(_mgDrive)
bossMinigameTimesLeaderboard(_mgBonfire)
bossMinigameTimesLeaderboard(_mgPlants)
bossMinigameTimesLeaderboard(_mgNightmare)
bossMinigameTimesLeaderboard(_mgNightmare2)
bossMinigameTimesLeaderboard(_mgNightmare3)
bossMinigameTimesLeaderboard(_mgLastBattle)
bossMinigameTimesLeaderboard(_mgFinalBattle)
bossMinigameTimesLeaderboard(_mgMagicTouch)

//#endregion

//#region Rich Presence
rich_presence_conditional_display(currentScreen == _scTitle, "In the Title Screen [🐰:{0}] [⭐:{1}]",
rich_presence_value("val", ownedRabbits()),
rich_presence_value("val", ownedStars()))

rich_presence_conditional_display(currentScreen == _scOption, "At the Options menu")

rich_presence_conditional_display(currentScreen == _scManiac, "Dressing your crush [🐰:{0}] [⭐:{1}]",
rich_presence_value("val", ownedRabbits()),
rich_presence_value("val", ownedStars()))

rich_presence_conditional_display(currentScreen == _scSoundTest, "Making music 🎵 [🐰:{0}] [⭐:{1}]",
rich_presence_value("val", ownedRabbits()),
rich_presence_value("val", ownedStars()))

rich_presence_conditional_display(mode == _mdMemories && currentScreen == _scMemories, "[Memories] Choosing a game... [🐰:{0}] [⭐:{1}]",
rich_presence_value("val", ownedRabbits()),
rich_presence_value("val", ownedStars()))

rich_presence_conditional_display(mode == _mdMemories, "[Memories] Playing {0} Stage {1} [🐰:{2}] [⭐:{3}]",
rich_presence_lookup("Game", minigame, _dictNames),
rich_presence_value("val", minigameLevel),
rich_presence_value("val", ownedRabbits()),
rich_presence_value("val", ownedStars()))

rich_presence_conditional_display(mode == _mdStory && currentScreen < _scBaseGame, "[{0}] Trying to impress your crush... [🐰:{1}] [⭐:{2}]",
rich_presence_lookup("Difficulty", difficulty, _dictDiff),
rich_presence_value("val", ownedRabbits()),
rich_presence_value("val", ownedStars()))

rich_presence_conditional_display(mode == _mdStory, "[{0}] Playing {1} Stage {2} [🐰:{3}] [⭐:{4}]",
rich_presence_lookup("Difficulty", difficulty, _dictDiff),
rich_presence_lookup("Game", minigame, _dictNames),
rich_presence_value("val", minigameLevel),
rich_presence_value("val", ownedRabbits()),
rich_presence_value("val", ownedStars()))

rich_presence_display("In the Title Screen")
//#endregion
