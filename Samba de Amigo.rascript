// Samba de Amigo
// #ID = 3454

//#region Variables
//-Modes
_mTitle = 7
_mArcade = 0xb
_mOriginal = 0xd
_mChallenge = 0xf
_mParty = 9
_mBattle = 0x11
_mCouple = 0x13
_mMinigame = 0x15


//-Difficulties
_dEasy = 0
_dNormal = 1
_dHard = 2
_dSuperHard = 3
_dRandom = 4

//-Rank
_rA = 4
_rB = 3
_rC = 2
_rD = 1
_rE = 0

//-Songs
_sSamba = 0 //-97 Linda
_sMacarena = 1 //-92 BinBon
_sRitmo = 2 //-98 Amigo
_sTub = 4 //-97 Linda
_sMambo = 5 //-50-52 BinBon
_sTakeOnMe = 6 //-84 Rio Chuba Wuba
_sCup = 7 //-98 Linda
_sVidaLoca = 8 //-99 Rio Chuba Wuba
_sBamba = 9 //-58 Rio Chuba Wuba
_sLove = 0xa //-??99? Amigo
_sAli = 0xb //-77 Amigo
_sSoul = 0xc //-62 Amigo
_sTequila = 0xe //-58 Amigo
_sOpenHeart = 0xf //-98 Rio Chuba Wuba
_sDoAnything = 0x10 //-93 BinBon
_sSonicRacing = 0x11 //-97 Rio Chuba Wuba
_sBurningHeart = 0x12 //-98 Rio Chuba Wuba
_sDreams = 0x13 //-96 Linda
_sMagicalSound = 0x14 //-86 Amigo
_sAfterBurner = 0x15 //-87 Amigo
_sOpa = 0x16 //-86 Amigo
_sSambaA = 0x17 //-??99? Amigo
_sRentHero = 0x18 //-91 Amigo

_sStatePause = 0
_sStateRestarted = 1
_sStatePlay = 2
_sStateResult = 3

//-Challenge
_chBeginner = 0
_chPro = 1
_chExpert = 2
_chMaster = 3
_chKing = 4

//-Minigame
_mgmTotalCheck = 0
_mgm1Stage = 1

_mgGuacamole = 0
_mgPowerRush = 1
_mg12samba = 2
_mgStrike = 3
_mgMonkey = 4


//#endregion

//#region Dictionaries

_dictSongs = {
	_sSamba: "Samba de Janeiro",
	_sMacarena: "Macarena",
	_sRitmo: "El Ritmo Tropical",
	_sTub: "Tubthumping",
	_sMambo: "Al Compas del Mambo",
	_sTakeOnMe: "Take On Me",
	_sCup: "The Cup of Life",
	_sVidaLoca: "Livin´ la Vida Loca",
	_sBamba: "La Bamba",
	_sLove: "Love Lease",
	_sAli: "Ali Bombaye",
	_sSoul: "Soul Bossa Nova",
	_sTequila: "Tequila",
	_sOpenHeart: "Open Your Heart",
	_sDoAnything: "Sonic-You Can Do Anything",
	_sSonicRacing: "Super Sonic Racing",
	_sBurningHeart: "Burning Hearts",
	_sDreams: "DREAMS DREAMS",
	_sMagicalSound: "Magical Sound Shower",
	_sAfterBurner: "After Burner",
	_sOpa: "Opa-Opa!",
	_sSambaA: "Samba de Amigo",
	_sRentHero: "Rent a Hero No.1"
}

_dictDifficulty = {
	_dEasy: "Easy",
	_dNormal: "Normal",
	_dHard: "Hard",
	_dSuperHard: "Super Hard",
	_dRandom: "Random"
}

_dictChallenge = {
	_chBeginner: "Beginner",
	_chPro: "Pro",
	_chExpert: "Expert",
	_chMaster: "Master",
	_chKing: "King"
}

_dictMinigameMode = {
	_mgmTotalCheck: "Total Check Mode",
	_mgm1Stage: "1 Stage Mode"
}

_dictMinigames = {
	_mgGuacamole: "Guacamole",
	_mgPowerRush: "Power Rush",
	_mg12samba: "1-2-Samba!",
	_mgStrike: "Strike a Pose!",
	_mgMonkey: "Monkey See, Monkey Do"
}

_dictChallengeLast = {
	_chBeginner: 3,
	_chPro: 4,
	_chExpert: 5,
	_chMaster: 5,
	_chKing: 5
}

//#endregion

//#region Memory Accessors
mode = byte(0x7ca790)

//-Arcade/Original
difficulty = byte(0x7c9838)
menuStage = byte(0x7c9840) //-05 = Select height 07 = Select Music 09 = Playing, 0xf = End Results
songId = byte(0x23ada8)
arcadeOriginal = dword(0x7c9964)

//-Challenge
challengeStage = dword(0x7c9938)
challengeGroup = dword(0x7c9884)
challengeNumber = dword(0x7c9888)
challengeBeaten = 0x257684

//-Song
songComboPointer = tbyte(0x253b08)
songCombo = word(songComboPointer + 0x20A8)
totalScore = dword(0x23adac)
lastRank = byte(0x23adb0)

//-Song Values
songState = dword(0x7c9750)
songNumber = byte(0x7c9848)

//-SongShownResults
songScoreLB = dword(0x7c9770)
songRScore = dword(0x7c9780)
songRRank = dword(0x7c977c)
songRCombo = word(0x7c9784)
songRRate = word(0x7c9788)

//-SongOtherResults
songOScore = dword(0x7c986c)
songPlayed1 = byte(0x7c9870)
songPlayed2 = byte(0x7c9871)
songPlayed3 = byte(0x7c9872)
songPlayed4 = byte(0x7c9873)
rate1 = byte(0x7c98e4)
rate2 = byte(0x7c98f4)
rate3 = byte(0x7c9934)
rate4 = byte(0x7c9944)

//-Party
stageBattle = dword(0x7c9918)
difficultBattle = dword(0x7c9920)
stageLove = dword(0x7c98b8)
difficultLove = dword(0x7c9920)

minigameStage = dword(0x7c98f8)
minigameMode = dword(0x7c9900)
minigameNumber = dword(0x256af0) //-0x7c98fc also works

minigameStageResult = byte(0x256ac0) //-7-Playing 8-Timeup 9-Results
minigameFirstResult = 0x256af4
minigameGuacamoleResult = byte(0x256af4)
minigamePowerRushResult = byte(0x256af8)
minigame12SambaResult = byte(0x256afc)
minigameStrikePoseResult = byte(0x256b00)
minigameMonkeySeeResult = byte(0x256b04)
minigameGuacamoleCombo = byte(0x256b1c)
minigamePowerRushCombo = byte(0x256b20)
minigame12SambaCombo = byte(0x256b24)
minigameStrikePoseCombo = byte(0x256b28)
minigameMonkeySeeCombo = byte(0x256b2c)

//-Options
defaultDifficulty = byte(0x2575d0)
stagesEasy = byte(0x2575d4)
stagesNormal = byte(0x2575d8)
stagesHard = byte(0x2575dc)
continueFlav = byte(0x2575e8)
controlType = byte(0x2575ec)
sound = byte(0x2575f0)

//-Play Unlock
songUnlockTakeOnMe = byte(0x257570)
songUnlockVidaLoca = byte(0x257578)
songUnlockBamba = byte(0x25757c)

//-Arcade Unlock
songUnlockLoveLease = byte(0x257580)
songUnlockSoul = byte(0x257588)
songUnlockTequila = byte(0x257590)

//-Challenge unlock
songUnlockTrio = byte(0x257600)
songUnlockSambaA = byte(0x257604)
songUnlockAli = byte(0x257608)

//-DLC Unlock
songUnlockOpenHeart = byte(0x257610)
songUnlockDoAnything = byte(0x257614)
songUnlockSonicRacing = byte(0x257618)
songUnlockBurningHearts = byte(0x25761c)
songUnlockDreams = byte(0x257620)
songUnlockAfterBurner = byte(0x257624)
songUnlockMagicalSound = byte(0x257628)
songUnlockOpa = byte(0x25762c)
songUnlockRentHero = byte(0x257630)

//#endregion

//#region Functions
function inSong(song) => songId == song
function inDifficulty(diff) => difficulty == diff
function inArcadeOriginal() => mode == _mArcade || mode == _mOriginal
function shownResults() => prior(songState) == _sStatePlay && songState == _sStateResult
function shownResultsLB() => prev(songState) == _sStatePlay && songState == _sStateResult && songScoreLB == 0
function lastSong() => prev(menuStage) == 0x9 && menuStage == 0xe
function endRound() => prev(menuStage) == 0xe && menuStage == 0xf
function paused() => songState == _sStatePause
function hasPaused() => songState == _sStatePause && menuStage == 9
function restarted() => songState == _sStateRestarted
function changedSong() => songNumber == prev(songNumber) + 1
function songScoreSummed() => songRScore == songOScore
function sendLBScore() => prev(songScoreLB) == 0 && songScoreLB == 2
function standaloneSongScore() => songRScore - prev(songRScore)
function inTitle() => mode <= _mTitle
function inArcade() => mode == _mArcade
function inOriginal() => mode == _mOriginal
function inChallenge() => mode == _mChallenge
function inChallengeGroup(group) => inChallenge() && challengeGroup == group
function isPlaying() => menuStage == 9
function isPlayingChallenge() => challengeStage == 0xd
function finishedChallenge() => prev(challengeStage) == 0x10 && challengeStage == 0x13
function finishedMinigame() => prev(minigameStageResult) == 0x8 && minigameStageResult == 0x9
function minigameResult(mini) => byte(minigameFirstResult + mini * 4)
function inParty() => mode == _mParty
function inBattle() => mode == _mBattle
function playingBattle() => stageBattle == 0xb
function inLove() => mode == _mCouple
function playingLove() => stageLove == 0xb
function inMinigames() => mode == _mMinigame
function inMinigame(mini) => minigameNumber == mini
function playingMinigames() => minigameStage == 9
function playedSong(song) => songPlayed1 == song || songPlayed2 == song || songPlayed3 == song || songPlayed4 == song

function allPerfect() => rate1 == 100 && 
						rate2 == 100 && 
						rate3 == 100 && 
						rate4 == 100

function finishedLastChallenge(group) {
	lastChallenge = _dictChallengeLast[group]
	challengeBeatenAdd = byte(challengeBeaten + group)
	
	return inChallengeGroup(group) && prev(challengeBeatenAdd) == lastChallenge - 1 && challengeBeatenAdd == lastChallenge
}

function playUnlocked() => 
					songUnlockTakeOnMe + 
					songUnlockVidaLoca + 
					songUnlockBamba + 
					songUnlockSambaA +
					songUnlockAli +
					songUnlockOpenHeart +
					songUnlockDoAnything +
					songUnlockSonicRacing +
					songUnlockBurningHearts +
					songUnlockDreams +
					songUnlockAfterBurner +
					songUnlockMagicalSound +
					songUnlockOpa +
					songUnlockRentHero == 14
					
function arcadeUnlocked() => 
					songUnlockLoveLease +
					 songUnlockSoul +
					 songUnlockTequila == 3 ||
					 songUnlockTrio == 1
					 
function prevPlayUnlocked() => 
					prev(songUnlockTakeOnMe) + 
					prev(songUnlockVidaLoca) + 
					prev(songUnlockBamba) + 
					prev(songUnlockSambaA) +
					prev(songUnlockAli) +
					prev(songUnlockOpenHeart) +
					prev(songUnlockDoAnything) +
					prev(songUnlockSonicRacing) +
					prev(songUnlockBurningHearts) +
					prev(songUnlockDreams) +
					prev(songUnlockAfterBurner) +
					prev(songUnlockMagicalSound) +
					prev(songUnlockOpa) +
					prev(songUnlockRentHero) == 13

function prevArcadeUnlocked() => 
					 prev(songUnlockLoveLease) +
					 prev(songUnlockSoul) +
					 prev(songUnlockTequila) == 2 ||
					 prev(songUnlockTrio) == 0
					 
function AllSongsUnlocked() => (playUnlocked() && arcadeUnlocked())

function NotAllSongsUnlocked() =>
					(prevPlayUnlocked() && arcadeUnlocked() ||
					playUnlocked() && prevArcadeUnlocked())

//#endregion

//#region Achievement logic
function groupAchievement(id, title, songs, points){
	trigger = never(!inOriginal())
			&& any_of(songs, inSong)
			&& inDifficulty(_dHard)
			&& once(inSong(songs[0]) 
				&& songRRank == _rA
				&& songRRate >= 98)
			&& once(inSong(songs[1]) 
				&& songRRank == _rA
				&& songRRate >= 98)
			&& once(inSong(songs[2]) 
				&& songRRank == _rA
				&& songRRate >= 98)
			&& trigger_when(shownResults())
	
	if (length(songs) == 3){
		description = format("Get Rank A and 98% on {0}, {1} and {2} on a single Hard (Original) game", 
					_dictSongs[songs[0]], 
					_dictSongs[songs[1]],
					_dictSongs[songs[2]])
	}
	else{
		description = format("Get Rank A and 98% on {0}, {1}, {2} and {3} on a single Hard (Original) game", 
			_dictSongs[songs[0]], 
			_dictSongs[songs[1]], 
			_dictSongs[songs[2]],
			_dictSongs[songs[3]])
		
		trigger = trigger 
				&& once(inSong(songs[3]) 
					&& songRRank == _rA
					&& songRRate >= 98)
	}
	
	achievement(title = title, points = points, description = description, trigger = trigger, id = id)
}

function songAchievement(id, title, song, points){
	
	description = format("Get Rank A and 98% or more on {0} (Super Hard, Arcade/Original)", _dictSongs[song])
	
	trigger = inSong(song)
			&& inArcadeOriginal()
			&& inDifficulty(_dSuperHard)
			&& shownResults()
			&& songRRank == _rA
			&& songRRate >= 98

	achievement(title = title, points = points, description = description, trigger = trigger, id = id)
}

function challengeAchievement(id, chall, points){
	
	title = format("Maracas {0}", _dictChallenge[chall])
	description = format("Complete every challenge of Maracas {0}", _dictChallenge[chall])
	
	trigger = finishedLastChallenge(chall)
			&& finishedChallenge()

	achievement(title = title, points = points, description = description, trigger = trigger, id = id)
}

function minigameAchievement(id, mini, title, points){
	description = format("Get 90 or more points on {0}", _dictMinigames[mini])
	
	trigger = inMinigames()
			&& inMinigame(mini)
			&& finishedMinigame()
			&& minigameResult(mini) >= 90

	achievement(title = title, points = points, description = description, trigger = trigger, id = id)
}

function allSongsAchievement(id, title, points) {
	description = "Unlock every song"
	
	trigger = AllSongsUnlocked()
			&& NotAllSongsUnlocked()

	achievement(title = title, points = points, description = description, trigger = trigger, id = id)
}

function perfectAchievement(id, title, diff, points) {
	description = format("Score Perfect on every 4 songs on {0} without restarting (Arcade/Original)", _dictDifficulty[diff])
	
	trigger = inArcadeOriginal()
			&& never(hasPaused())
			&& once(menuStage == 5)
			&& inDifficulty(diff)
			&& allPerfect()
			&& shownResults()

	achievement(title = title, points = points, description = description, trigger = trigger, id = id)
}

//#endregion

//#region Leaderboard Logic
function songLeaderboard(diff, song){
	
	if (diff == _dNormal) {
		title = format("{0}", _dictSongs[song])
	
		description = format("{0}", _dictDifficulty[diff])
	}
	else{
		title = format("{0}", _dictDifficulty[diff])
	
		description = ""
	}
		
    start = inArcadeOriginal()
			&& inDifficulty(diff)
			&& inSong(song)
			&& shownResultsLB()
			
    cancel = paused()
	
    submit = sendLBScore()//-changedSong() && songScoreSummed()
			
    value = standaloneSongScore()
	
    leaderboard(title, description, start, cancel, submit, value, "SCORE")    
}

function roundLeaderboard(diff){	
	title = format("[{0}] Highest score Arcade/Original", _dictDifficulty[diff])

	description = ""	
		
    start = inArcadeOriginal()
			&& inDifficulty(diff)
			&& lastSong()
			
    cancel = paused()
	
    submit = endRound()//-changedSong() && songScoreSummed()
			
    value = totalScore
	
    leaderboard(title, description, start, cancel, submit, value, "SCORE")    
}

//#endregion

//#region Achievements
//-Group Hard Achievements
//--Samba Janeiro + Amigo (Samba)
groupAchievement(111000024, "Linda's Challenge", [_sSamba, _sTub, _sCup, _sDreams], 10)
//--El Ritmo Tropical + Love Lease (Game)

//--Cup Of Life + Livin la Vida Loca (Ricky Martin)
groupAchievement(111000025, "Rio's Challenge", [_sBamba, _sTakeOnMe, _sVidaLoca, _sBurningHeart], 10)
//--Take on Me + Macarena + Tubthumping (80's & 90's)

//--Soul Bossa Nova + Ali Bombaye (Movies)
groupAchievement(111000026, "Chumba's Challenge", [_sSoul, _sAli, _sRitmo], 10)
//--Al Compas del Mambo + La Bamba + Tequila (Good old 50's)
groupAchievement(111000027, "Wamba's Challenge", [_sMambo, _sTequila, _sSambaA], 10)
//--Open Your Heart + Sonic You Can Do Anything + Super Sonic Racing (Sonic)
groupAchievement(111000028, "Sonic's Challenge", [_sOpenHeart, _sDoAnything, _sSonicRacing], 10)
//--Burning Hearts + Rent a Hero No1 (Hero)
groupAchievement(111000029, "Bingo's Challenge", [_sMambo, _sAfterBurner, _sRentHero], 10)
//--Dreams Dreams + Opa-opa! (Fantasy)
groupAchievement(111000030, "Bongo's Challenge", [_sMacarena, _sMagicalSound, _sOpa], 10)

//-One per SuperHard
songAchievement(111000001, _dictSongs[_sSamba], _sSamba, 10)
songAchievement(111000002, _dictSongs[_sMacarena], _sMacarena, 10) 
songAchievement(111000003, _dictSongs[_sRitmo], _sRitmo, 10) 
songAchievement(111000004, _dictSongs[_sTub], _sTub, 10) 
songAchievement(111000005, _dictSongs[_sMambo], _sMambo, 10) 
songAchievement(111000006, _dictSongs[_sTakeOnMe], _sTakeOnMe, 10) 
songAchievement(111000007, _dictSongs[_sCup], _sCup, 10) 
songAchievement(111000008, _dictSongs[_sVidaLoca], _sVidaLoca, 10) 
songAchievement(111000009, _dictSongs[_sBamba], _sBamba, 10) 
songAchievement(111000010, _dictSongs[_sLove], _sLove, 10) 
songAchievement(111000011, _dictSongs[_sAli], _sAli, 10) 
songAchievement(111000012, _dictSongs[_sSoul], _sSoul, 10) 
songAchievement(111000013, _dictSongs[_sTequila], _sTequila, 10) 
songAchievement(111000014, _dictSongs[_sOpenHeart], _sOpenHeart, 10) 
songAchievement(111000015, _dictSongs[_sDoAnything], _sDoAnything, 10) 
songAchievement(111000016, _dictSongs[_sSonicRacing], _sSonicRacing, 10)
songAchievement(111000017, _dictSongs[_sBurningHeart], _sBurningHeart, 10) 
songAchievement(111000018, _dictSongs[_sDreams], _sDreams, 10) 
songAchievement(111000019, _dictSongs[_sMagicalSound], _sMagicalSound, 10) 
songAchievement(111000020, _dictSongs[_sAfterBurner], _sAfterBurner, 10) 
songAchievement(111000021, _dictSongs[_sOpa], _sOpa, 10) 
songAchievement(111000022, _dictSongs[_sSambaA], _sSambaA, 10) 
songAchievement(111000023, _dictSongs[_sRentHero], _sRentHero, 10) 

//-All Songs Unlocked (5)
allSongsAchievement(111000044, "My Vinyl Collection", 5)
//-All Normal perfect 4 songs (10)
perfectAchievement(111000045, "Maracas Enthusiast", _dNormal, 10)
//-All Random perfect 4 songs (25)
perfectAchievement(111000046, "Ain't Nothin' Gonna Break my Stride", _dRandom, 25)

//-One per challenge
challengeAchievement(111000034, _chBeginner, 5)
challengeAchievement(111000035, _chPro, 5)
challengeAchievement(111000036, _chExpert, 10)
challengeAchievement(111000037, _chMaster, 10)
challengeAchievement(111000038, _chKing, 25)

//-One per Minigame
minigameAchievement(111000039, _mgGuacamole, "The Smashing Moles", 1)
minigameAchievement(111000040, _mgPowerRush, "Amigo Used Rock Smash!", 4)
minigameAchievement(111000041, _mg12samba, "Uno, Dos, Samba!", 3)
minigameAchievement(111000042, _mgStrike, "What A Poser", 2)
minigameAchievement(111000043, _mgMonkey, "Do The Monkey!", 5)

//#endregion

//#region Leaderboards
roundLeaderboard(_dNormal)
roundLeaderboard(_dHard)
roundLeaderboard(_dSuperHard)
roundLeaderboard(_dRandom)

for songs in _dictSongs {
	for diff in _dictDifficulty {
		if (diff > _dEasy && diff < _dRandom){
			songLeaderboard(diff, songs)
		}	
	}
}

//#endregion

//#region Rich Presence
rich_presence_conditional_display(inTitle(), "In the Title Screen")

rich_presence_conditional_display(inArcade() && isPlaying(), "[Arcade] {0} ({1}) Total Score: {2}"
			, rich_presence_lookup("song", songId, _dictSongs)
			, rich_presence_lookup("diff", difficulty, _dictDifficulty)
			, rich_presence_value("score", totalScore))
			
rich_presence_conditional_display(inArcade(), "[Arcade] Selecting options...")

			
rich_presence_conditional_display(inOriginal() && isPlaying(), "[Original] {0} ({1}) Total Score: {2}"
			, rich_presence_lookup("song", songId, _dictSongs)
			, rich_presence_lookup("diff", difficulty, _dictDifficulty)
			, rich_presence_value("score", totalScore))
			
rich_presence_conditional_display(inOriginal(), "[Original] Selecting options...")

rich_presence_conditional_display(inChallenge() && isPlayingChallenge(), "[Challenge] Maracas {0} (Challenge No.{1})"
			, rich_presence_lookup("challenge", challengeGroup, _dictChallenge)
			, rich_presence_value("challNum", challengeNumber + 1))
			
rich_presence_conditional_display(inChallenge(), "[Challenge] Selecting challenge...")

rich_presence_conditional_display(inBattle() && playingBattle(), "[Battle] {0} ({1})"
			, rich_presence_lookup("song", songId, _dictSongs)
			, rich_presence_lookup("diff", difficultBattle, _dictDifficulty))

rich_presence_conditional_display(inBattle(), "[Battle] Selecting options...")

rich_presence_conditional_display(inLove() && playingLove(), "[Couples] {0} ({1})"
			, rich_presence_lookup("song", songId, _dictSongs)
			, rich_presence_lookup("diff", difficultLove, _dictDifficulty))

rich_presence_conditional_display(inLove(), "[Couples] Selecting options...")

rich_presence_conditional_display(inMinigames() && playingMinigames(), "[Minigames] {0} ({1})"
			, rich_presence_lookup("minigame", minigameNumber, _dictMinigames)
			, rich_presence_lookup("mingameMode", minigameMode, _dictMinigameMode))

rich_presence_conditional_display(inMinigames(), "[Minigames] Selecting options...")

rich_presence_conditional_display(inParty(), "Entering Party mode...")

rich_presence_display("Playing Samba de Amigo")
//#endregion
