// Kowai Shashin: Shinrei Shashin Kitan
// #ID = 18246

//#region Variables
//-Chapters
_ch1 = 0
_ch2 = 1
_ch3 = 2
_ch4 = 3
_ch5 = 4
_ch6 = 5
_ch7 = 6
_ch8 = 7

//-Screen
_scrLoading = 1
_scrTitle = 2
_scrPlaying = 3
_scrAlbum = 4

//#endregion

//#region Dictionaries
_dictChapters = {
	_ch1: "The Exorcism Specialist", //-3
	_ch2: "Hiori's World",	 //-3
	_ch3: "First Love",		 //-3
	_ch4: "Voracity",		 //-3
	_ch5: "A Living Spirit", //-1
	_ch6: "Nightmarish Premonition",
	_ch7: "Presence",
	_ch8: "Door to the Underworld"
}

_dictOrder = {
	0: "1st",
	1: "2nd",
	2: "3rd",
	3: "4th",
	4: "5th",
	5: "6th",
	6: "7th",
	7: "8th",
	8: "9th"
}

_dictPhoto = {
	0: "Beckon",
	1: "Awful Smell",
	2: "Peek-a-Boo",
	10: "Ochiai",
	11: "Bowling",
	12: "Subway",
	20: "Steel",
	21: "Face",
	22: "Yuuji",
	30: "Elevator",
	31: "Crow Call",
	32: "Shopping Wish",
	40: "Stalker",
	50: "Clinging",
	51: "Karaoke Box",
	52: "Bouquet",
	60: "Rock",
	61: "In the Gap",
	62: "Will",
	70: "Underworld"
}

_dictHiori = {
	0: ""
}

//#endregion

//#region Memory Accessors
playthrough = byte(0x09fe2a)
chapter = byte(0x09fe24)
photo = byte(0x09fe26)
state = byte(0x09fe34)
maxCombo = byte(0x09fe42)
screen = byte(0x09fe32)

comboGet = byte(0x0ffc2e)
comboDone = byte(0x0ffc30)
comboState = byte(0x0ffc32)

spiritPhotos = byte(0x09fe2c)
otherPhotos = byte(0x09fe2b)

//#endregion

//#region Functions
function finishedChapter(chap){
	nextChap = chap + 1
	nextState = 0x12
	
	if (chap == _ch8){
		nextChap = 0
		nextState = 0x15
	}
	
	return prev(chapter) == chap 
		&& chapter == nextChap
		&& prev(state) == 0x1 
		&& state == nextState
}
function inChapter(chap) => chapter == chap
function inPhoto(phot) => photo == phot
function startedPhoto() => (prev(state) == 4 || prev(state) == 5) && state == 6
function endedPhoto(chap) {
	if (chap == _ch8){
		return prev(state) == 6 && state == 9
	}
	return prev(state) == 6 && state == 7
}
function isPlaying() => state == 6 && screen == _scrPlaying
function gameOver() => state == 0xc
function isRandom() => dword(0x0a14b4) == 0xafbfffd8 && dword(0x0a14b8) == 0xafabfffc && dword(0x0a14e0) == 0x256bfabc
function notRandom() => dword(0x0a14b4) != 0xafbfffd8 && dword(0x0a14b8) != 0xafabfffc && dword(0x0a14e0) != 0x256bfabc
function endedCombo() => prev(comboState) < 6 && comboState == 6
function endedComboAt(at) => comboDone == at

//#endregion

//#region Achievement logic
function chapterAchievement(id, chap, play, rand, title, points){
		
	description = format("Finish chapter {0}", chap + 1)
	
	trigger = finishedChapter(chap)
	
	if (play > 0){
		description = description + 
			format(", {0} playthrough", _dictOrder[play])
		trigger = trigger && prev(playthrough) >= play
	}
	
	if (rand > 0){
		description = description + " (Random mode)"
		trigger = trigger && isRandom()
	}
	
	achievement(title = title, points = points, description = description, trigger = trigger, id = id)
}

function deathlessChapterAchievement(id, chap, play, rand, title, points){
		
	description = format("Finish chapter {0} without getting a game over", chap + 1)
	
	trigger = finishedChapter(chap)
			&& never(gameOver())
			&& once(inChapter(chap) && inPhoto(0))
	
	if (play > 0){
		description = description + 
			format(", {0} playthrough", _dictOrder[play])
		trigger = trigger && prev(playthrough) >= play
	}
	
	if (rand > 0){
		description = description + " (Random mode)"
		trigger = trigger && isRandom()
	}
	
	achievement(title = title, points = points, description = description, trigger = trigger, id = id)
}

function fiveAchievement(id, title, points){
		
	description = "Finish Chapter 5 executing only 5 chain combo spells on your 2nd playthrough"
	
	trigger = playthrough >= 1
			&& inChapter(_ch5)
			&& once(startedPhoto())
			&& never(endedCombo() && !endedComboAt(5))
			&& never(gameOver())
			&& trigger_when(endedPhoto(_ch5))
		
	achievement(title = title, points = points, description = description, trigger = trigger, id = id)
}

function sixAchievement(id, title, points){
	description = "On Chapter 6, execute 6 chain combo spells 6 times without dying"
	
	trigger = never(!inChapter(_ch6))
			&& never(gameOver())
			&& isPlaying()
			&& tally(6, endedCombo() 
					&& endedComboAt(6))
		
	achievement(title = title, points = points, description = description, trigger = trigger, id = id)
}

function nineAchievement(id, title, points){
	description = "Get a 9 chain combo spell"
	
	trigger = isPlaying()
			&& endedCombo() 
			&& endedComboAt(9)
		
	achievement(title = title, points = points, description = description, trigger = trigger, id = id)
}

function comboOrderAchievement(id, title, points){
	description = "On Chapter 5, Random mode, get the following chain combo spells in the specified order: [7-2-5-2-2]"
	
	trigger = isPlaying()
			&& isRandom()
			&& inChapter(_ch5)
			&& once(endedCombo() && endedComboAt(7))
			&& trigger_when(once(endedCombo() && endedComboAt(5))
				&& tally(3, endedCombo() && endedComboAt(2)))
			&& (always_false() || //-Reset if not 7
				(unless(once(endedCombo() && endedComboAt(7)))
					&& never(endedCombo() && !endedComboAt(7)))
				|| //-Reset if not 2
				(unless(once(endedCombo() && endedComboAt(7))
						&& once(endedCombo() && endedComboAt(2)))
					&& never(once(endedCombo() && endedComboAt(7))
						&& tally(2, endedCombo() && !endedComboAt(2))))
				|| //-Reset if not 5
				(unless(once(endedCombo() && endedComboAt(7))
					&& once(endedCombo() && endedComboAt(2)) 
					&& once(endedCombo() && endedComboAt(5)))
					&& never(once(endedCombo() && endedComboAt(7))
						&& once(endedCombo() && endedComboAt(2)) 
						&& tally(2, endedCombo() && !endedComboAt(5))))	
				|| //-Reset if not 2
				(unless(once(endedCombo() && endedComboAt(7))
					&& tally(2, endedCombo() && endedComboAt(2))
					&& once(endedCombo() && endedComboAt(5)))
					&& never(once(endedCombo() && endedComboAt(7))
						  && once(endedCombo() && endedComboAt(2))
						  && once(endedCombo() && endedComboAt(5))
						  && tally(2, endedCombo() && !endedComboAt(2))))
				|| //-Reset if not 2
				(never(once(endedCombo() && endedComboAt(7))
						  && tally(2, endedCombo() && endedComboAt(2))
						  && once(endedCombo() && endedComboAt(5))
						  && tally(2, endedCombo() && !endedComboAt(2))))
				)
		
	achievement(title = title, points = points, description = description, trigger = trigger, id = id)
}


function timeAchievement(id, chap, play, rand, time, title, points){
		
	description = format("Finish chapter {0} in less than {1} mins", chap + 1, time)
	
	trigger = unless(tally(time * 60 * 60, isPlaying())) 
			&& inPhoto(0)
			&& once(startedPhoto())
			&& trigger_when(endedPhoto(chap))		
			&& (always_false() ||
				never(gameOver()) &&
				never(!inChapter(chap)))
	
	if (play > 0){
		description = description + 
			format(", {0} playthrough", _dictOrder[play])
		trigger = trigger && prev(playthrough) >= play
	}
	
	if (rand > 0){
		description = description + " (Random mode)"
		trigger = trigger && isRandom()
	}
	
	achievement(title = title, points = points, description = description, trigger = trigger, id = id)
}

//#endregion

//#region Leaderboard Logic
function chapterLeaderboard(rand, play, chap, id){
	
	title = format("[{0}] {1} Playthrough", _dictChapters[chap], _dictOrder[play])
	
	description = format("Finish chapter {0}, playthrough {1}, as fast as you can", chap + 1, play + 1)
	
	start = isPlaying()
			&& inChapter(chap)
			&& inPhoto(0)
			&& startedPhoto()
			&& playthrough == play
	
	if (rand == 1){
		title = title + " (Random)"
		description = description + " (Random mode)"
		start = start && isRandom()
	}
	else{
		start = start && notRandom()	
	}	
			
    cancel = !inChapter(chap) || gameOver()
	
	if (chap == _ch5 || chap == _ch8){
		submit = inPhoto(0)
			&& endedPhoto(chap)
	}
	else{
		submit = inPhoto(2)
			&& endedPhoto(chap)
	}
    
			
    value = measured(isPlaying())
	
    leaderboard(title, description, start, cancel, submit, value, "FRAMES", id)    
}

//#endregion

//#region Achievements
//-One for each chapter
chapterAchievement(191965, _ch1, 0, 0, "Beckon", 3)
chapterAchievement(191966, _ch2, 0, 0, "Ochiai", 5)
chapterAchievement(191967, _ch3, 0, 0, "Steel", 5)
chapterAchievement(191968, _ch4, 0, 0, "Elevator", 5)
chapterAchievement(191969, _ch5, 0, 0, "Harassed", 5)
chapterAchievement(191970, _ch6, 0, 0, "Clinging", 10)
chapterAchievement(191971, _ch7, 0, 0, "Rock", 10)
chapterAchievement(191972, _ch8, 0, 0, "Lost Soul", 10)

//-One for each chapter play 1 deathless except chap5
deathlessChapterAchievement(191973, _ch1, 1, 0, "Awful Smell", 5)
deathlessChapterAchievement(191974, _ch2, 1, 0, "Bowling", 5)
deathlessChapterAchievement(191975, _ch3, 1, 0, "Face", 10)
deathlessChapterAchievement(191976, _ch4, 1, 0, "Crow Call", 10)
fiveAchievement(191995, "555", 5)
deathlessChapterAchievement(191977, _ch6, 1, 0, "Karaoke Box", 10)
deathlessChapterAchievement(191978, _ch7, 1, 0, "In the Gap", 10)
chapterAchievement(191979, _ch8, 1, 0, "Unborn", 25)

//-One for play 2
deathlessChapterAchievement(191980, _ch1, 2, 0, "Peek-a-Boo", 5)
deathlessChapterAchievement(191981, _ch2, 2, 0, "Subway", 10)
deathlessChapterAchievement(191982, _ch3, 2, 0, "Yuuji", 10)
deathlessChapterAchievement(191983, _ch4, 2, 0, "Shopping Wish", 10)
timeAchievement(191984, _ch5, 2, 0, 5, "Stalker", 5)
deathlessChapterAchievement(191985, _ch6, 2, 0, "Bouquet", 10)
deathlessChapterAchievement(191986, _ch7, 2, 0, "Will", 10)
chapterAchievement(191987, _ch8, 2, 0, "Underworld", 25)

//-One for random
deathlessChapterAchievement(191988, _ch1, 0, 1, "Scarlet", 5)
deathlessChapterAchievement(191989, _ch2, 0, 1, "Energy", 5)
deathlessChapterAchievement(191990, _ch3, 0, 1, "Immerse", 5)
deathlessChapterAchievement(191991, _ch4, 0, 1, "Faint Pain", 10)
comboOrderAchievement(191996, "Randomness", 10)
deathlessChapterAchievement(191992, _ch6, 0, 1, "Truth", 10)
deathlessChapterAchievement(191993, _ch7, 0, 1, "Duress", 10)
chapterAchievement(191994, _ch8, 0, 1, "Battle", 25)

sixAchievement(191997, "Beast", 10)
nineAchievement(191998, "Cleanse", 5)

//#endregion

//#region Leaderboards
chapterLeaderboard(0, 0, _ch1, 28795)
chapterLeaderboard(0, 0, _ch2, 28796)
chapterLeaderboard(0, 0, _ch3, 28797)
chapterLeaderboard(0, 0, _ch4, 28798)
chapterLeaderboard(0, 0, _ch5, 28799)
chapterLeaderboard(0, 0, _ch6, 28800)
chapterLeaderboard(0, 0, _ch7, 28801)
chapterLeaderboard(0, 0, _ch8, 28802)

chapterLeaderboard(0, 1, _ch1, 28803)
chapterLeaderboard(0, 1, _ch2, 28804)
chapterLeaderboard(0, 1, _ch3, 28805)
chapterLeaderboard(0, 1, _ch4, 28806)
chapterLeaderboard(0, 1, _ch5, 28807)
chapterLeaderboard(0, 1, _ch6, 28808)
chapterLeaderboard(0, 1, _ch7, 28809)
chapterLeaderboard(0, 1, _ch8, 28810)

chapterLeaderboard(0, 2, _ch1, 28811)
chapterLeaderboard(0, 2, _ch2, 28812)
chapterLeaderboard(0, 2, _ch3, 28813)
chapterLeaderboard(0, 2, _ch4, 28814)
chapterLeaderboard(0, 2, _ch5, 28815)
chapterLeaderboard(0, 2, _ch6, 28816)
chapterLeaderboard(0, 2, _ch7, 28817)
chapterLeaderboard(0, 2, _ch8, 28818)

chapterLeaderboard(1, 0, _ch1, 28819)
chapterLeaderboard(1, 0, _ch2, 28820)
chapterLeaderboard(1, 0, _ch3, 28821)
chapterLeaderboard(1, 0, _ch4, 28822)
chapterLeaderboard(1, 0, _ch5, 28823)
chapterLeaderboard(1, 0, _ch6, 28824)
chapterLeaderboard(1, 0, _ch7, 28825)
chapterLeaderboard(1, 0, _ch8, 28826)

chapterLeaderboard(1, 1, _ch1, 28827)
chapterLeaderboard(1, 1, _ch2, 28828)
chapterLeaderboard(1, 1, _ch3, 28829)
chapterLeaderboard(1, 1, _ch4, 28830)
chapterLeaderboard(1, 1, _ch5, 28831)
chapterLeaderboard(1, 1, _ch6, 28832)
chapterLeaderboard(1, 1, _ch7, 28833)
chapterLeaderboard(1, 1, _ch8, 28834)

chapterLeaderboard(1, 2, _ch1, 28835)
chapterLeaderboard(1, 2, _ch2, 28836)
chapterLeaderboard(1, 2, _ch3, 28837)
chapterLeaderboard(1, 2, _ch4, 28838)
chapterLeaderboard(1, 2, _ch5, 28839)
chapterLeaderboard(1, 2, _ch6, 28840)
chapterLeaderboard(1, 2, _ch7, 28841)
chapterLeaderboard(1, 2, _ch8, 28842)
//#endregion

//#region Rich Presence
rich_presence_conditional_display(screen <= _scrTitle, "In the Title Screen")

rich_presence_conditional_display(screen == _scrAlbum, 
			"Looking at the album [🖼️: {0}/20] {1}",
			rich_presence_value("val", spiritPhotos),
			rich_presence_lookup("hiori", otherPhotos, _dictHiori, "👧"))
					
rich_presence_conditional_display(isRandom() && screen == _scrPlaying, 
			"[Random] {0} - {4} [{1} Playthrough] [🖼️: {2}/20] {3}",
			rich_presence_lookup("chap", chapter, _dictChapters),
			rich_presence_lookup("play", playthrough, _dictOrder, "Unknown"),
			rich_presence_value("val", spiritPhotos),
			rich_presence_lookup("hiori", otherPhotos, _dictHiori, "👧"),
			rich_presence_lookup("photo", chapter * 10 + photo, _dictPhoto, "Epilogue"))
			
rich_presence_conditional_display(screen == _scrPlaying, 
			"{0} - {4} [{1} Playthrough] [🖼️: {2}/20] {3}",
			rich_presence_lookup("chap", chapter, _dictChapters),
			rich_presence_lookup("play", playthrough, _dictOrder, "Unknown"),
			rich_presence_value("val", spiritPhotos),
			rich_presence_lookup("hiori", otherPhotos, _dictHiori, "👧"),
			rich_presence_lookup("photo", chapter * 10 + photo, _dictPhoto, "Epilogue"))
			
rich_presence_display("Playing Kowai Shashin: Tales in Spirit Photography")

//#endregion
