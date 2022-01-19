// Moero! Nekketsu Rhythm Damashii: Osu! Tatakae! Ouendan 2
// #ID = 17353

//Red Picture Rank 5 (6'000'000) Before
//Blue Picture Rank 7 (15'000'000) Reliable Leader
//Red Blue Picture Rank 10 (35'000'000) Gut Evangelist
//Cheerleader Picture Rank 12 (70'000'000) Spirit
//Bonus Picture Rank Rank 13 (100'000'000) Full Scale Rythm Fool

//DesMuMe save: http://s000.tinyupload.com/index.php?file_id=95152603236932848273
//Delete http://s000.tinyupload.com/?del_id=08540693782787068908

//melonDS save: http://s000.tinyupload.com/?file_id=61963841893064730518
//Delete http://s000.tinyupload.com/?del_id=73753665618418650958


//Memory Accessors

//--------Variables----------

//Difficulty
_easy = 0
_normal = 1
_hard = 2
_insane = 3
_difficultyName = ["Light-Hearted Cheering", "Bold Cheering", "Fierce Cheering", "Magnificent Cheering"]

//Rank
_rankS = 0
_rankA = 1
_rankB = 2
_rankC = 3
_rankD = 4
_rankName = ["S","A","B","C","D"]

//Songs
_worker = 0
_schoolgirl = 1
_sumo = 2
_doctor =  3
_lady = 4
_barber = 5
_shoemaker = 6
_elder = 7
_wolf = 8
_toilet = 9
_writer = 10
_skater = 11
_robot = 12
_aunties = 13
_ice = 14
_earth = 15
_monkey = 16
_boy = 17
_man = 18

_emptyScore = 0xffffffff
_emptyRank = 0xff

_difficultyScoreOffset = 40
_scoreOffset = [0, 4, 8]
_rankOffset = [31, 32, 33]
_invisibleOffset = 34
_perfectOffset = 35

_passingLifeVal = 0x1c

_pictures = [0x8b, 0x8c, 0x8d, 0x8e, 0x95]
_titlePointsValues = [6000000, 15000000, 35000000, 70000000, 100000000]

//Dictionaries
_songAddressStart = {
   0: 0x0d7398,
   1: 0x0d7438,
   2: 0x0d74d8,
   3: 0x0d7578,
   4: 0x0d7618,
   5: 0x0d76b8,
   6: 0x0d7758,
   7: 0x0d77f8,
   8: 0x0d7898,
   9: 0x0d7938,
   10: 0x0d79d8,
   11: 0x0d7a78,
   12: 0x0d7b18,
   13: 0x0d7bb8,
   14: 0x0d7c58,
   15: 0x0d7cf8,
   16: 0x0d7d98,
   17: 0x0d7e38,
   18: 0x0d7ed8
}

//Text Lookups
_songNames = ["Zenryoku Shonen",
               "Rirura Riruha",
               "Okuru Kotoba",
               "Pop Star",
               "Go my way",
               "Julia ni Shoshin",
               "VISTA",
               "Shounen Heart",
               "Kibun Joujou",
               "Bambina",
               "BANG! BANG! Bakansu!",
               "Believe",
               "Zoku",
               "Music Hour",
               "COUNTDOWN",
               "Sekai wa Sore wo Ai to Yobundaze",
               "MONKEY MAGIC",
               "GLAMOROUS SKY",
               "Samurai Blue"]
               
_titlePoints = ["6M", "15M", "35M", "70M", "100M"]


//Functions
function getDifficulty() => byte(0x0d70fc)

function getLifebar() => byte(0x0d71e6)

function getSong() => byte(0x0d7104)

function getCurrentScore() => dword(0x0d7208)

function isSong(val) => byte(0x0d7104) == val

function isInvisible() => byte(0x0a7cac) == 1

function changedSongStage() => prev(byte(0x0d7180)) < byte(0x0d7180)

function inSong() => byte(0x0d70f9) == 0x80
function inResult() => byte(0x0d70f8) == 4 && inSong()
function inResultIce() => byte(0x0d70f8) == 0 && inSong()
function inTitleReward() => byte(0x0d70f8) == 6 && inSong()

function inResultScreen(song) {
    if (song == _ice) {
        return inResultIce()
    }
    else{
        return inResult()
    }    
}

function showBonusPicture(pictureKey) => inTitleReward() && 
        prev(byte(0x0d32ac)) == 00 && byte(0x0d32ac) == _pictures[pictureKey] &&
        prev(byte(0x0d4a1c)) == 00 && byte(0x0d4a1c) == _pictures[pictureKey]

function scoreValue(song, difficulty, idx) => dword(_songAddressStart[song] + difficulty * _difficultyScoreOffset + _scoreOffset[idx])

function rankValue(song, difficulty, idx) => byte(_songAddressStart[song] + difficulty * _difficultyScoreOffset + _rankOffset[idx])

function invisibleValue(song, difficulty) => byte(_songAddressStart[song] + difficulty * _difficultyScoreOffset + _invisibleOffset)

function wasEmpty(value, emptyValue) => prev(value) == emptyValue

function isEmpty(value, emptyValue) => value == emptyValue

function songStarts() => byte(0x0d7160) == 0

function hadGoodStageOnce() => once(getLifebar() >= _passingLifeVal && changedSongStage())

function hadBadStageOnce() => once(getLifebar() < _passingLifeVal && changedSongStage())

function isPerfect() => byte(0x0d720c) == 0

function showRank() => prev(byte(0x0d8b89)) == 0 && byte(0x0d8b89) == 1

function getCurrentRank() => byte(tbyte(0x0d8b90) + 8)

function finishedTutorial() => prev(getDifficulty()) == 4 && getDifficulty() < 4

function tutorailFullCombo() => (byte(0x0d7160) == 0x86 && byte(0x0d71f2) == 0x8e) || //Full
                                (byte(0x0d7160) == 0x2f && byte(0x0d71f2) == 0x77)    //Partial


//Procedures
function firstTime(song, difficulty) {
    score = scoreValue(song, difficulty, 0)
    rank = rankValue(song, difficulty, 0)

    return wasEmpty(score, _emptyScore) && score < _emptyScore &&
    wasEmpty(rank, _emptyRank) && rank <= _rankD
}

function isSongCompleted(song, difficulty) => rankValue(song, difficulty, 0) <= 4

function newSongCompleted(song, difficulty) {
    trigger = prev(rankValue(song, difficulty, 0)) == _emptyRank
      if (song == _ice){
       return inResultIce() && trigger
      }
      else{
        return inResult() && trigger
      }
}

function isSongInvisible(song, difficulty) => invisibleValue(song, difficulty) == 1

function newSongInvisible(song, difficulty) {
    trigger = prev(invisibleValue(song, difficulty)) == 0
      if (song == _ice){
       return inResultIce() && trigger
      }
      else{
        return inResult() && trigger
      }
}

function songHasRankA(song, difficulty) => 
            rankValue(song, difficulty, 0) <= _rankA || 
            rankValue(song, difficulty, 1) <= _rankA ||
            rankValue(song, difficulty, 2) <= _rankA

function newSongGetsRankA(song, difficulty) {
    trigger = prev(rankValue(song, difficulty, 0)) > _rankA &&
            prev(rankValue(song, difficulty, 1)) > _rankA &&
            prev(rankValue(song, difficulty, 2)) > _rankA
    
      if (song == _ice){
       return inResultIce() && trigger
      }
      else{
        return inResult() && trigger
      }
}

function getTotalPoints(){
    result = 77 //19 songs x 4 difficulties = 76, +1 just in case
    for song in _songAddressStart {
        for difficulty in range(0, 3) {
            result = result + scoreValue(song, difficulty, 0)
        }        
    }
    return result
}


//Achievement Functions
function normalAchievement(points, song, title)
{
    description = format("Finish {0} on {1} for the first time", _songNames[song], _difficultyName[_normal])
    trigger = inResultScreen(song) && getDifficulty() == _normal && isSong(song) && firstTime(song, _normal)
            
    achievement(title = title, points = points, description = description, trigger = trigger)
}

function hardAchievement(points, song, title)
{
    description = format("Finish {0} on {1} or higher while failing every checkpoint", _songNames[song], _difficultyName[_hard])
    trigger = inResultScreen(song) && getDifficulty() >= _hard && isSong(song) && unless(hadGoodStageOnce()) &&
                (always_false() || (never(songStarts())))
            
    achievement(title = title, points = points, description = description, trigger = trigger)
}

function insaneAchievement(points, song, title)
{
    description = format("Finish {0} on {1} in Invisible mode and without failing any checkpoint", _songNames[song], _difficultyName[_insane])
    trigger = inResultScreen(song) && getDifficulty() == _insane && isSong(song) && isInvisible() 
                && unless(hadBadStageOnce()) &&
                (always_false() || (never(songStarts())))
            
    achievement(title = title, points = points, description = description, trigger = trigger)
}

function perfectAchievement(points, song, title)
{
    description = format("Finish {0} on {1} with a perfect combo", _songNames[song], _difficultyName[_insane])
    trigger = inResultScreen(song) && getDifficulty() == _insane && isSong(song) && isPerfect() && showRank()
            
    achievement(title = title, points = points, description = description, trigger = trigger)
}

function completedDifficultyAchievement(points, difficulty, title){
    description = format("Finish all songs on {0}", _difficultyName[difficulty])
    trigger = getDifficulty() == difficulty
    
    allSongsCompleted = always_true()
    atLeastOneNewSongCompleted = always_false()
    
    for song in _songAddressStart {
        allSongsCompleted = allSongsCompleted && isSongCompleted(song, difficulty)
        atLeastOneNewSongCompleted = atLeastOneNewSongCompleted || newSongCompleted(song, difficulty)
    }
    
    trigger = trigger && allSongsCompleted && (atLeastOneNewSongCompleted)
            
    achievement(title = title, points = points, description = description, trigger = trigger)
}

//Check all 3 scores per song
function rankADifficultyAchievement(points, difficulty, title){
    description = format("Get a ranked score with Rank A or higher in all songs on {0}", _difficultyName[difficulty])
    
    trigger = getDifficulty() == difficulty
    
    allSongsHaveRankA = always_true()
    atLeastOneNewSongHasRankA = always_false()
    
    for song in _songAddressStart {
        allSongsHaveRankA = allSongsHaveRankA && songHasRankA(song, difficulty)
        atLeastOneNewSongHasRankA = atLeastOneNewSongHasRankA || newSongGetsRankA(song, difficulty)
    }
    
    trigger = trigger && allSongsHaveRankA && (atLeastOneNewSongHasRankA)
            
    achievement(title = title, points = points, description = description, trigger = trigger)
}

function invisibleDifficultyAchievement(points, difficulty, title){
    description = format("Get the highest score in all songs on {0} using Invisible mode", _difficultyName[difficulty])
    
    trigger = getDifficulty() == difficulty && isInvisible()
    
    allSongsInvisible = always_true()
    atLeastOneNewSongInvisible = always_false()
    
    for song in _songAddressStart {
        allSongsInvisible = allSongsInvisible && isSongInvisible(song, difficulty)
        atLeastOneNewSongInvisible = atLeastOneNewSongInvisible || newSongInvisible(song, difficulty)
    }
    
    trigger = trigger && allSongsInvisible && (atLeastOneNewSongInvisible)
            
    achievement(title = title, points = points, description = description, trigger = trigger)
}

//Achievements for each bonus picture
function totalPointsAchievement(id, points, index, title){
    description = format("Get over {0} total score points", _titlePoints[index])
    
    trigger = showBonusPicture(index) && getTotalPoints() >= _titlePointsValues[index]
            
    achievement(id = id, title = title, points = points, description = description, trigger = trigger)
}

function rankSongAchievement(points, rank, title){
    description = format("Get {0} Rank on any song on {1} or higher", _rankName[rank], _difficultyName[_hard])
    
    trigger = showRank() && getDifficulty() >= _hard && getCurrentRank() == rank && 
    ((inResult() && !isSong(_ice)) || (inResultIce() && isSong(_ice)))
            
    achievement(title = title, points = points, description = description, trigger = trigger)
}

function invisiblePerfectAAchievement(points, title){
    description = format("Get A or S Rank and a Perfect combo with Invisible Mode on any song on {0} or higher", _difficultyName[_hard])
    
    trigger = getDifficulty() >= _hard && getCurrentRank() <= _rankA && isPerfect() && isInvisible() && 
              showRank() && ((inResult() && !isSong(_ice)) || (inResultIce() && isSong(_ice)))
            
    achievement(title = title, points = points, description = description, trigger = trigger)
}

function tutorialAchievement(points, title){
    description = "Complete the tutorial training course with Perfect combo"
    
    trigger = finishedTutorial() && isPerfect() && (tutorailFullCombo())
            
    achievement(title = title, points = points, description = description, trigger = trigger)
}

function leaderboardSTA(song, difficulty){
    trigger = inResultScreen(song) && getDifficulty() == difficulty && getSong() == song && getCurrentScore() == scoreValue(song, difficulty, 0)
    achievement(title = format("{0} ({1})", _songNames[song], _difficultyName[difficulty]), points = 0, 
    description = format("Get the highest score on {0}, {1} difficulty", _songNames[song], _difficultyName[difficulty]), 
    trigger = trigger)
}


//Achievements

//Normal Achievements
normalAchievement(1, _worker, "Eternal Job Applicant")
normalAchievement(1, _schoolgirl, "Club Savior")
normalAchievement(1, _sumo, "Animal Wrestler")
normalAchievement(1, _doctor, "Overly Confident Doctor")
normalAchievement(2, _lady, "From Wrestler to Hostess")
normalAchievement(2, _barber, "Barber Showdown")
normalAchievement(2, _shoemaker, "Cheaper by the Dozen")
normalAchievement(3, _elder, "A Hero Never Retires")
normalAchievement(3, _wolf, "Wild Instinct")
normalAchievement(4, _toilet, "It's-a Me")
normalAchievement(3, _writer, "Lovestruck")
normalAchievement(3, _skater, "Dear Sister")
normalAchievement(5, _robot, "Fujizord")
normalAchievement(4, _aunties, "Desperate Housewives")
normalAchievement(5, _ice, "Menace of the Red Dwarf")
normalAchievement(10, _earth, "A Bold Team")
normalAchievement(2, _monkey, "Journey to the West")
normalAchievement(3, _boy, "Memory Makers")
normalAchievement(5, _man, "Surfin' Electromagnetic Waves")

hardAchievement(5, _worker, "Living with Children")
hardAchievement(5, _schoolgirl, "Saved...for now...")
hardAchievement(5, _sumo, "Lucky Fool")
hardAchievement(5, _doctor, "Overworked Doctor")
hardAchievement(5, _lady, "Rough Lady")
hardAchievement(5, _barber, "Granny Magnet")
hardAchievement(5, _shoemaker, "Blasting Off Again!")
hardAchievement(5, _elder, "Monster Park")
hardAchievement(5, _wolf, "Underdog")
hardAchievement(5, _toilet, "Evil Little Sister")
hardAchievement(5, _writer, "Daydreamer")
hardAchievement(5, _skater, "Believe In Yourself!")
hardAchievement(5, _robot, "Meowzilla Returns")
hardAchievement(5, _aunties, "Hungry Kidnappers")
hardAchievement(5, _ice, "The Day the Earth Froze")
hardAchievement(10, _earth, "A Fierce Combination")
hardAchievement(5, _monkey, "Dirty Monkey")
hardAchievement(5, _boy, "Dragon Ramen Strikes Again")
hardAchievement(10, _man, "No Signal")

insaneAchievement(5, _worker, "The Ideal Job")
insaneAchievement(5, _schoolgirl, "The Ultimate Savior")
insaneAchievement(5, _sumo, "Abundance and Prosperity")
insaneAchievement(5, _doctor, "Everyone's Doctor")
insaneAchievement(5, _lady, "Champion Hostess")
insaneAchievement(5, _barber, "Charismatic Barber")
insaneAchievement(5, _shoemaker, "Shoes Out of this World")
insaneAchievement(5, _elder, "Change Of Heart")
insaneAchievement(5, _wolf, "Big Dogs Allowed")
insaneAchievement(5, _toilet, "Sweet & Salty")
insaneAchievement(5, _writer, "Romance Bestseller")
insaneAchievement(5, _skater, "Always Together")
insaneAchievement(10, _robot, "Genius Trio")
insaneAchievement(5, _aunties, "The Sunrise Girls")
insaneAchievement(10, _ice, "Great Balls of Ice")
insaneAchievement(25, _earth, "A Magnificent Squad")
insaneAchievement(5, _monkey, "Toy Story")
insaneAchievement(5, _boy, "I like you too-!!")
insaneAchievement(10, _man, "Connecting People")

perfectAchievement(5, _worker, "The American Dream")
perfectAchievement(5, _schoolgirl, "Angelic Voice")
perfectAchievement(5, _sumo, "Lobster Champion")
perfectAchievement(5, _doctor, "Miraculous Doctor")
perfectAchievement(10, _lady, "Excellent Service")
perfectAchievement(10, _barber, "Romantic Stylist")
perfectAchievement(10, _shoemaker, "Intergalactic Seller")
perfectAchievement(10, _elder, "Momotaro Densetsu")
perfectAchievement(10, _wolf, "The Cutie and The Beast")
perfectAchievement(10, _toilet, "Big Brother")
perfectAchievement(10, _writer, "Renowned Novelist")
perfectAchievement(10, _skater, "Olympic Medalist")
perfectAchievement(10, _robot, "Ultimate Fighting Robot")
perfectAchievement(10, _aunties, "Fans Forever")
perfectAchievement(10, _ice, "Sacrifice")
perfectAchievement(25, _earth, "The Sun Maidens")
perfectAchievement(5, _monkey, "You've got a friend in me")
perfectAchievement(10, _boy, "Farewell, My Dear")
perfectAchievement(25, _man, "Messenger of Love")

tutorialAchievement(2, "Like Cats & Dogs")
rankSongAchievement(3, _rankD, "Ouendaaan!!!")
rankSongAchievement(10, _rankS, "Ouen! Dai-sei-kou!")
invisiblePerfectAAchievement(10, "Cheer By Ear")

completedDifficultyAchievement(10, _easy, "Stylish New Hat") //Red Easy
completedDifficultyAchievement(25, _hard, "Intimidating Leader") //Red Hard
completedDifficultyAchievement(25, _insane, "The Girl in Blue") //Red Insane

rankADifficultyAchievement(25, _easy, "Wildest Hairstyle") //Red Normal
rankADifficultyAchievement(25, _normal, "The Clumsy 'n' Beauty") //CheerGirls
rankADifficultyAchievement(25, _hard, "Innocent & Naive") //CheerMaidens
rankADifficultyAchievement(25, _insane, "The Maiden in Red") //Blue Insane

invisibleDifficultyAchievement(10, _easy, "Notice Me, Senpai") //Blue Easy
invisibleDifficultyAchievement(25, _normal, "Noble Eyebrows") //Blue Normal
invisibleDifficultyAchievement(25, _hard, "Psychic Type") //Blue Hard

totalPointsAchievement(142273, 1, 0, "The Cheer Squad")
totalPointsAchievement(142274, 3, 1, "The Enouraging Nobility")
totalPointsAchievement(142275, 5, 2, "Two Suns Under the Same Sky")
totalPointsAchievement(142276, 10, 3, "Girls & Maidens")
totalPointsAchievement(142277, 25, 4, "Unbreakable Rivalry")

//for difficulty in range(1, 3) {
//    for song in _songAddressStart {        
//            leaderboardSTA(song, difficulty)
//        }        
//    }  