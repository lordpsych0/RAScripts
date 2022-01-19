// Pretty Soldier Sailor Moon S
// #ID = 16406

//#region Variables

_atkSpecial1 = 0xc9
_atkSpecial2 = 0xcb
_atkSpecial2a = 0xca
_atkSpecial2b = 0xc0
_atkSpecial3 = 0xcd
_atkSpecial3a = 0xcc
_atkSpecialS = 0xcf
_atkSpecialSa = 0xce

_atkDmg = 0x90

//-Difficulty
_dfEasy = 0
_dfNormal = 1
_dfHard = 2

//-Mode
_mdArcade = 0
_mdVS = 1
_mdTeamBattle = 2
_mdOption = 3
_mdDatabase = 4

//-Characters
_chMoon = 0
_chMercury = 1
_chMars = 2
_chJupiter = 3
_chVenus = 4
_chUranus = 5
_chNeptune = 6
_chPluto = 7
_chChibi = 8
_chSuperMoon = 9

//#endregion

//#region Dictionaries
_dictChar = {
	_chMoon: "Sailor Moon",
	_chMercury: "Sailor Mercury",
	_chMars: "Sailor Mars",
	_chJupiter: "Sailor Jupiter",
	_chVenus: "Sailor Venus",
	_chUranus: "Sailor Uranus",
	_chNeptune: "Sailor Neptune",
	_chPluto: "Sailor Pluto",
	_chChibi: "Sailor Chibi Moon",
	_chSuperMoon: "Super Sailor Moon"
}

_dictDiff = {
	_dfEasy: "Easy",
	_dfNormal: "Normal",
	_dfHard: "Hard"
}

_dictSubMode = {
	1: " (1P VS P2)",
	2: " (COM VS COM)"
}

_dictWins = {
	10: "🌙",
	20: "🌙🌙",
	11: "☿",
	21: "☿️☿️",
	12: "♂️",
	22: "♂️♂️",
	13: "♃",
	23: "♃♃",
	14: "♀️",
	24: "♀️♀️",
	15: "♅",
	25: "♅♅",
	16: "♆",
	26: "♆♆",
	17: "♇",
	27: "♇♇",
	18: "🌙",
	28: "🌙🌙",
	19: "🌙",
	29: "🌙🌙",
}

_dictSuper = {
	_chMoon: {
				_atkSpecial1: "Body Attack",
				_atkSpecial2: "Moon Screw Punch",
				_atkSpecial3: "Moon Tiara Action",
				_atkSpecialS: "Moon Spiral Heart Attack"
			},
	_chMercury: {
				_atkSpecial1: "Air Throw",
				_atkSpecial2: "Reverse Spin Kick",
				_atkSpecial3: "Shabon Spray",
				_atkSpecialS: "Shine Aqua Illusion"
			},
	_chMars: {
				_atkSpecial1: "Mars Snake Fire",
				_atkSpecial2: "Spinning Raven",
				_atkSpecial3: "Fire Soul",
				_atkSpecialS: "Burning Mandala"
			},
	_chJupiter: {
				_atkSpecial1: "Double Axel",
				_atkSpecial2: "Thunderstorm",
				_atkSpecial3: "Supreme Thunder",
				_atkSpecialS: "Sparkling Wide Pressure"
			},
	_chVenus: {
				_atkSpecial1: "Crescent Boomerang",
				_atkSpecial2: "Crescent Beam",
				_atkSpecial3: "Rolling Heart Vibration",
				_atkSpecialS: "Venus Love Me Chain"
			},
	_chUranus: {
				_atkSpecial1: "Somersault Kick",
				_atkSpecial2: "Air Slash",
				_atkSpecial3a: "Spiral Buster",
				_atkSpecialS: "World Shaking"
			},
	_chNeptune: {
				_atkSpecial1: "Sea Serpent Strangle",
				_atkSpecial2: "Tidal Wave",
				_atkSpecial3: "Splash Edge",
				_atkSpecialS: "Deep Submerge"
			},
	_chPluto: {
				_atkSpecial1: "Destiny Spinster",
				_atkSpecial2a: "Twilight",
				_atkSpecial3a: "Dead Scream",
				_atkSpecialSa: "Time Stop"
			},
	_chChibi: {
				_atkSpecial1: "Cyclondo",
				_atkSpecial2b: "Aerial Rapid Punch",
				_atkSpecial3: "Luna P Attack",
				_atkSpecialS: "Pink Sugar Heart Attack"
			},
	_chSuperMoon: {
				_atkSpecial1: "Moon Tiara Action",
				_atkSpecial2: "Super Rabbit Flip",
				_atkSpecial3a: "Moon Strike",
				_atkSpecialS: "Rainbow Moon Heartache"
			}
	}


//#endregion

//#region Memory Accessors
//-Game
mode = byte(0x0e0024)
subMode = byte(0x0e0028)
P1CharSel = byte(0x0e009c)
P2CharSel = byte(0x0e00a0)
battle = byte(0x0e0158)
P1Handicap = byte(0x0e00d8)
P2Handicap = byte(0x0e00dc)
arcadeWinnerFlag = byte(0x0db89b)

//-Team
P1TeamSize = byte(0x0e0178) //-Actual number 1-2-3-4
P2TeamSize = byte(0x0e01b0)
P1Char1 = byte(0x0e0180)
P1Char2 = byte(0x0e0184)
P1Char3 = byte(0x0e0188)
P1Char4 = byte(0x0e018c)

P2Char1 = byte(0x0e01b8)
P2Char2 = byte(0x0e01bc)
P2Char3 = byte(0x0e01c0)
P2Char4 = byte(0x0e01c4)

//-Options
controls = byte(0x0e0160)
difficulty = byte(0x0e0168)
timer = byte(0x0e016c)
sound = byte(0x0e0170)
tv = byte(0x0e0174)

//-Battle
round = byte(0x0c58a8)
roundTimer = dword(0x0c5894)
P1Wins = byte(0x0c58ac)
P2Wins = byte(0x0c58b0)

//-P1
P1Char = byte(0x0d9bc4)
P1Attack = byte(0x0d9bd4)
P1HP = byte(0x0d9bdc)

//-P2
P2Char = byte(0x0d9e24)
P2Attack = byte(0x0d9e34)
P2HP = byte(0x0d9e3c)

//#endregion

//#region Functions
function P1Defeated() => prev(P1HP) > 0 && P1HP == 0
function P1FullHP() => P1HP == 0x64
function P1LastAttack(atk) => P1Attack == atk || prior(P1Attack) == atk
function didSpecialAttack() => P1Attack == _atkSpecial1
							|| P1Attack == _atkSpecial2
							|| P1Attack == _atkSpecial2a
							|| P1Attack == _atkSpecial2b
							|| P1Attack == _atkSpecial3
							|| P1Attack == _atkSpecial3a
							|| P1Attack == _atkSpecialS
							|| P1Attack == _atkSpecialSa

function P1Defeated() => prev(P1HP) > 0 && P1HP == 0
function P2Defeated() => prev(P2HP) > 0 && P2HP == 0
function P2DefeatedTest() => prev(P2HP) > P2HP

function sameHandicap() => P1Handicap == P2Handicap
function normalControls() => controls == 0
function mandatory() => sameHandicap() && normalControls() && inSubmode(0)
function notmandatory() => always_true()
function inMode(md) => mode == md
function inSubmode(sub) => subMode == sub
function inDifficulty(dif) => difficulty >= dif
function ResultsMatch() => battle == 9
function showWinner() => prev(arcadeWinnerFlag) == 0 && arcadeWinnerFlag == 1
function inRound(rd) => round == rd - 1
function roundsWonP2(rd) => P2Wins == rd
function roundsWonP2MoreThan(rd) => P2Wins > rd
function roundsWonP1(rd) => P1Wins == rd
function roundsWonP1MoreThan(rd) => P1Wins > rd
function roundsWonP1T(rd) => prev(P1Wins) == rd - 1 && roundsWonP1(rd)

function currentP1(char) => P1Char == char && P1CharSel == char
function currentP2(char) => P2Char == char && P2CharSel == char
function inBattle() => P1Char == P1CharSel && P2Char == P2CharSel
function oneGirlArmy(char) => P1TeamSize == 1 && P1Char1 == char



//#endregion

//#region Achievement logic
function lastAttackAchievement(id, char, atk, title, points){
		
	description = format("Defeat your opponent with {0}'s {1} special attack, Hard difficulty", _dictChar[char], _dictSuper[char][atk])
	
	trigger = mandatory()
			&& (inMode(_mdArcade) || inMode(_mdVS) || inMode(_mdTeamBattle))
			&& currentP1(char)
			&& inDifficulty(_dfHard)
			&& P1LastAttack(atk)
			&& P2Defeated()
	
	achievement(title = title, points = points, description = description, trigger = trigger, id = id)
}

function arcadeAnyAchievement(id, title, points){
	description = "Finish Super Battle mode on Hard difficulty"
	
	trigger = mandatory()
			&& inMode(_mdArcade)
			&& inDifficulty(_dfHard)
			&& ResultsMatch()
			&& showWinner()
	
	achievement(title = title, points = points, description = description, trigger = trigger, id = id)
}

function arcadeAchievement(id, char, title, points){
	description = format("Finish Super Battle mode on Normal or higher difficulty with {0}", _dictChar[char])
	
	trigger = mandatory()
			&& inMode(_mdArcade)
			&& inDifficulty(_dfNormal)
			&& currentP1(char)
			&& ResultsMatch()
			&& showWinner()
	
	achievement(title = title, points = points, description = description, trigger = trigger, id = id)
}

function versusAchievement(id, char, title, points){
	description = format("Win a fight against {0} without losing any match, Hard difficulty", _dictChar[char])
	
	trigger = mandatory()
			&& (inMode(_mdArcade) || inMode(_mdVS))
			&& inDifficulty(_dfHard)
			&& currentP2(char)
			&& inRound(2)
			&& roundsWonP2(0)
			&& trigger_when(roundsWonP1T(2))
	
	achievement(title = title, points = points, description = description, trigger = trigger, id = id)
}

function noSpecialAchievement(id, title, points){
		
	description = "Defeat your opponent without using special attacks, Hard difficulty"
	
	trigger = mandatory()
			&& (inMode(_mdArcade) || inMode(_mdVS) || inMode(_mdTeamBattle))
			&& inBattle()
			&& inDifficulty(_dfHard)
			&& once(roundTimer == 0)
			&& never(didSpecialAttack())
			&& trigger_when(P2Defeated())
	
	achievement(title = title, points = points, description = description, trigger = trigger, id = id)
}

function perfectAchievement(id, title, points){
		
	description = "Win a Perfect match, Normal or higher"
	
	trigger = mandatory()
			&& (inMode(_mdArcade) || inMode(_mdVS) || inMode(_mdTeamBattle))
			&& inDifficulty(_dfNormal)
			&& P1FullHP()
			&& P2Defeated()
	
	achievement(title = title, points = points, description = description, trigger = trigger, id = id)
}

function teamAchievement(id, char, team, opo, title, points){
	
	trigger = mandatory()
			&& inMode(_mdTeamBattle)
			&& inDifficulty(_dfNormal)
			&& currentP1(char)
			&& oneGirlArmy(char)
			&& never(roundsWonP2MoreThan(0))
			&& never(!inMode(_mdTeamBattle))
	
	defeatCond = always_true()
	for op in team{
		defeatCond = defeatCond && once(currentP2(op) && P2Defeated())
	}
	
	trigger = trigger && defeatCond
	
	description = format("Using only {0} win a Team Battle against {1}, Normal or higher difficulty", _dictChar[char], opo)
			
	achievement(title = title, points = points, description = description, trigger = trigger, id = id)
}

function anyTeamAchievement(id, io, team, opo, title, points){
	
	trigger = mandatory()
			&& inMode(_mdTeamBattle)
			&& inDifficulty(_dfNormal)
			&& never(roundsWonP2MoreThan(0))
			&& never(!inMode(_mdTeamBattle))
			
			
	defeatCond = always_true()
	for op in team{
		defeatCond = defeatCond && once(currentP2(op) && P2Defeated())
	}
	
	trigger = trigger && defeatCond
	
	if (io == 0){
		inOut = "inner"
		trigger = trigger && (
					(currentP1(_chMercury) && oneGirlArmy(_chMercury)) ||
					(currentP1(_chMars) && oneGirlArmy(_chMars)) ||
					(currentP1(_chJupiter) && oneGirlArmy(_chJupiter)) ||
					(currentP1(_chVenus) && oneGirlArmy(_chVenus))
					)
	}
	else{
		inOut = "outer"
		trigger = trigger && (
					(currentP1(_chUranus) && oneGirlArmy(_chUranus)) ||
					(currentP1(_chNeptune) && oneGirlArmy(_chNeptune)) ||
					(currentP1(_chPluto) && oneGirlArmy(_chPluto))
					)
	}
	
	description = format("Using any {0} sailor scout, win a Team Battle against {1}, Normal or higher difficulty", inOut, opo)
	
	achievement(title = title, points = points, description = description, trigger = trigger, id = id)
}

function noticeAchievement(id, title){
		
	description = "Achievements only work with Normal Controls and Default or Equal Handicap"
	
	trigger = prev(mode) == 6 && mode == 0
	
	achievement(title = title, points = 0, description = description, trigger = trigger, id = id)
}
//#endregion

//#region Leaderboard Logic


//#endregion

//#region Achievements
//-Finish Arcade on Normal (10pts, 9 chars, 90pts)
arcadeAchievement(111000001, _chMoon, "Guardian of Love and Justice", 10)
arcadeAchievement(111000002, _chMercury, "Guardian of Love and Intelligence", 10)
arcadeAchievement(111000003, _chMars, "Guardian of Love and Fire", 10)
arcadeAchievement(111000004, _chJupiter, "Guardian of Love and Courage", 10)
arcadeAchievement(111000005, _chVenus, "Guardian of Love and Beauty", 10)
arcadeAchievement(111000006, _chUranus, "Guardian of Heavens", 10)
arcadeAchievement(111000007, _chNeptune, "Guardian of Deep Sea", 10)
arcadeAchievement(111000008, _chPluto, "Guardian of the Underworld", 10)
arcadeAchievement(111000009, _chChibi, "Trainee Guardian of Love and Justice", 10)

//-Finish Hard mode with anyone (25pts)
arcadeAnyAchievement(111000010, "Ultimate Guardian of Love", 25)

//-Defeat each sailor Hard, both rounds (5pts each, 45pts + 10pts for SMoon = 55pts)
versusAchievement(111000011, _chMoon, "She's the One Named Sailor Moon", 5)
versusAchievement(111000012, _chMercury, "Bubbles of Love", 5)
versusAchievement(111000013, _chMars, "She's on Fire", 5)
versusAchievement(111000014, _chJupiter, "She's Electrifying", 5)
versusAchievement(111000015, _chVenus, "Unchain My Heart", 5)
versusAchievement(111000016, _chUranus, "Sailor in the Sky", 5)
versusAchievement(111000017, _chNeptune, "The Sea Maiden", 5)
versusAchievement(111000018, _chPluto, "Sailor of a Lonely Heart", 5)
versusAchievement(111000019, _chChibi, "Rabbit of the Moon", 5)
versusAchievement(111000020, _chSuperMoon, "The Only One, Super Sailor Moon", 10)

//-Defeat your opponent with each super attack (5+4+3+2 pts ea, 14pts ea, 126pts + 14 SMoon = 140pts)
lastAttackAchievement(111000021, _chMoon, _atkSpecial1, _dictSuper[_chMoon][_atkSpecial1], 3)
lastAttackAchievement(111000022, _chMoon, _atkSpecial2, _dictSuper[_chMoon][_atkSpecial2], 4)
lastAttackAchievement(111000023, _chMoon, _atkSpecial3, _dictSuper[_chMoon][_atkSpecial3], 2)
lastAttackAchievement(111000024, _chMoon, _atkSpecialS, _dictSuper[_chMoon][_atkSpecialS], 5)

lastAttackAchievement(111000025, _chMercury, _atkSpecial1, _dictSuper[_chMercury][_atkSpecial1], 4)
lastAttackAchievement(111000026, _chMercury, _atkSpecial2, _dictSuper[_chMercury][_atkSpecial2], 3)
lastAttackAchievement(111000027, _chMercury, _atkSpecial3, _dictSuper[_chMercury][_atkSpecial3], 2)
lastAttackAchievement(111000028, _chMercury, _atkSpecialS, _dictSuper[_chMercury][_atkSpecialS], 5)

lastAttackAchievement(111000029, _chMars, _atkSpecial1, _dictSuper[_chMars][_atkSpecial1], 3)
lastAttackAchievement(111000030, _chMars, _atkSpecial2, _dictSuper[_chMars][_atkSpecial2], 4)
lastAttackAchievement(111000031, _chMars, _atkSpecial3, _dictSuper[_chMars][_atkSpecial3], 2)
lastAttackAchievement(111000032, _chMars, _atkSpecialS, _dictSuper[_chMars][_atkSpecialS], 5)

lastAttackAchievement(111000033, _chJupiter, _atkSpecial1, _dictSuper[_chJupiter][_atkSpecial1], 4)
lastAttackAchievement(111000034, _chJupiter, _atkSpecial2, _dictSuper[_chJupiter][_atkSpecial2], 3)
lastAttackAchievement(111000035, _chJupiter, _atkSpecial3, _dictSuper[_chJupiter][_atkSpecial3], 2)
lastAttackAchievement(111000036, _chJupiter, _atkSpecialS, _dictSuper[_chJupiter][_atkSpecialS], 5)

lastAttackAchievement(111000037, _chVenus, _atkSpecial1, _dictSuper[_chVenus][_atkSpecial1], 3)
lastAttackAchievement(111000038, _chVenus, _atkSpecial2, _dictSuper[_chVenus][_atkSpecial2], 2)
lastAttackAchievement(111000039, _chVenus, _atkSpecial3, _dictSuper[_chVenus][_atkSpecial3], 4)
lastAttackAchievement(111000040, _chVenus, _atkSpecialS, _dictSuper[_chVenus][_atkSpecialS], 5)

lastAttackAchievement(111000041, _chUranus, _atkSpecial1, _dictSuper[_chUranus][_atkSpecial1], 3)
lastAttackAchievement(111000042, _chUranus, _atkSpecial2, _dictSuper[_chUranus][_atkSpecial2], 2)
lastAttackAchievement(111000043, _chUranus, _atkSpecial3a, _dictSuper[_chUranus][_atkSpecial3a], 4)
lastAttackAchievement(111000044, _chUranus, _atkSpecialS, _dictSuper[_chUranus][_atkSpecialS], 5)

lastAttackAchievement(111000045, _chNeptune, _atkSpecial1, _dictSuper[_chNeptune][_atkSpecial1], 2)
lastAttackAchievement(111000046, _chNeptune, _atkSpecial2, _dictSuper[_chNeptune][_atkSpecial2], 3)
lastAttackAchievement(111000047, _chNeptune, _atkSpecial3, _dictSuper[_chNeptune][_atkSpecial3], 4)
lastAttackAchievement(111000048, _chNeptune, _atkSpecialS, _dictSuper[_chNeptune][_atkSpecialS], 5)

lastAttackAchievement(111000049, _chPluto, _atkSpecial1, _dictSuper[_chPluto][_atkSpecial1], 2)
lastAttackAchievement(111000050, _chPluto, _atkSpecial2a, _dictSuper[_chPluto][_atkSpecial2a], 4)
lastAttackAchievement(111000051, _chPluto, _atkSpecial3a, _dictSuper[_chPluto][_atkSpecial3a], 3)
lastAttackAchievement(111000052, _chPluto, _atkSpecialSa, _dictSuper[_chPluto][_atkSpecialSa], 5)

lastAttackAchievement(111000053, _chChibi, _atkSpecial1, _dictSuper[_chChibi][_atkSpecial1], 3)
lastAttackAchievement(111000054, _chChibi, _atkSpecial2b, _dictSuper[_chChibi][_atkSpecial2b], 4)
lastAttackAchievement(111000055, _chChibi, _atkSpecial3, _dictSuper[_chChibi][_atkSpecial3], 2)
lastAttackAchievement(111000056, _chChibi, _atkSpecialS, _dictSuper[_chChibi][_atkSpecialS], 5)

lastAttackAchievement(111000057, _chSuperMoon, _atkSpecial1, "Super " + _dictSuper[_chSuperMoon][_atkSpecial1], 2)
lastAttackAchievement(111000058, _chSuperMoon, _atkSpecial2, _dictSuper[_chSuperMoon][_atkSpecial2], 3)
lastAttackAchievement(111000059, _chSuperMoon, _atkSpecial3a, _dictSuper[_chSuperMoon][_atkSpecial3a], 4)
lastAttackAchievement(111000060, _chSuperMoon, _atkSpecialS, _dictSuper[_chSuperMoon][_atkSpecialS], 5)

//-Perfect on Normal = 5pts
perfectAchievement(111000061, "Sailor Perfecta", 5)
//-No specials on Hard = 5pts
noSpecialAchievement(111000062, "Sailor Melee", 5)

//--Storymade achievements (All hard, change to Normal if too hard) (120pts)
//-Moon VS 4 Inner Senshi
teamAchievement(111000063, _chSuperMoon, [_chMercury, _chMars, _chJupiter, _chVenus], "Sailor Mercury, Mars, Jupiter and Venus", "Neo Queen Serenity", 10)
//-Moon VS 3 Outer Senshi
teamAchievement(111000064, _chMoon, [_chUranus, _chNeptune, _chPluto], "Sailor Uranus, Neptune and Pluto", "Princess Serenity", 10)
//-Any Inner senshi Vs 3 Outer Senshi (The Outsiders)
anyTeamAchievement(111000065, 0, [_chUranus, _chNeptune, _chPluto], "Sailor Uranus, Neptune and Pluto", "The Newcomers", 10)
//-Any 3 Outer senshi VS 4 Inner Senshi (Close To Home)
anyTeamAchievement(111000066, 1, [_chMercury, _chMars, _chJupiter, _chVenus],"Sailor Mercury, Mars, Jupiter and Venus", "The Founding Sailors", 10)
//-Mercury vs Jupiter + Uranus + Moon (Brain over Brawn)
teamAchievement(111000067, _chMercury, [_chJupiter, _chUranus, _chMoon], "Sailor Moon, Jupiter and Uranus", "Brain Over Brawn", 10) 
//-Mars vs Moon + Chibi + SMoon (The Rightful Leader)
teamAchievement(111000068, _chMars, [_chMoon, _chChibi, _chSuperMoon], "Sailor Moon, Chibi Moon and Super Sailor Moon", "The Rightful Leader", 10)
//-Jupiter vs Venus + Mars + Mercury (Internal fight)
teamAchievement(111000070, _chJupiter, [_chVenus, _chMars, _chMercury], "Sailor Mercury, Mars and Venus", "Fight Between Comrades", 10)
//-Venus vs Neptune + Pluto + Mars (The Beauty Queen)
teamAchievement(111000069, _chVenus, [_chNeptune, _chPluto, _chMars], "Sailor Neptune, Mars and Pluto", "The Beauty Queen", 10)
//-Uranus vs Neptune + Mercury + Pluto ()
teamAchievement(111000071, _chUranus, [_chNeptune, _chJupiter, _chVenus], "Sailor Jupiter, Venus and Neptune", "Womanizer", 10)
//-Neptune vs Uranus + Jupiter + Venus ()
teamAchievement(111000072, _chNeptune, [_chUranus, _chMercury, _chPluto], "Sailor Mercury, Uranus and Pluto", "Might and Beauty", 10)
//-Pluto vs Mercury + Neptune + Mars (Mind and Spirit)
teamAchievement(111000073, _chPluto, [_chMercury, _chNeptune, _chMars], "Sailor Mercury, Mars and Neptune", "Mind and Spirit", 10)
//-Chibi vs Moon + SMoon + Pluto (My Guardians)
teamAchievement(111000074, _chMercury, [_chMoon, _chPluto, _chSuperMoon], "Sailor Moon, Pluto and Super Sailor Moon", "My Eternal Guardians", 10)

noticeAchievement(111000075, "Tuxedo Mask Says")
//#endregion

//#region Leaderboards


//#endregion

//#region Rich Presence
rich_presence_conditional_display(!sameHandicap(), "❌ All achievements locked ❌ Reason: Fighters with different handicap")

rich_presence_conditional_display(!normalControls(), "❌ All achievements locked ❌ Reason: Using Easy controls")

rich_presence_conditional_display(inMode(_mdArcade) && !inBattle(), "In the Title Screen")

rich_presence_conditional_display(inMode(_mdArcade), 
			"({4}) [Super Battle] {0} {1} VS {2} {3}",
			rich_presence_lookup("P1", P1Char, _dictChar),
			rich_presence_lookup("P1W", P1Wins * 10 + P1Char, _dictWins),
			rich_presence_lookup("P2", P2Char, _dictChar),
			rich_presence_lookup("P2W", P2Wins * 10 + P2Char, _dictWins),
			rich_presence_lookup("dif", difficulty, _dictDiff))
					
rich_presence_conditional_display(inMode(_mdVS),
			"({4}) [VS Mode{5}] {0} {1} VS {2} {3}",
			rich_presence_lookup("P1", P1Char, _dictChar),
			rich_presence_lookup("P1W", P1Wins * 10 + P1Char, _dictWins),
			rich_presence_lookup("P2", P2Char, _dictChar),
			rich_presence_lookup("P2W", P2Wins * 10 + P2Char, _dictWins),
			rich_presence_lookup("dif", difficulty, _dictDiff),
			rich_presence_lookup("sub", subMode, _dictSubMode))
			
rich_presence_conditional_display(inMode(_mdTeamBattle), 
			"({4}) [Team Battle{5}] {0} {1} VS {2} {3}",
			rich_presence_lookup("P1", P1Char, _dictChar),
			rich_presence_lookup("P1W", P1Wins * 10 + P1Char, _dictWins),
			rich_presence_lookup("P2", P2Char, _dictChar),
			rich_presence_lookup("P2W", P2Wins * 10 + P2Char, _dictWins),
			rich_presence_lookup("dif", difficulty, _dictDiff),
			rich_presence_lookup("sub", subMode, _dictSubMode))
			
rich_presence_conditional_display(inMode(_mdOption), "Changing the Options")

rich_presence_conditional_display(inMode(_mdDatabase), "Looking at the Database")
			
rich_presence_display("Playing Sailor Moon S")


//#endregion

