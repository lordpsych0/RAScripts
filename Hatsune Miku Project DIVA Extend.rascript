// Hatsune Miku: Project DIVA Extend
// #ID = 3516


//#region Variables

//-Difficulty
_dEasy = 0
_dNormal = 1
_dHard = 2
_dExtreme = 3

//-Song End Result
_serNotClear = 0
_serCheap = 1
_serStandard = 2
_serGreat = 3
_serExcellent = 4
_serPerfect = 5

//-Help Items
_hiAssisted = 0
_hiComboGuard = 1
_hiRecovery = 2
_hiCoolFine = 3
_hiSurvival = 4

//-Characters
_chMiku = 0
_chRin = 1
_chLen = 2
_chLuka = 3
_chKaito = 4
_chMeiko = 5
_chNeru = 6
_chHaku = 7
_chSakine = 8

//-Songs
_sLookWayBaby = 0x0
_sYellow = 0x1
_sColorfulMelody = 0x2
_sIntenseVoice = 0x3
_sMeltdown = 0x4
_sJustFriends = 0x5
_sDissapearance = 0x6
_sStarGazer = 0x7
_sRequiem = 0x8
_sButterfly39 = 0x9
_sYourDiva = 0xa
_sStardust = 0xb
_sElectricAngel = 0xc
_sTimeLimit = 0xd
_sMelody = 0xe
_sIroha = 0xf
_sColorfulSexy = 0x10
_sSpica = 0x11
_sLukaNightFever = 0x12
_sSongNoForm = 0x13
_sTwoSideLovers = 0x14
_sHelloPlanet = 0x15
_sEndInfinity = 0x16
_sSolitude = 0x17
_sPuzzle = 0x18
_sPalette = 0x19
_sThousandYearSolo = 0x1a
_sLoverSuicide = 0x1b
_sDemons = 0x1c
_sRollingGirl = 0x1d
_sStarduster = 0x1e
_sParadi = 0x1f
_sWintryWinds = 0x20
_sNekomimi = 0x21
_sGraffiti = 0x22
_sRinSignal = 0x23
_sIevanPolkka = 0x24

_sGoMyWay = 0x27
_sRelations = 0x28

//-Modules
//----Miku------
_mHatsuneMiku = 0x0
_mMeikoStyle = 0x1
_mRinStyle = 0x2
_mSpaceCH5 = 0x3
_mSpaceCH = 0x4
_mGalliaSquad = 0x5
_mPStyleRP = 0x6
_mPStyleMG = 0x7
_mPStyleLP = 0x8
_mPStyleFB = 0x9
_mPStyleIS = 0xa
_mPStyleCW = 0xb
_mPStylePB = 0xc
_mPStyleCG = 0xd
_mCheer = 0xe
_mPlugIn = 0xf
_mGothic = 0x10
_mPrincess = 0x11
_mMiko = 0x12
_mCatGirl = 0x13
_mSleepy = 0x14
_mHeartHunter = 0x15
_mVocal = 0x16
_mPunk = 0x17
_mDancer = 0x18
_mStar = 0x19
_mFairy = 0x1a
_mSchool = 0x1b
_mSnow = 0x1c
_mArabian = 0x1d
_mElegant = 0x1e
_mChina = 0x1f
_mMagician = 0x20
_mWhiteDress = 0x21
_mPirate = 0x22
_mVN02 = 0x23
_mGalaxy = 0x24
_mHa2Miku2 = 0x25
_mHatsuneMikuSwimwearS = 0x26
_mHatsuneMikuSwimwear = 0x27
_mAileDAngeMiku = 0x28
_mSpacyNurseMiku = 0x29
_mSchoolNobleMiku = 0x2a
_mJerseyMiku = 0x2b
_mLittleRedMiku = 0x2c
_mWhiteGownMiku = 0x2d
_mVintageDressMiku = 0x2e
_mPinkPopsMiku = 0x2f
_mAngelMiku = 0x30
_mNaturalMiku = 0x31
_mSpiritualMiku = 0x32
_mColorfulGumdrop = 0x33
_mYellowMiku = 0x34
_mOutAboutMiku = 0x35
_mShaihateMiku = 0x36
_mInfinityMiku = 0x37
_mPowderMiku = 0x38
_mButterflyMiku = 0x39
_mCuteMiku = 0x3a
_mHatsuneMikuSwimwearB = 0x3b
_mPinkPopsASMiku = 0x3c

_mAppendMiku = 0x3d
_mHarukaMiku = 0x3e
_mXmasMiku = 0x3f
_mSnow2010Miku = 0x40
_mSnow2011Miku = 0x41
_mEveWhite = 0x42
_mHelloWorldMiku = 0x43
_mRacing2010Miku = 0x44
_mRacing2011Miku = 0x45
_mFeiYenMiku = 0x46
_mRollingMiku = 0x47
_mDemonDeadMiku = 0x48
_mOrbitMiku = 0x49
_mPatchworkMiku = 0x4a
_mSonicMiku = 0x4b
_mTyrol = 0x4c
_mConflictMiku = 0x4d
_mShinyMiku = 0x4e
_mType2020 = 0x4f


//----Rin------
_mKagamineRin = 0x50
_mKagamineRinSwimwear = 0x51
_mAsymmetricRRin = 0x52
_mCuteRin = 0x53
_mReactorRin = 0x54
_mRoFStyleRin = 0x55
_mCheerfulCandy = 0x56
_mKagamineRinSwimwearT = 0x57

_mXmasRin = 0x58
_mAmiMamiRin = 0x59
_mSchoolRin = 0x5a
_mAppendRin = 0x5b
_mNamelessNo1Rin = 0x5c
_mRacing2010Rin = 0x5d
_mBlackStarRin = 0x5e
_mKagerou = 0x5f
_mSappanwoodRin = 0x60

//----Len------
_mKagamineLen = 0x61
_mKagamineLenSwimwear = 0x62
_mAsymmetricLLen = 0x63
_mPunkishLen = 0x64
_mSchoolJerseyLen = 0x65
_mKagamineLenSwimwearWS = 0x66

_mXmasLen = 0x67
_mSchoolLen = 0x68
_mAppendLen = 0x69
_mBlueMoonLen = 0x6a
_mIndigoLen = 0x6b
_mStrangeDark = 0x6c
_mNamelessNo7Len = 0x6d

//----Luka------
_mMegurineLuka = 0x6e
_mMegurineLukaSwimwear = 0x6f
_mChiffonDressLuka = 0x70
_mVFSuitLuka = 0x71
_mFrauleinLuka = 0x72
_mBlossomLuka = 0x73
_mHardRockLuka = 0x74
_mMegurineLukaSwimwearP = 0x75

_mXmasLuka = 0x76
_mWitchLuka = 0x77
_mChihayaLuka = 0x78
_mFairyLuka = 0x79
_mSilenceLuka = 0x7a
_mRacing2010Luka = 0x7b
_mCyberLuka = 0x7c
_mNagisaLuka = 0x7d
_mNagisaASLuka = 0x7e

//----Kaito------
_mKaito = 0x7f
_mKaitoSwimwear = 0x80
_mCampusKaito = 0x81
_mClassicKaito = 0x82
_mCyberCatKaito = 0x83
_mKaitoSwimwearV = 0x84
_mKaitoSwimwearVAlt = 0x85

_mXmasKaito = 0x86
_mWhiteBlazerKaito = 0x87
_mDrizzleKaito = 0x88
_mVioletKaito = 0x89
_mVFNinjaKaito = 0x8a
_mVFNinjaASKaito = 0x8b

//----Meiko------
_mMeiko = 0x8c
_mMeikoSwimwear = 0x8d
_mFluffyCoatMeiko = 0x8e
_mScarletMeiko = 0x8f
_mModernGirlMeiko = 0x90
_mMeikoSwimwearB = 0x91
_mModernGirlAltMeiko = 0x92

_mTaishoMeiko = 0x93
_mXmasMeiko = 0x94
_mSexyPuddingMeiko = 0x95
_mBlackTailThiefMeiko = 0x96
_mAutumnMeiko = 0x97
_mRacing2010Meiko = 0x98
_mLoreleiMeiko = 0x99

//----Neru------
_mAkitaNeru = 0x9a
_mAborigineNeru = 0x9b
_mAkitaNeruSwimwear = 0x9c
_mClubNeru = 0x9d

//----Haku------
_mYowaneHaku = 0x9e
_mCyberDriveHaku = 0x9f
_mYowaneHakuSwimwear = 0xa0
_mGothicPurpleHaku = 0xa1

//----Sakine------
_mSakineMeiko = 0xa2
_mBlackDressSakine = 0xa3
_mSakineMeikoSwimswear = 0xa4
_mNostalgySakine = 0xa5
_mBlackDressNSSakine = 0xa6

//-Flags
_fSongs = 0
_fSongsHard = 1
_fSongsExtreme = 2

_fRoomTheme = 3
_fShelfAccessory = 4
_fWallAccessory = 5
_fFloorAccessory = 6
_fVisualLibrary = 7
_fDivaRooms = 8

_fModules = 9
_fModulesMiku = 10
_fModulesRin = 11
_fModulesLen = 12
_fModulesLuka = 13
_fModulesKaito = 14
_fModulesMeiko = 15
_fModulesNeru = 16
_fModulesHaku = 17
_fModulesSakine = 18

_fRoomEvents = 19
_fTitles = 20

//-Songs cleared and Max scores
_fsResultFail = 0xd018a0
_fsResultCheap = 0xd018a2
_fsClearedStandard = 0xd018a4
_fsClearedGreat = 0xd018a6
_fsClearedExcellent = 0xd018a8
_fsClearedPerfect = 0xd018aa

_fsMikuFail = 0xd018b8 //-+0xC  Char result offset
_fsRinFail = 0xd018c4
_fsLenFail = 0xd018d0
_fsLukaFail = 0xd018dc
_fsKaitoFail = 0xd018e8
_fsMeikoFail = 0xd018f4
_fsNeruFail = 0xd01900
_fsHakuFail = 0xd0190c
_fsSakineFail = 0xd01918

_fsMaxScore = 0xd01930
_fsMaxCombo = 0xd01934

//-Offsets
poffset = 0xF8000000
mscoreSongOffset = 0x288
mscoreDifficultyOffset = 0x98

mscoreCharResultOffset = 0xC

//#endregion

//#region Dictionaries

_dictItems = {
	_hiAssisted: "Assisted Play",
	_hiComboGuard: "Combo Guard",
	_hiRecovery: "Recovery",
	_hiCoolFine: "COOL&FINE",
	_hiSurvival: "Survival"
}

_dictSongs = {
	_sNekomimi: "Nekomimi Switch",
	_sSolitude: "Solitude's End",
	_sPalette: "Palette",
	_sSpica: "SPiCa -39's Giving Day Edition-",
	_sStarduster: "Starduster",
	_sEndInfinity: "To the End of Infinity",	
	_sStardust: "Stardust Utopia",
	_sTimeLimit: "Time Limit",
	_sSongNoForm: "Though My Song Has No Form",
	_sMeltdown: "Meltdown",
	_sElectricAngel: "Electric Angel",
	_sYellow: "Yellow",
	_sThousandYearSolo: "Thousand-Year Solo -DIVA edit-",
	_sButterfly39: "Butterfly on Your Right Shoulder -39's Giving Day Ed.-",
	_sYourDiva: "Your Diva",
	_sPuzzle: "Puzzle",	
	_sLoverSuicide: "Lover's Suicide Oblivion",
	_sRinSignal: "Rin Rin Signal -Append Mix-",
	_sJustFriends: "Just Be Friends",
	_sMelody: "melody... -DIVA mix-",
	_sWintryWinds: "Wintry Winds",
	_sColorfulMelody: "Colorful x Melody",
	_sLukaNightFever: "Luka Luka Night Fever",
	_sStarGazer: "StargazeR",
	_sRequiem: "Requiem for the Phantasma",
	_sIroha: "Iroha Song",
	_sHelloPlanet: "Hello, Planet. (I.M.PLSE-EDIT)",
	_sDemons: "Close and Open, Demons and The Dead",
	_sDissapearance: "The Dissapearance of Hatsune Miku",
	_sParadi: "Paradichlorobenzene",
	_sTwoSideLovers: "Two-Sided Lovers",
	_sLookWayBaby: "Look this Way, Baby",
	_sIntenseVoice: "The Intense Voice of Hatsune Miku",	
	_sColorfulSexy: "Colorful x Sexy",
	_sRollingGirl: "Rolling Girl",
	_sGraffiti: "Sekiranun Graffiti",
	_sIevanPolkka: "Tutorial - Ievan Polkka",
	_sGoMyWay: "[DLC] GO MY WAY!!",
	_sRelations: "[DLC] Relations"
}

_dictSongStarsEasy = {
	_sLookWayBaby: "★★ •  •  •  •  •  •  •  ",
	_sYellow: "★★ •  •  •  •  •  •  •  ",
	_sColorfulMelody: "★★ •  •  •  •  •  •  •  ",
	_sIntenseVoice: "★★ •  •  •  •  •  •  •  ",
	_sMeltdown: "★★ •  •  •  •  •  •  •  ",
	_sJustFriends: "★★ •  •  •  •  •  •  •  ",
	_sDissapearance: "★★ •  •  •  •  •  •  •  ",
	_sStarGazer: "★★ •  •  •  •  •  •  •  ",
	_sRequiem: "★★★ •  •  •  •  •  • ",
	_sButterfly39: "★★ •  •  •  •  •  •  •  ",
	_sYourDiva: "★ •  •  •  •  •  •  •  •",
	_sStardust: "★★ •  •  •  •  •  •  •  ",
	_sElectricAngel: "★ •  •  •  •  •  •  •  •",
	_sTimeLimit: "★ •  •  •  •  •  •  •  •",
	_sMelody: "★★ •  •  •  •  •  •  •  ",
	_sIroha: "★★★ •  •  •  •  •  • ",
	_sColorfulSexy: "★★ •  •  •  •  •  •  •  ",
	_sSpica: "★ •  •  •  •  •  •  •  •",
	_sLukaNightFever: "★★★ •  •  •  •  •  • ",
	_sSongNoForm: "★★ •  •  •  •  •  •  •  ",
	_sTwoSideLovers: "★ •  •  •  •  •  •  •  •",
	_sHelloPlanet: "★★ •  •  •  •  •  •  •  ",
	_sEndInfinity: "★★ •  •  •  •  •  •  •  ",
	_sSolitude: "★★ •  •  •  •  •  •  •  ",
	_sPuzzle: "★ •  •  •  •  •  •  •  •",
	_sPalette: "★ •  •  •  •  •  •  •  •",
	_sThousandYearSolo: "★★ •  •  •  •  •  •  •  ",
	_sLoverSuicide: "★★ •  •  •  •  •  •  •  ",
	_sDemons: "★★★ •  •  •  •  •  • ",
	_sRollingGirl: "★★ •  •  •  •  •  •  •  ",
	_sStarduster: "★ •  •  •  •  •  •  •  •",
	_sParadi: "★★ •  •  •  •  •  •  •  ",
	_sWintryWinds: "★★ •  •  •  •  •  •  •  ",
	_sNekomimi: "★ •  •  •  •  •  •  •  •",
	_sGraffiti: "★ •  •  •  •  •  •  •  •",
	_sRinSignal: "★★★ •  •  •  •  •  • ",
	_sIevanPolkka: " •  •  •  •  •  •  •  •  •",
	_sGoMyWay: "★ •  •  •  •  •  •  •  •",
	_sRelations: "★ •  •  •  •  •  •  •  •"
}

_dictSongStarsNormal = {
	_sLookWayBaby: "★★★★ •  •  •  •  •",
	_sYellow: "★★★ •  •  •  •  •  • ",
	_sColorfulMelody: "★★★★ •  •  •  •  •",
	_sIntenseVoice: "★★★★★ •  •  •  •",
	_sMeltdown: "★★★★ •  •  •  •  •",
	_sJustFriends: "★★★★ •  •  •  •  •",
	_sDissapearance: "★★★★★ •  •  •  •",
	_sStarGazer: "★★★ •  •  •  •  •  • ",
	_sRequiem: "★★★★★ •  •  •  •",
	_sButterfly39: "★★★★ •  •  •  •  •",
	_sYourDiva: "★★★ •  •  •  •  •  • ",
	_sStardust: "★★★ •  •  •  •  •  • ",
	_sElectricAngel: "★★★ •  •  •  •  •  • ",
	_sTimeLimit: "★★★ •  •  •  •  •  • ",
	_sMelody: "★★★★ •  •  •  •  •",
	_sIroha: "★★★★★ •  •  •  •",
	_sColorfulSexy: "★★★★★ •  •  •  •",
	_sSpica: "★★★ •  •  •  •  •  • ",
	_sLukaNightFever: "★★★★★ •  •  •  •",
	_sSongNoForm: "★★★★ •  •  •  •  •",
	_sTwoSideLovers: "★★★★ •  •  •  •  •",
	_sHelloPlanet: "★★★ •  •  •  •  •  • ",
	_sEndInfinity: "★★★★ •  •  •  •  •",
	_sSolitude: "★★★★ •  •  •  •  •",
	_sPuzzle: "★★★★ •  •  •  •  •",
	_sPalette: "★★★★ •  •  •  •  •",
	_sThousandYearSolo: "★★★★ •  •  •  •  •",
	_sLoverSuicide: "★★★★★ •  •  •  •",
	_sDemons: "★★★★★ •  •  •  •",
	_sRollingGirl: "★★★★★ •  •  •  •",
	_sStarduster: "★★★ •  •  •  •  •  • ",
	_sParadi: "★★★★ •  •  •  •  •",
	_sWintryWinds: "★★★★ •  •  •  •  •",
	_sNekomimi: "★★★ •  •  •  •  •  • ",
	_sGraffiti: "★★★★ •  •  •  •  •",
	_sRinSignal: "★★★★ •  •  •  •  •",
	_sIevanPolkka: "★★ •  •  •  •  •  •  •  ",
	_sGoMyWay: "★★★ •  •  •  •  •  • ",
	_sRelations: "★★★ •  •  •  •  •  • "
}

_dictSongStarsHard = {
	_sLookWayBaby: "★★★★★★ •  •  •",
	_sYellow: "★★★★★ •  •  •  •",
	_sColorfulMelody: "★★★★★★ •  •  •",
	_sIntenseVoice: "★★★★★★★ •  •",
	_sMeltdown: "★★★★★★ •  •  •",
	_sJustFriends: "★★★★★★ •  •  •",
	_sDissapearance: "★★★★★★★ •  •",
	_sStarGazer: "★★★★★ •  •  •  •",
	_sRequiem: "★★★★★★★ •  •",
	_sButterfly39: "★★★★★ •  •  •  •",
	_sYourDiva: "★★★★ •  •  •  •  •",
	_sStardust: "★★★★★ •  •  •  •",
	_sElectricAngel: "★★★★★ •  •  •  •",
	_sTimeLimit: "★★★★★★ •  •  •",
	_sMelody: "★★★★★ •  •  •  •",
	_sIroha: "★★★★★★ •  •  •",
	_sColorfulSexy: "★★★★★★★ •  •",
	_sSpica: "★★★★★ •  •  •  •",
	_sLukaNightFever: "★★★★★★ •  •  •",
	_sSongNoForm: "★★★★★ •  •  •  •",
	_sTwoSideLovers: "★★★★★★ •  •  •",
	_sHelloPlanet: "★★★★★ •  •  •  •",
	_sEndInfinity: "★★★★★★ •  •  •",
	_sSolitude: "★★★★★ •  •  •  •",
	_sPuzzle: "★★★★★ •  •  •  •",
	_sPalette: "★★★★★ •  •  •  •",
	_sThousandYearSolo: "★★★★★ •  •  •  •",
	_sLoverSuicide: "★★★★★★ •  •  •",
	_sDemons: "★★★★★★ •  •  •",
	_sRollingGirl: "★★★★★★★ •  •",
	_sStarduster: "★★★★ •  •  •  •  •",
	_sParadi: "★★★★★★ •  •  •",
	_sWintryWinds: "★★★★★ •  •  •  •",
	_sNekomimi: "★★★★★ •  •  •  •",
	_sGraffiti: "★★★★★ •  •  •  •",
	_sRinSignal: "★★★★★ •  •  •  •",
	_sIevanPolkka: "★★★ •  •  •  •  •  • ",
	_sGoMyWay: "★★★★★ •  •  •  •",
	_sRelations: "★★★★★ •  •  •  •"
}

_dictSongStarsExtreme = {
	_sLookWayBaby: "★★★★★★★★ •",
	_sYellow: "★★★★★★★ •  •",
	_sColorfulMelody: "★★★★★★★★ •",
	_sIntenseVoice: "★★★★★★★★★",
	_sMeltdown: "★★★★★★★★ •",
	_sJustFriends: "★★★★★★★★ •",
	_sDissapearance: "★★★★★★★★★",
	_sStarGazer: "★★★★★★★★ •",
	_sRequiem: "★★★★★★★★ •",
	_sButterfly39: "★★★★★★★★ •",
	_sYourDiva: "★★★★★★ •  •  •",
	_sStardust: "★★★★★★★ •  •",
	_sElectricAngel: "★★★★★★★★ •",
	_sTimeLimit: "★★★★★★★ •  •",
	_sMelody: "★★★★★★★ •  •",
	_sIroha: "★★★★★★★★ •",
	_sColorfulSexy: "★★★★★★★★★",
	_sSpica: "★★★★★★★ •  •",
	_sLukaNightFever: "★★★★★★★ •  •",
	_sSongNoForm: "★★★★★★ •  •  •",
	_sTwoSideLovers: "★★★★★★★★★",
	_sHelloPlanet: "★★★★★★★ •  •",
	_sEndInfinity: "★★★★★★★ •  •",
	_sSolitude: "★★★★★★★★ •",
	_sPuzzle: "★★★★★★★ •  •",
	_sPalette: "★★★★★★★ •  •",
	_sThousandYearSolo: "★★★★★★★ •  •",
	_sLoverSuicide: "★★★★★★★★ •",
	_sDemons: "★★★★★★★★ •",
	_sRollingGirl: "★★★★★★★★ •",
	_sStarduster: "★★★★★★ •  •  •",
	_sParadi: "★★★★★★★★★",
	_sWintryWinds: "★★★★★★★★ •",
	_sNekomimi: "★★★★★★★ •  •",
	_sGraffiti: "★★★★★★★ •  •",
	_sRinSignal: "★★★★★★★ •  •",
	_sIevanPolkka: "★★★★★★★ •  •",
	_sGoMyWay: "★★★★★★★★ •",
	_sRelations: "★★★★★★★★ •"
}

_dictModuleNames = {
	_mHatsuneMiku: "Miku",
	_mMeikoStyle: "Meiko styled Miku",
	_mRinStyle: "Rin styled Miku",
	_mSpaceCH5: "Space CH5 Miku",
	_mSpaceCH: "Space CH39 Miku",
	_mGalliaSquad: "Gallia Squad Miku",
	_mPStyleRP: "Rose Pink Miku",
	_mPStyleMG: "Green Mint Miku",
	_mPStyleLP: "Lavender Purple Miku",
	_mPStyleFB: "Felicia Blue Miku",
	_mPStyleIS: "Ice Silver Miku",
	_mPStyleCW: "Ceramic White Miku",
	_mPStylePB: "Piano Black Miku",
	_mPStyleCG: "Champagne Gold Miku",
	_mCheer: "Cheerleader Miku",
	_mPlugIn: "Plug-in Miku",
	_mGothic: "Gothic Miku",
	_mPrincess: "Princess Miku",
	_mMiko: "Shrine Maiden Miku",
	_mCatGirl: "Neko Miku",
	_mSleepy: "Sleepy Miku",
	_mHeartHunter: "Heart Hunter Miku",
	_mVocal: "Vocal Miku",
	_mPunk: "Punk Miku",
	_mDancer: "Dancer Miku",
	_mStar: "Star Miku",
	_mFairy: "Fairy Miku",
	_mSchool: "School Miku",
	_mSnow: "Winter Miku",
	_mArabian: "Arabian Miku",
	_mElegant: "Sakura Blossom Miku",
	_mChina: "Chinese Miku",
	_mMagician: "Magician Miku",
	_mWhiteDress: "Wedding Miku",
	_mPirate: "Pirate Miku",
	_mVN02: "VN02 Miku",
	_mGalaxy: "Galaxy Miku",
	_mHa2Miku2: "Hatsune Miku",
	_mHatsuneMikuSwimwearS: "🩱 School Miku",
	_mHatsuneMikuSwimwear: "👙 Miku",
	_mAileDAngeMiku: "Angel Wing Miku",
	_mSpacyNurseMiku: "Nurse Miku",
	_mSchoolNobleMiku: "Ojou-sama Miku",
	_mJerseyMiku: "Jersey Miku",
	_mLittleRedMiku: "Red Ridding Hood Miku",
	_mWhiteGownMiku: "Nature Miku",
	_mVintageDressMiku: "Vintage Princess Miku",
	_mPinkPopsMiku: "Modern Miku",
	_mAngelMiku: "Angelic Miku",
	_mNaturalMiku: "Everyday Miku",
	_mSpiritualMiku: "Spiritual Miku",
	_mColorfulGumdrop: "Gumdrop Miku",
	_mYellowMiku: "Yellow Miku",
	_mOutAboutMiku: "Casual Miku",
	_mShaihateMiku: "Respectful Miku",
	_mInfinityMiku: "Endless Miku",
	_mPowderMiku: "Snowy Miku",
	_mButterflyMiku: "Butterfly Miku",
	_mCuteMiku: "Cute Miku",
	_mHatsuneMikuSwimwearB: "👙 Miku",
	_mPinkPopsASMiku: "Modern Miku",
	
	_mAppendMiku: "Append Miku",
	_mHarukaMiku: "IDOLM@STER Miku",
	_mXmasMiku: "Xmas Miku",
	_mSnow2010Miku: "Snow Miku 2010",
	_mSnow2011Miku: "Snow Miku 2011",
	_mEveWhite: "White Eve Miku",
	_mHelloWorldMiku: "Cyber Angel Miku",
	_mRacing2010Miku: "Racing Miku 2010",
	_mRacing2011Miku: "Racing Miku 2011",
	_mFeiYenMiku: "Fei-Yen Miku",
	_mRollingMiku: "Rolling Miku",
	_mDemonDeadMiku: "Yokai Miku",
	_mOrbitMiku: "SPiCa Miku",
	_mPatchworkMiku: "Patchwork Miku",
	_mSonicMiku: "Sonic Miku",
	_mTyrol: "Sepia Miku",
	_mConflictMiku: "Toon Shader Miku",
	_mShinyMiku: "Anime Miku",
	_mType2020: "7th Dragoon Miku",
	
	_mKagamineRin: "Kagamine Rin",
	_mAsymmetricRRin: "Asymetric Rin",
	_mCuteRin: "Cute Rin",
	_mReactorRin: "Reactor Rin",
	_mRoFStyleRin: "Rinbell",
	_mCheerfulCandy: "Candy Rin",
	_mKagamineRinSwimwearT: "🩱 Rin",
	_mKagamineRinSwimwear: "👙 Rin",
	
	_mXmasRin: "Xmas Rin",
	_mAmiMamiRin: "IDOLM@STER Rin",
	_mSchoolRin: "School Rin",
	_mAppendRin: "Append Rin",
	_mNamelessNo1Rin: "Imca Rin",
	_mRacing2010Rin: "Racing Rin 2010",
	_mBlackStarRin: "Black ⭐ Rin",
	_mKagerou: "Japanese Warrior Rin",
	_mSappanwoodRin: "Japanese Rin",
	
	_mKagamineLen: "Kagamine Len",
	_mAsymmetricLLen: "Asymmetric Len",
	_mPunkishLen: "Punk Len",
	_mSchoolJerseyLen: "Jersey Len",
	_mKagamineLenSwimwearWS: "🏄 Len",
	_mKagamineLenSwimwear: "🩳 Len",
	
	_mXmasLen: "Xmas Len",
	_mSchoolLen: "School Len",
	_mAppendLen: "Append Len",
	_mBlueMoonLen: "Blue 🌙 Len",
	_mIndigoLen: "Japanese Len",
	_mStrangeDark: "Emo Len",
	_mNamelessNo7Len: "Kurt Len",
	
	_mMegurineLuka: "Megurine Luka",
	_mMegurineLukaSwimwear: "👙 Luka",
	_mChiffonDressLuka: "Nature Luka",
	_mVFSuitLuka: "Lukah Bryant",
	_mFrauleinLuka: "Miss Luka",
	_mBlossomLuka: "Blossom Luka",
	_mHardRockLuka: "Rocker Luka",
	_mMegurineLukaSwimwearP: "👙 Luka",
	
	_mXmasLuka: "Xmas Luka",
	_mWitchLuka: "Witch Luka",
	_mChihayaLuka: "IDOLM@STER Luka",
	_mFairyLuka: "Colorful Luka",
	_mSilenceLuka: "Nun Luka",
	_mRacing2010Luka: "Racing Luka 2010",
	_mCyberLuka: "Cyber Dancer Luka",
	_mNagisaLuka: "Nagisa Luka",
	_mNagisaASLuka: "Nagisa Luka",
	
	_mKaito: "Kaito",	
	_mKaitoSwimwear: "🩳 Kaito",
	_mCampusKaito: "College Kaito",
	_mClassicKaito: "Opera Kaito",
	_mCyberCatKaito: "Neko Kaito",
	_mKaitoSwimwearV: "🩲 Kaito",
	_mKaitoSwimwearVAlt: "🩲 Kaito",
	
	_mXmasKaito: "Xmas Kaito",
	_mWhiteBlazerKaito: "Elegant Kaito",
	_mDrizzleKaito: "🇯🇵 Kaito",
	_mVioletKaito: "Bard Kaito",
	_mVFNinjaKaito: "Ninja Kaito",
	_mVFNinjaASKaito: "Ninja Kaito",
	
	_mMeiko: "Meiko",
	_mMeikoSwimwear: "🩱 Meiko",
	_mFluffyCoatMeiko: "Winter Meiko",
	_mScarletMeiko: "Cabaret Meiko",
	_mModernGirlMeiko: "Modern Meiko",
	_mMeikoSwimwearB: "👙 Meiko",
	_mModernGirlAltMeiko: "Modern Meiko",
	
	_mTaishoMeiko: "Kimono Meiko",
	_mXmasMeiko: "Xmas Meiko",
	_mSexyPuddingMeiko: "Colorful Meiko",
	_mBlackTailThiefMeiko: "🐱 Meiko",
	_mAutumnMeiko: "🇯🇵 Meiko",
	_mRacing2010Meiko: "Racing MEIKO 2010",
	_mLoreleiMeiko: "Lorelei",
	
	_mAkitaNeru: "Akita Neru",
	_mAborigineNeru: "Native Neru",
	_mAkitaNeruSwimwear: "🩱 Neru",
	_mClubNeru: "Sports Neru",
		
	_mYowaneHaku: "Yowane Haku",
	_mCyberDriveHaku: "Cyber Haku",
	_mYowaneHakuSwimwear: "👙 Haku",
	_mGothicPurpleHaku: "Gothic Haku",
	
	_mSakineMeiko: "Sakine Meiko",
	_mBlackDressSakine: "Dark Sakine Meiko",
	_mSakineMeikoSwimswear: "👙 Sakine Meiko",
	_mNostalgySakine: "Spring Sakine Meiko",
	_mBlackDressNSSakine: "🐱 Sakine Meiko"
}

_dictModuleOriginalNames = {
	_mHatsuneMiku: "Hatsune Miku Original",
	_mMeikoStyle: "Meiko Style",
	_mRinStyle: "Rin Style",
	_mSpaceCH5: "Space Channel 5",
	_mSpaceCH: "Space Channel 39",
	_mGalliaSquad: "Gallia Squad 7",
	_mPStyleRP: "P-Style RP",
	_mPStyleMG: "P-Style MG",
	_mPStyleLP: "P-Style LP",
	_mPStyleFB: "P-Style FB",
	_mPStyleIS: "P-Style IS",
	_mPStyleCW: "P-Style CW",
	_mPStylePB: "P-Style PB",
	_mPStyleCG: "P-Style CG",
	_mCheer: "Cheerleader",
	_mPlugIn: "Plug-in",
	_mGothic: "Gothic",
	_mPrincess: "Princess",
	_mMiko: "Miko",
	_mCatGirl: "Kitty Cat",
	_mSleepy: "Sleepy Time",
	_mHeartHunter: "Heart Hunter",
	_mVocal: "Vocal",
	_mPunk: "Punk",
	_mDancer: "Dancer",
	_mStar: "Star",
	_mFairy: "Fairy",
	_mSchool: "School",
	_mSnow: "Snow",
	_mArabian: "Arabian",
	_mElegant: "Miyabi",
	_mChina: "Chinese Debut",
	_mMagician: "Magician",
	_mWhiteDress: "White Dress",
	_mPirate: "Pirate",
	_mVN02: "VN02",
	_mGalaxy: "Galaxy",
	_mHa2Miku2: "Ha2ne Miku",
	_mHatsuneMikuSwimwearS: "Hatsune Miku Swimwear S",
	_mHatsuneMikuSwimwear: "Hatsune Miku Swimwear",
	_mAileDAngeMiku: "Aile d'Ange",
	_mSpacyNurseMiku: "Spacy Nurse",
	_mSchoolNobleMiku: "School Noble",
	_mJerseyMiku: "JerSey",
	_mLittleRedMiku: "Little Red Hood",
	_mWhiteGownMiku: "White One Piece",
	_mVintageDressMiku: "Vintage Dress",
	_mPinkPopsMiku: "Pink Pops",
	_mAngelMiku: "Angel",
	_mNaturalMiku: "Natural",
	_mSpiritualMiku: "Spiritual",
	_mColorfulGumdrop: "Colorful Gumdrop",
	_mYellowMiku: "Yellow",
	_mOutAboutMiku: "Out and About",
	_mShaihateMiku: "Saihate Miku",
	_mInfinityMiku: "Infinity",
	_mPowderMiku: "Powder",
	_mButterflyMiku: "Hatsune Miku Butterfly",
	_mCuteMiku: "Hatsune Miku Cute",
	_mHatsuneMikuSwimwearB: "Hatsune Miku Swimwear B",
	_mPinkPopsASMiku: "Pink Pops AS",
	
	_mAppendMiku: "Hatsune Miku Append",
	_mHarukaMiku: "Haruka Style",
	_mXmasMiku: "Christmas Miku",
	_mSnow2010Miku: "Snow Miku 2010",
	_mSnow2011Miku: "Snow Miku 2011",
	_mEveWhite: "White Eve",
	_mHelloWorldMiku: "Hello, World.",
	_mRacing2010Miku: "Racing Miku 2010",
	_mRacing2011Miku: "Racing Miku 2011",
	_mFeiYenMiku: "Fei-Yen Style",
	_mRollingMiku: "Rolling Girl",
	_mDemonDeadMiku: "Demons and the Dead",
	_mOrbitMiku: "Orbit",
	_mPatchworkMiku: "Patchwork",
	_mSonicMiku: "Sonic Style",
	_mTyrol: "Tyrol",
	_mConflictMiku: "Conflict",
	_mShinyMiku: "Shiny",
	_mType2020: "TYPE2020",
	
	_mKagamineRin: "Kagamine Rin Original",
	_mAsymmetricRRin: "Asymmetry R",
	_mCuteRin: "Kagamine Rin Cute",
	_mReactorRin: "Reactor",
	_mRoFStyleRin: "RoF Style",
	_mCheerfulCandy: "Cheerful Candy",
	_mKagamineRinSwimwearT: "Kagamine Rin Swimwear T",
	_mKagamineRinSwimwear: "Kagamine Rin Swimwear",
	
	_mXmasRin: "Christmas Rin",
	_mAmiMamiRin: "Ami/Mami Style",
	_mSchoolRin: "Kagamine Rin Schoolwear",
	_mAppendRin: "Kagamine Rin Append",
	_mNamelessNo1Rin: "Nameless No.1",
	_mRacing2010Rin: "Racing Rin 2010",
	_mBlackStarRin: "Black Star",
	_mKagerou: "Heat Haze",
	_mSappanwoodRin: "Raspberry",
	
	_mKagamineLen: "Kagamine Len Original",
	_mAsymmetricLLen: "Asymmetry L",
	_mPunkishLen: "Punkish",
	_mSchoolJerseyLen: "School Jersey",
	_mKagamineLenSwimwearWS: "Kagamine Len Swimwear Water Suit",
	_mKagamineLenSwimwear: "Kagamine Len Swimwear",
	
	_mXmasLen: "Christmas Len",
	_mSchoolLen: "Kagamine Len Schoolwear",
	_mAppendLen: "Kagamine Len Append",
	_mBlueMoonLen: "Blue Moon",
	_mIndigoLen: "Indigo",
	_mStrangeDark: "Strangely Dark",
	_mNamelessNo7Len: "Nameless No.7",
	
	_mMegurineLuka: "Megurine Luka Original",
	_mMegurineLukaSwimwear: "Megurine Luka Swimwear",
	_mChiffonDressLuka: "Chiffon Dress",
	_mVFSuitLuka: "VF Suit",
	_mFrauleinLuka: "Fraulein",
	_mBlossomLuka: "Megurine Luka Flower",
	_mHardRockLuka: "Hard Rock",
	_mMegurineLukaSwimwearP: "Megurine Luka Swimwear P",
	
	_mXmasLuka: "Christmas Luka",
	_mWitchLuka: "Witch Girl Style",
	_mChihayaLuka: "Chihaya Style",
	_mFairyLuka: "Fairy Macaroon",
	_mSilenceLuka: "Silence",
	_mRacing2010Luka: "Racing Luka 2010",
	_mCyberLuka: "Cybernation",
	_mNagisaLuka: "Nagisa Replica",
	_mNagisaASLuka: "Nagisa Replica AS",
	
	_mKaito: "Kaito Original",	
	_mKaitoSwimwear: "KAITO Swimwear",
	_mCampusKaito: "Campus",
	_mClassicKaito: "Classic",
	_mCyberCatKaito: "Cyber Cat",
	_mKaitoSwimwearV: "KAITO Swimwear Visor",
	_mKaitoSwimwearVAlt: "KAITO Swimwear Visor AS",
	
	_mXmasKaito: "Christmas Kaito",
	_mWhiteBlazerKaito: "White Blazer",
	_mDrizzleKaito: "Shigure",
	_mVioletKaito: "Violet",
	_mVFNinjaKaito: "VF Ninja",
	_mVFNinjaASKaito: "VF Ninja AS",
	
	_mMeiko: "Meiko Original",
	_mMeikoSwimwear: "MEIKO Swimwear A",
	_mFluffyCoatMeiko: "Fluffy Coat",
	_mScarletMeiko: "Scarlet",
	_mModernGirlMeiko: "Modern Girl",
	_mMeikoSwimwearB: "MEIKO Swimwear B",
	_mModernGirlAltMeiko: "Modern Girl AS",
	
	_mTaishoMeiko: "Taisho Nostalgia",
	_mXmasMeiko: "Christmas Meiko",
	_mSexyPuddingMeiko: "Sweet Pudding",
	_mBlackTailThiefMeiko: "Lin Xiao-Mei",
	_mAutumnMeiko: "Momiji",
	_mRacing2010Meiko: "Racing MEIKO 2010",
	_mLoreleiMeiko: "Lorelei",
	
	_mAkitaNeru: "Akita Neru Original",
	_mAborigineNeru: "Ethnic",
	_mAkitaNeruSwimwear: "Akita Neru Swimwear",
	_mClubNeru: "School Club Girl",
	
	_mYowaneHaku: "Yowane Haku Original",
	_mCyberDriveHaku: "Cyber Dive",
	_mYowaneHakuSwimwear: "Yowane Haku Swimwear",
	_mGothicPurpleHaku: "Gothic Purple",
	
	_mSakineMeiko: "Sakine Meiko Original",
	_mBlackDressSakine: "Black Dress",
	_mSakineMeikoSwimswear: "Sakine Meiko Swimwear",
	_mNostalgySakine: "Nostalgia",
	_mBlackDressNSSakine: "Black Dress CatStyle"
}

_dictCharNames = {
	_chMiku: "Hatsune Miku",
	_chRin: "Kagamine Rin",
	_chLen: "Kagamine Len",
	_chLuka: "Megurine Luka", 
	_chKaito: "Kaito",
	_chMeiko: "Meiko",
	_chNeru: "Neru",
	_chHaku: "Haku",
	_chSakine: "Sakine Meiko"
}

_dictDifficulty = {
	_dEasy: "Easy",
	_dNormal: "Normal",
	_dHard: "Hard",
	_dExtreme: "Extreme"
}

_dictSongEndResult = {
	_serCheap: "Cheap",
	_serStandard: "Standard",
	_serGreat: "Great",
	_serExcellent: "Excellent",
	_serPerfect: "Perfect"
}

_dictModuleAddress = {
	_mHatsuneMiku: [0, 0xd0b6d4],
	_mMeikoStyle: [1, 0xd0b6d4],
	_mRinStyle: [2, 0xd0b6d4],
	_mSpaceCH5: [3, 0xd0b6d4],
	_mSpaceCH: [4, 0xd0b6d4],
	_mGalliaSquad: [5, 0xd0b6d4],
	_mPStyleRP: [6, 0xd0b6d4],
	_mPStyleMG: [7, 0xd0b6d4],
	_mPStyleLP: [0, 0xd0b6d5],
	_mPStyleFB: [1, 0xd0b6d5],
	_mPStyleIS: [2, 0xd0b6d5],
	_mPStyleCW: [3, 0xd0b6d5],
	_mPStylePB: [4, 0xd0b6d5],
	_mPStyleCG: [5, 0xd0b6d5],
	_mCheer: [6, 0xd0b6d5],
	_mPlugIn: [7, 0xd0b6d5],
	_mGothic: [0, 0xd0b6d6],
	_mPrincess: [1, 0xd0b6d6],
	_mMiko: [2, 0xd0b6d6],
	_mCatGirl: [3, 0xd0b6d6],
	_mSleepy: [4, 0xd0b6d6],
	_mHeartHunter: [5, 0xd0b6d6],
	_mVocal: [6, 0xd0b6d6],
	_mPunk: [7, 0xd0b6d6],
	_mDancer: [0, 0xd0b6d7],
	_mStar: [1, 0xd0b6d7],
	_mFairy: [2, 0xd0b6d7],
	_mSchool: [3, 0xd0b6d7],
	_mSnow: [4, 0xd0b6d7],
	_mArabian: [5, 0xd0b6d7],
	_mElegant: [6, 0xd0b6d7],
	_mChina: [7, 0xd0b6d7],
	_mMagician: [0, 0xd0b6d8],
	_mWhiteDress: [1, 0xd0b6d8],
	_mPirate: [2, 0xd0b6d8],
	_mVN02: [3, 0xd0b6d8],
	_mGalaxy: [4, 0xd0b6d8],
	_mHa2Miku2: [5, 0xd0b6d8],
	_mHatsuneMikuSwimwearS: [6, 0xd0b6d8],
	_mHatsuneMikuSwimwear: [7, 0xd0b6d8],
	_mAileDAngeMiku: [0, 0xd0b6d9],
	_mSpacyNurseMiku: [1, 0xd0b6d9],
	_mSchoolNobleMiku: [2, 0xd0b6d9],
	_mJerseyMiku: [3, 0xd0b6d9],
	_mLittleRedMiku: [4, 0xd0b6d9],
	_mWhiteGownMiku: [5, 0xd0b6d9],
	_mVintageDressMiku: [6, 0xd0b6d9],
	_mPinkPopsMiku: [7, 0xd0b6d9],
	_mAngelMiku: [0, 0xd0b6da],
	_mNaturalMiku: [1, 0xd0b6da],
	_mSpiritualMiku: [2, 0xd0b6da],
	_mColorfulGumdrop: [3, 0xd0b6da],
	_mYellowMiku: [4, 0xd0b6da],
	_mOutAboutMiku: [5, 0xd0b6da],
	_mShaihateMiku: [6, 0xd0b6da],
	_mInfinityMiku: [7, 0xd0b6da],
	_mPowderMiku: [0, 0xd0b6db],
	_mButterflyMiku: [1, 0xd0b6db],
	_mCuteMiku: [2, 0xd0b6db],
	_mHatsuneMikuSwimwearB: [3, 0xd0b6db],
	_mPinkPopsASMiku: [4, 0xd0b6db],
	_mAppendMiku: [5, 0xd0b6db],
	_mHarukaMiku: [6, 0xd0b6db],
	_mXmasMiku: [7, 0xd0b6db],
	_mSnow2010Miku: [0, 0xd0b6dc],
	_mSnow2011Miku: [1, 0xd0b6dc],
	_mEveWhite: [2, 0xd0b6dc],
	_mHelloWorldMiku: [3, 0xd0b6dc],
	_mRacing2010Miku: [4, 0xd0b6dc],
	_mRacing2011Miku: [5, 0xd0b6dc],
	_mFeiYenMiku: [6, 0xd0b6dc],
	_mRollingMiku: [7, 0xd0b6dc],
	_mDemonDeadMiku: [0, 0xd0b6dd],
	_mOrbitMiku: [1, 0xd0b6dd],
	_mPatchworkMiku: [2, 0xd0b6dd],
	_mSonicMiku: [3, 0xd0b6dd],
	_mTyrol: [4, 0xd0b6dd],
	_mConflictMiku: [5, 0xd0b6dd],
	_mShinyMiku: [6, 0xd0b6dd],
	_mType2020: [7, 0xd0b6dd],
	
	_mKagamineRin: [0, 0xd0b6de],
	_mKagamineRinSwimwear: [1, 0xd0b6de],
	_mAsymmetricRRin: [2, 0xd0b6de],
	_mCuteRin: [3, 0xd0b6de],
	_mReactorRin: [4, 0xd0b6de],
	_mRoFStyleRin: [5, 0xd0b6de],
	_mCheerfulCandy: [6, 0xd0b6de],
	_mKagamineRinSwimwearT: [7, 0xd0b6de],
	_mXmasRin: [0, 0xd0b6df],
	_mAmiMamiRin: [1, 0xd0b6df],
	_mSchoolRin: [2, 0xd0b6df],
	_mAppendRin: [3, 0xd0b6df],
	_mNamelessNo1Rin: [4, 0xd0b6df],
	_mRacing2010Rin: [5, 0xd0b6df],
	_mBlackStarRin: [6, 0xd0b6df],
	_mKagerou: [7, 0xd0b6df],
	_mSappanwoodRin: [0, 0xd0b6e0],
	
	_mKagamineLen: [1, 0xd0b6e0],
	_mKagamineLenSwimwear: [2, 0xd0b6e0],
	_mAsymmetricLLen: [3, 0xd0b6e0],
	_mPunkishLen: [4, 0xd0b6e0],
	_mSchoolJerseyLen: [5, 0xd0b6e0],
	_mKagamineLenSwimwearWS: [6, 0xd0b6e0],
	_mXmasLen: [7, 0xd0b6e0],
	_mSchoolLen: [0, 0xd0b6e1],
	_mAppendLen: [1, 0xd0b6e1],
	_mBlueMoonLen: [2, 0xd0b6e1],
	_mIndigoLen: [3, 0xd0b6e1],
	_mStrangeDark: [4, 0xd0b6e1],
	_mNamelessNo7Len: [5, 0xd0b6e1],	
	
	_mMegurineLuka: [6, 0xd0b6e1],
	_mMegurineLukaSwimwear: [7, 0xd0b6e1],
	_mChiffonDressLuka: [0, 0xd0b6e2],
	_mVFSuitLuka: [1, 0xd0b6e2],
	_mFrauleinLuka: [2, 0xd0b6e2],
	_mBlossomLuka: [3, 0xd0b6e2],
	_mHardRockLuka: [4, 0xd0b6e2],
	_mMegurineLukaSwimwearP: [5, 0xd0b6e2],
	_mXmasLuka: [6, 0xd0b6e2],
	_mWitchLuka: [7, 0xd0b6e2],
	_mChihayaLuka: [0, 0xd0b6e3],
	_mFairyLuka: [1, 0xd0b6e3],
	_mSilenceLuka: [2, 0xd0b6e3],
	_mRacing2010Luka: [3, 0xd0b6e3],
	_mCyberLuka: [4, 0xd0b6e3],
	_mNagisaLuka: [5, 0xd0b6e3],
	_mNagisaASLuka: [6, 0xd0b6e3],	
	
	_mKaito: [7, 0xd0b6e3],
	_mKaitoSwimwear: [0, 0xd0b6e4],
	_mCampusKaito: [1, 0xd0b6e4],
	_mClassicKaito: [2, 0xd0b6e4],
	_mCyberCatKaito: [3, 0xd0b6e4],
	_mKaitoSwimwearV: [4, 0xd0b6e4],
	_mKaitoSwimwearVAlt: [5, 0xd0b6e4],
	_mXmasKaito: [6, 0xd0b6e4],
	_mWhiteBlazerKaito: [7, 0xd0b6e4],
	_mDrizzleKaito: [0, 0xd0b6e5],
	_mVioletKaito: [1, 0xd0b6e5],
	_mVFNinjaKaito: [2, 0xd0b6e5],
	_mVFNinjaASKaito: [3, 0xd0b6e5],
	
	_mMeiko: [4, 0xd0b6e5],
	_mMeikoSwimwear: [5, 0xd0b6e5],
	_mFluffyCoatMeiko: [6, 0xd0b6e5],
	_mScarletMeiko: [7, 0xd0b6e5],
	_mModernGirlMeiko: [0, 0xd0b6e6],
	_mMeikoSwimwearB: [1, 0xd0b6e6],
	_mModernGirlAltMeiko: [2, 0xd0b6e6],
	_mTaishoMeiko: [3, 0xd0b6e6],
	_mXmasMeiko: [4, 0xd0b6e6],
	_mSexyPuddingMeiko: [5, 0xd0b6e6],
	_mBlackTailThiefMeiko: [6, 0xd0b6e6],
	_mAutumnMeiko: [7, 0xd0b6e6],
	_mRacing2010Meiko: [0, 0xd0b6e7],
	_mLoreleiMeiko: [1, 0xd0b6e7],
	
	_mAkitaNeru: [2, 0xd0b6e7],
	_mAborigineNeru: [3, 0xd0b6e7],
	_mAkitaNeruSwimwear: [4, 0xd0b6e7],
	_mClubNeru: [5, 0xd0b6e7],
	
	_mYowaneHaku: [6, 0xd0b6e7],
	_mCyberDriveHaku: [7, 0xd0b6e7],
	_mYowaneHakuSwimwear: [0, 0xd0b6e8],
	_mGothicPurpleHaku: [1, 0xd0b6e8],
	
	_mSakineMeiko: [2, 0xd0b6e8],
	_mBlackDressSakine: [3, 0xd0b6e8],
	_mSakineMeikoSwimswear: [4, 0xd0b6e8],
	_mNostalgySakine: [5, 0xd0b6e8],
	_mBlackDressNSSakine: [6, 0xd0b6e8]
}

_dictFlags = {
	_fSongs: [0xd0b8ae, 0xd0b8b2, 0, 3],
	_fSongsHard: [0xd0b8c2, 0xd0b8c6, 0, 3],
	_fSongsExtreme: [0xd0b8c7, 0xd0b8cb, 0, 3],
	
	_fDivaRooms: [0xd0b741, 0xd0b742, 0, 0],
	_fRoomTheme: [0xd0b74c, 0xd0b74e, 0, 3],
	_fShelfAccessory: [0xd0b7a6, 0xd0b7ae, 0, 0],
	_fWallAccessory: [0xd0b814, 0xd0b81c, 0, 7],
	_fFloorAccessory: [0xd0b75f, 0xd0b764, 0, 0],
	_fVisualLibrary: [0xd0b8ce, 0xd0b8d2, 0, 5],
		
	_fModules: [0xd0b6d4, 0xd0b6e8, 0, 6],
	_fModulesMiku: [0xd0b6d4, 0xd0b6dd, 0, 7],
	_fModulesRin: [0xd0b6de, 0xd0b6e0, 0, 0],
	_fModulesLen: [0xd0b6e0, 0xd0b6e1, 1, 5],
	_fModulesLuka: [0xd0b6e1, 0xd0b6e3, 6, 6],
	_fModulesKaito: [0xd0b6e3, 0xd0b6e5, 7, 3],
	_fModulesMeiko: [0xd0b6e5, 0xd0b6e7, 4, 1],
	_fModulesNeru: [0xd0b6e7, 0xd0b6e7, 2, 5],
	_fModulesHaku: [0xd0b6e7, 0xd0b6e8, 6, 1],
	_fModulesSakine: [0xd0b6e8, 0xd0b6e8, 2, 6],
	
	_fRoomEvents: [0xd0b88e, 0xd0b899, 0, 5],
	_fTitles: [0xd0b8d8, 0xd0b8e5, 0, 5]
}

_dictGreatSongs = {
	_sNekomimi: 10,
	_sSolitude: 10,
	_sPalette: 10,
	_sSpica: 10,
	_sStarduster: 10,
	_sEndInfinity: 10,	
	_sStardust: 10,
	_sTimeLimit: 10,
	_sSongNoForm: 10,
	_sMeltdown: 10,
	_sElectricAngel: 10,
	_sYellow: 10,
	_sThousandYearSolo: 10,
	_sButterfly39: 10,
	_sYourDiva: 10,
	_sPuzzle: 10,	
	_sLoverSuicide: 10,
	_sRinSignal: 10,
	_sJustFriends: 10,
	_sMelody: 10,
	_sWintryWinds: 10,
	_sColorfulMelody: 10,
	_sLukaNightFever: 10,
	_sStarGazer: 10,
	_sRequiem: 25,
	_sIroha: 10,
	_sHelloPlanet: 10,
	_sDemons: 10,
	_sDissapearance: 25,
	_sParadi: 10,
	_sTwoSideLovers: 25,
	_sLookWayBaby: 10,
	_sIntenseVoice: 25,	
	_sColorfulSexy: 25,
	_sRollingGirl: 10,
	_sGraffiti: 10,
	_sGoMyWay: 10,
	_sRelations: 10
}

_dictSongFail = {
	_chMiku: _fsMikuFail,
	_chRin: _fsRinFail,
	_chLen: _fsLenFail,
	_chLuka: _fsLukaFail, 
	_chKaito: _fsKaitoFail,
	_chMeiko: _fsMeikoFail,
	_chNeru: _fsNeruFail,
	_chHaku: _fsHakuFail,
	_chSakine: _fsSakineFail
}

_dictDLCNotes = {
	_sGoMyWay: [193, 315, 322, 376],
	_sRelations: [142, 272, 272, 327]
}

_dictDLCNames = {
	_sGoMyWay: [0x4d204f47, 0x41572059, 0x212159],
	_sRelations: [0x616c6572, 0x6e6f6974, 0x73]
}

_dictEmpty = {
	0: ""
}

_dictRin = {
	0: "",
	1: "️🍊"
}
_dictLen = {
	0: "",
	1: "️🍌"
}
_dictLuka = {
	0: "",
	1: "️🐙"
}
_dictKaito = {
	0: "",
	1: "️🍦"
}
_dictMeiko = {
	0: "",
	1: "️👗"
}
_dictNeru = {
	0: "",
	1: "️📱"
}
_dictHaku = {
	0: "",
	1: "️🍶"
}
_dictSakine = {
	0: "",
	1: "️👧"
}


//#endregion

//#region Memory Accessors
//-Static Song variables
songPlayDifficulty = byte(0xd01868)
songPlayID = byte(0xcc5fc8)
currentModule = byte(0xcc5fd8)
secondModule = byte(0xcc600c)
money = dword(0xcc6058)

songPointer = dword(0xc66460)

//-From 0x00 to 0xff
songLife = byte(songPointer + poffset + 0x2312C)

//-Shows the final result. Use on LB Submit
songResultShownFlag = byte(songPointer + poffset + 0x230E0) //-0xd to 0xe

songResultCool = dword(songPointer + poffset + 0x23144)
songResultFine = dword(songPointer + poffset + 0x23148)
songResultSafe = dword(songPointer + poffset + 0x2314C)
songResultSad = dword(songPointer + poffset + 0x23150)
songResultWorst = dword(songPointer + poffset + 0x23154)
songCurrentCombo = dword(songPointer + poffset + 0x2313C)
songResultCombo = dword(songPointer + poffset + 0x2316C)
songTotalNotes = dword(songPointer + poffset + 0x2315C)

songResultScore = dword(songPointer + poffset + 0x23138)
songResultComboBonus = dword(songPointer + poffset + 0x23160)
songResultChanceScore = dword(songPointer + poffset + 0x23174)
//-Item must be 0xffffffff to submit LB
helpItem = dword(0xd0b98c)
chanceTimeFlag = byte(0xd0b97a)

songPlayingID = byte(songPointer + poffset + 0x23044)
//-Use this to start a LB
songEndedFlag = byte(songPointer + poffset + 0x230E8)
//-0, 1, 2, 3, 4, 5 ser variables
songEndResult = byte(songPointer + poffset + 0x230F4)

//-Edit Mode
editModePointer1 = tbyte(0xcc5fb8)
editModePointer2 = tbyte(0xcc5fbc)

titleFlag = byte(0xcc5fd0)

//#endregion

//#region Functions

function noItems() => helpItem == 0xffffffff
function onTitle() => titleFlag == 1
function wasOnTitle() => prev(titleFlag) == 1

function verifySongName(song) {
	nameDLC1 = dword(0xd0b9ac)
	nameDLC2 = dword(0xd0b9b0)
	nameDLC3 = dword(0xd0b9b4)
	
	return nameDLC1 == _dictDLCNames[song][0] &&
				nameDLC2 == _dictDLCNames[song][1] &&
				nameDLC3 == _dictDLCNames[song][2]
}

function verifySong(song, diff) =>  songTotalNotes == _dictDLCNotes[song][diff] && 
			verifySongName(song)

function songClear(address, song, diff) => word(address 
								+ mscoreSongOffset * song
								+ mscoreDifficultyOffset * diff)
								
function songMax(address, song, diff) => dword(address 
								+ mscoreSongOffset * song
								+ mscoreDifficultyOffset * diff)

function clearedGreatOrBetter(song, diff){
	return songClear(_fsClearedGreat, song, diff) 
			+ songClear(_fsClearedExcellent, song, diff) 
			+ songClear(_fsClearedPerfect, song, diff) > 0
}

function clearedExcellentOrBetter(song, diff){
	return songClear(_fsClearedExcellent, song, diff) 
			+ songClear(_fsClearedPerfect, song, diff) > 0
}

function pclearedExcellentOrBetter(song, diff){
	return prev(songClear(_fsClearedExcellent, song, diff)) 
			+ prev(songClear(_fsClearedPerfect, song, diff))
}

function clearedPerfect(song, diff){
	return songClear(_fsClearedPerfect, song, diff) > 0
}

function clearedSong(song, diff){
	return songClear(_fsClearedStandard, song, diff) 
			+ songClear(_fsClearedGreat, song, diff) 
			+ songClear(_fsClearedExcellent, song, diff) 
			+ songClear(_fsClearedPerfect, song, diff) > 0
}


function clearedSongWChar(songFail, song, diff){
	return songClear(songFail + _serStandard*2, song, diff) 
			+ songClear(songFail + _serGreat*2, song, diff) 
			+ songClear(songFail + _serExcellent*2, song, diff) 
			+ songClear(songFail + _serPerfect*2, song, diff)
}

function pclearedSongWChar(songFail, song, diff){
	return prev(songClear(songFail + _serStandard*2, song, diff)) 
			+ prev(songClear(songFail + _serGreat*2, song, diff))
			+ prev(songClear(songFail + _serExcellent*2, song, diff)) 
			+ prev(songClear(songFail + _serPerfect*2, song, diff))
}


function firstTimeClearedGreatOrPerfect(song, diff){
	return songPlayDifficulty == diff &&
			prev(songClear(_fsClearedGreat, song, diff)) +
			prev(songClear(_fsClearedExcellent, song, diff)) +
			prev(songClear(_fsClearedPerfect, song, diff)) == 0
}

function firstTimeClearedPerfect(song, diff){
	return songPlayDifficulty == diff &&
			prev(songClear(_fsClearedPerfect, song, diff)) == 0
}

function timesCleared(song, diff){
	return songClear(_fsClearedStandard, song, diff)
		+ songClear(_fsClearedGreat, song, diff)
		+ songClear(_fsClearedExcellent, song, diff)
		+ songClear(_fsClearedPerfect, song, diff)
}

function gotModule(moduleIndex){
	module = _dictModuleAddress[moduleIndex]
	
	return prev(bit(module[0], module[1])) == 0
			&& bit(module[0], module[1]) == 1
}
function hasModule(moduleIndex){
	module = _dictModuleAddress[moduleIndex]
	
	return bit(module[0], module[1]) == 1
}
function hadModule(moduleIndex){
	module = _dictModuleAddress[moduleIndex]
	
	return prev(bit(module[0], module[1]))
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

function flagCounterV2(flagArray) {
	result = 0
	
	for flagIndex in flagArray{
		flag = _dictFlags[flagIndex]
		startAddress = flag[0]
		endAddress = flag[1]
		startBit = flag[2]
		endBit = flag[3]	
		
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
	}
	
	return result
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

function unlockedBitflagsV2(flagArray){
	result = 0
	totalFlags = 0
	
	for flagIndex in flagArray{
		flag = _dictFlags[flagIndex]
		startAddress = flag[0]
		endAddress = flag[1]
		startBit = flag[2]
		endBit = flag[3]	
		
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

function prevUnlockedBitflagsV2(flagArray){
	result = 0
	totalFlags = 0
	
	for flagIndex in flagArray{
		flag = _dictFlags[flagIndex]
		startAddress = flag[0]
		endAddress = flag[1]
		startBit = flag[2]
		endBit = flag[3]
		
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
	}
	
	return result == totalFlags - 1
}






function clearedHardOrExtreme(char, additionalConditions){    
	conditionsArray = []
	altConditions = always_false()
	songFailAddress = _dictSongFail[char]
	
	for song in _dictSongs {
		if (song < _sIevanPolkka){
			timesClearedHardAndExtreme = clearedSongWChar(songFailAddress, song, _dHard) + clearedSongWChar(songFailAddress, song, _dExtreme)
			prevTimesClearedHardAndExtreme = pclearedSongWChar(songFailAddress, song, _dHard) + pclearedSongWChar(songFailAddress, song, _dExtreme)
			
			array_push(conditionsArray, once(timesClearedHardAndExtreme > 0))
			altConditions = altConditions || prevTimesClearedHardAndExtreme == 0
		}
	}
	array_push(conditionsArray, always_false())
	altConditions = altConditions || additionalConditions
	//-return measured(tally(length(conditionsArray) - 1, conditionsArray)) && (always_false() || (never(tally(length(altConditionsArray) - 1, altConditionsArray))))
	
    return measured(tally(length(conditionsArray) - 1, conditionsArray)) && altConditions
}

function clearedXExcellent(number, diff, additionalConditions){    
	conditionsArray = []
	altConditions = always_false()
	songFailAddress = _fsResultFail
	
	for song in _dictSongs {
		if (song < _sIevanPolkka){
			timesClearedExcellent = clearedExcellentOrBetter(song, diff)
			prevTimesClearedExcellent = pclearedExcellentOrBetter(song, diff)
			
			array_push(conditionsArray, once(timesClearedExcellent > 0))
			altConditions = altConditions || prevTimesClearedExcellent == 0
		}
	}
	array_push(conditionsArray, always_false())
	altConditions = altConditions || additionalConditions
	
    return measured(tally(number, conditionsArray)) && altConditions
}

function scoreShown() => songEndedFlag == 1 
						&& prev(songResultShownFlag) == 0xd
						&& songResultShownFlag > 0xd

function inEditMode() => editModePointer1 != 0 && editModePointer2 != 0
function notInEditMode() => editModePointer1 == 0 && editModePointer2 == 0
//#endregion

//#region Achievement logic
function greatSongAchievement(id, song, title, points){

	description = format("Get Great or better on [{0}] on all 4 difficulties", _dictSongs[song])
	
	trigger = songPointer > 0
			&& notInEditMode()
			&& songPlayID == song
			&& prev(songEndedFlag) == 0
			&& songEndedFlag == 1
			&& clearedGreatOrBetter(song, _dEasy)
			&& clearedGreatOrBetter(song, _dNormal)
			&& clearedGreatOrBetter(song, _dHard)
			&& clearedGreatOrBetter(song, _dExtreme)
			&& (always_false() 
				|| firstTimeClearedGreatOrPerfect(song, _dEasy)
				|| firstTimeClearedGreatOrPerfect(song, _dNormal)
				|| firstTimeClearedGreatOrPerfect(song, _dHard)
				|| firstTimeClearedGreatOrPerfect(song, _dExtreme)
				)

	
	achievement(title = title, points = points, description = description, trigger = trigger, id = id)	
}

function perfectTutorialAchievement(id, title, points){

	description = "Get Perfect on [Tutorial - Ievan Polkka] on all 4 difficulties"
	song = _sIevanPolkka
	
	trigger = songPointer > 0
			&& notInEditMode()
			&& songPlayID == song
			&& prev(songEndedFlag) == 0
			&& songEndedFlag == 1
			&& clearedPerfect(song, _dEasy)
			&& clearedPerfect(song, _dNormal)
			&& clearedPerfect(song, _dHard)
			&& clearedPerfect(song, _dExtreme)
			&& (always_false() 
				|| firstTimeClearedPerfect(song, _dEasy)
				|| firstTimeClearedPerfect(song, _dNormal)
				|| firstTimeClearedPerfect(song, _dHard)
				|| firstTimeClearedPerfect(song, _dExtreme)
				)

	
	achievement(title = title, points = points, description = description, trigger = trigger, id = id)	
}

function greatPerfectAchievement(id, ser, song, title, points){
		
	if (ser == _serGreat){
		description = format("Get Great or better on [{0}], Extreme difficulty", _dictSongs[song])
	}
	if (ser == _serPerfect){
		description = format("Get Perfect on [{0}], Extreme difficulty", _dictSongs[song])
	}
	
	trigger = songPointer > 0
			&& notInEditMode()
			&& songPlayID == song
			&& songPlayDifficulty == _dExtreme
			&& songEndResult >= ser
			&& scoreShown()

	achievement(title = title, points = points, description = description, trigger = trigger, id = id)
}

function moduleAchievement(id, module, title, description, points){
		
	trigger = songPointer > 0
			&& notInEditMode()
			&& songEndedFlag == 1
			&& gotModule(module)

	achievement(title = title, points = points, description = description, trigger = trigger, id = id)	
}

function perfectAchievement(id, title, points){
		
	description = "Get a Perfect combo on any song, Normal or higher, without using items"
	trigger = songPointer > 0
			&& notInEditMode()
			&& songPlayID != _sIevanPolkka
			&& songPlayDifficulty >= _dNormal
			&& songEndResult == _serPerfect
			&& scoreShown()
			&& noItems()

	achievement(title = title, points = points, description = description, trigger = trigger, id = id)
}

function endSongAchievement(id, song, diff, result, title, points){
		
	if (result == _serPerfect){
		description = format("Get Perfect on [{0}] ({1})", _dictSongs[song], _dictDifficulty[diff])
	}
	else {
		description = format("Get {0} or better on [{1}] ({2})", _dictSongEndResult[result], _dictSongs[song], _dictDifficulty[diff])
	}
	
	trigger = songPointer > 0
			&& notInEditMode()
			&& songPlayDifficulty == diff
			&& songEndResult >= result
			&& scoreShown()
			
	if (song > _sIevanPolkka){ //-Additional check for DLC songs
		trigger = trigger && verifySong(song, diff) && songPlayID > _sIevanPolkka
	}
	else{
		trigger = trigger && songPlayID == song
	}

	achievement(title = title, points = points, description = description, trigger = trigger, id = id)
}

function allFlagsAchievement(id, flagIndex, title, description, points){
	
	flags = _dictFlags[flagIndex]
	
	trigger = unlockedBitflags(flags) 
			&& prevUnlockedBitflags(flags)
			
	if (flagIndex != _fVisualLibrary){
		//-Maybe check if current screen is the shop?
		trigger = trigger && unless(wasOnTitle())
	}
	
	achievement(title = title, points = points, description = description, trigger = trigger, id = id)
}

function allFlagsArrayAchievement(id, flagIndexes, title, description, points){		
	
	trigger = unless(wasOnTitle()) 
			&& unlockedBitflagsV2(flagIndexes) 
			&& prevUnlockedBitflagsV2(flagIndexes)	

	achievement(title = title, points = points, description = description, trigger = trigger, id = id)
}

function swimsuitAchievement(id, char, module, title, points){		
	description = format("Clear every song on Hard or Extreme with {0} and own the [{1}] module", _dictCharNames[char], _dictModuleOriginalNames[module])
	
	trigger = never(wasOnTitle())
			&& hasModule(module)
			&& clearedHardOrExtreme(char, hadModule(module) == 0)			

	achievement(title = title, points = points, description = description, trigger = trigger, id = id)
}
function excellentAchievement(id, module, title, points){
	description = format("Clear any Free Play song on Extreme with an Excellent score using {0}", _dictModuleOriginalNames[module])
	
	trigger = songPointer > 0
			&& hasModule(module)
			&& currentModule == module			
			&& songPlayDifficulty == _dExtreme
			&& songEndResult >= _serExcellent
			&& scoreShown()

	achievement(title = title, points = points, description = description, trigger = trigger, id = id)
}

function finishExcellentAchievement(id, number, diff, module, title, points){
	description = format("Finish {0} Free Play songs on {1} difficulty with Excellent and own the {2} module",number, _dictDifficulty[diff],	_dictModuleOriginalNames[module])
	
	trigger = never(wasOnTitle())
			&& hasModule(module)
			&& clearedXExcellent(number, diff, hadModule(module) == 0)

	achievement(title = title, points = points, description = description, trigger = trigger, id = id)
}

function finishWithAchievement(id, module, song, diff, rank, combo, score, title, points) {
	description = format("Using [{0}] clear {1} on {2}", _dictModuleOriginalNames[module],
		_dictSongs[song], _dictDifficulty[diff])
	
	trigger = songPointer > 0
			&& hasModule(module)
			&& currentModule == module
			&& songPlayDifficulty == diff
			&& songEndResult >= rank
			&& scoreShown()

	if rank > _serStandard {
		description = description + format(" with {0}", _dictSongEndResult[rank])
			
		if (combo > 0){
			description = description + format(" and a combo of {0}", combo)
		
			trigger = trigger && songResultCombo >= combo
		}		
	}
	else{
		if combo > 0 {
			description = description + format(" with a combo of {0}", combo)
			
			trigger = trigger && songResultCombo >= combo
		}
		
		if score > 0 {
			description = description + format(" with a score of {0}", score)
			
			trigger = trigger && songResultScore >= score
		}
	}
	
	if (song > _sIevanPolkka){ //-Additional check for DLC songs
		trigger = trigger && verifySong(song, diff) && songPlayID > _sIevanPolkka
	}
	else{
		trigger = trigger && songPlayID == song
	}
	
	achievement(title = title, points = points, description = description, trigger = trigger, id = id)
}

function finishWithAchievementNote(id, module, song, diff, notBad, cool, title, points) {
	description = format("Using [{0}] clear {1} on {2}", _dictModuleOriginalNames[module],
		_dictSongs[song], _dictDifficulty[diff])
	
	trigger = songPointer > 0
			&& hasModule(module)
			&& currentModule == module
			&& songPlayDifficulty == diff
			&& songEndResult >= _serStandard
			&& scoreShown()
			
	if notBad > 0 {
		description = description + " without Sad or Worst notes"
			
		trigger = trigger && songResultSad == 0 && songResultWorst == 0
	}
	
	if cool > 0 {
		description = description + format(" with {0} Cool notes", cool)
			
		trigger = trigger && songResultCool >= cool
	}
	
	if (song > _sIevanPolkka){ //-Additional check for DLC songs
		trigger = trigger && verifySong(song, diff) && songPlayID > _sIevanPolkka
	}
	else{
		trigger = trigger && songPlayID == song
	}
			
	achievement(title = title, points = points, description = description, trigger = trigger, id = id)
}

function finishWithAchievementItem(id, module, song, diff, item, title, points) {
	description = format("Using [{0}] clear {1} on {2} with the challenge item {3}", 
		_dictModuleOriginalNames[module], _dictSongs[song], _dictDifficulty[diff], _dictItems[item])
	
	trigger = songPointer > 0
			&& hasModule(module)
			&& currentModule == module
			&& songPlayDifficulty == diff
			&& helpItem == item
			&& songEndResult >= _serStandard
			&& scoreShown()
			
	if (song > _sIevanPolkka){ //-Additional check for DLC songs
		trigger = trigger && verifySong(song, diff) && songPlayID > _sIevanPolkka
	}
	else{
		trigger = trigger && songPlayID == song
	}
			
	achievement(title = title, points = points, description = description, trigger = trigger, id = id)
}

function perfectChanceTimeAchievement(id, module, song, diff, title, points) {
	description = format("Using [{0}] get a perfect combo during Chance Time on {1} on {2}", _dictModuleOriginalNames[module],
		_dictSongs[song], _dictDifficulty[diff])
	
	trigger = never(songPointer == 0 || songResultScore == 0)
			&& hasModule(module)
			&& currentModule == module			
			&& songPlayDifficulty == diff
			&& once(prev(chanceTimeFlag) == 0 && chanceTimeFlag == 1)
			&& never(songCurrentCombo < prev(songCurrentCombo))			
			&& trigger_when(prev(chanceTimeFlag) == 1 && chanceTimeFlag == 0)
			
	if (song > _sIevanPolkka){ //-Additional check for DLC songs
		trigger = trigger && verifySong(song, diff) && songPlayID > _sIevanPolkka
	}
	else{
		trigger = trigger && songPlayID == song
	}
						
	achievement(title = title, points = points, description = description, trigger = trigger, id = id)
}

function perfectChanceTime2Achievement(id, module, song, diff, title, points) {
	description = format("Using [{0}] get a perfect combo during Chance Time on {1} on {2}", _dictModuleOriginalNames[module],
		_dictSongs[song], _dictDifficulty[diff])
	
	trigger = never(songPointer == 0)
			&& hasModule(module)
			&& currentModule == module			
			&& songPlayDifficulty == diff
			&& once(prev(chanceTimeFlag) == 0 && chanceTimeFlag == 1)
			&& never(songResultSafe > 0 || songResultSad > 0 || songResultWorst > 0)			
			&& trigger_when(prev(chanceTimeFlag) == 1 && chanceTimeFlag == 0)
			
	if (song > _sIevanPolkka){ //-Additional check for DLC songs
		trigger = trigger && verifySong(song, diff) && songPlayID > _sIevanPolkka
	}
	else{
		trigger = trigger && songPlayID == song
	}
						
	achievement(title = title, points = points, description = description, trigger = trigger, id = id)
}

//#endregion

//#region Leaderboard Logic
function songLeaderboard(song, diff){

	title = format("{0} ({1})", _dictSongs[song], _dictDifficulty[diff])
    description = format("Finish {0} on {1} with the highest score (No Items)", _dictSongs[song], _dictDifficulty[diff])
		
    start = songPointer > 0
			&& notInEditMode()
			&& prev(songEndedFlag) == 0
			&& songEndedFlag == 1
			&& songPlayDifficulty == diff
			&& songEndResult >= _serStandard
			&& noItems()
			
	if (song > _sIevanPolkka){ //-Additional check for DLC songs
		start = start && verifySong(song, diff) && songPlayID > _sIevanPolkka
	}
	else{
		start = start && songPlayID == song
	}
			
    cancel = songPointer == 0 || inEditMode() || songLife == 0
	
    submit = scoreShown()
			
    value = songResultScore
	
    leaderboard(title, description, start, cancel, submit, value, "SCORE")    
}

//#endregion

//#region Achievements //-111000001
//-Finish all songs with Great or better on all 4 difficulties
greatPerfectAchievement(174481, _serGreat, _sNekomimi, _dictSongs[_sNekomimi], _dictGreatSongs[_sNekomimi])
greatPerfectAchievement(174482, _serGreat, _sSolitude, _dictSongs[_sSolitude], _dictGreatSongs[_sSolitude])
greatPerfectAchievement(174483, _serGreat, _sPalette, _dictSongs[_sPalette], _dictGreatSongs[_sPalette])
greatPerfectAchievement(174484, _serGreat, _sSpica, _dictSongs[_sSpica], _dictGreatSongs[_sSpica])
greatPerfectAchievement(174485, _serGreat, _sStarduster, _dictSongs[_sStarduster], _dictGreatSongs[_sStarduster])
greatPerfectAchievement(174486, _serGreat, _sEndInfinity, _dictSongs[_sEndInfinity], _dictGreatSongs[_sEndInfinity])
greatPerfectAchievement(174487, _serGreat, _sStardust, _dictSongs[_sStardust], _dictGreatSongs[_sStardust])
greatPerfectAchievement(174488, _serGreat, _sTimeLimit, _dictSongs[_sTimeLimit], _dictGreatSongs[_sTimeLimit])
greatPerfectAchievement(174489, _serGreat, _sSongNoForm, _dictSongs[_sSongNoForm], _dictGreatSongs[_sSongNoForm])
greatPerfectAchievement(174490, _serGreat, _sMeltdown, _dictSongs[_sMeltdown], _dictGreatSongs[_sMeltdown])
greatPerfectAchievement(174491, _serGreat, _sElectricAngel, _dictSongs[_sElectricAngel], _dictGreatSongs[_sElectricAngel])
greatPerfectAchievement(174492, _serGreat, _sYellow, _dictSongs[_sYellow], _dictGreatSongs[_sYellow])
greatPerfectAchievement(174493, _serGreat, _sThousandYearSolo, _dictSongs[_sThousandYearSolo], _dictGreatSongs[_sThousandYearSolo])
greatPerfectAchievement(174494, _serGreat, _sButterfly39, _dictSongs[_sButterfly39], _dictGreatSongs[_sButterfly39])
greatPerfectAchievement(174495, _serGreat, _sYourDiva, _dictSongs[_sYourDiva], _dictGreatSongs[_sYourDiva])
greatPerfectAchievement(174496, _serGreat, _sPuzzle, _dictSongs[_sPuzzle], _dictGreatSongs[_sPuzzle])
greatPerfectAchievement(174497, _serGreat, _sLoverSuicide, _dictSongs[_sLoverSuicide], _dictGreatSongs[_sLoverSuicide])
greatPerfectAchievement(174498, _serGreat, _sRinSignal, _dictSongs[_sRinSignal], _dictGreatSongs[_sRinSignal])
greatPerfectAchievement(174499, _serGreat, _sJustFriends, _dictSongs[_sJustFriends], _dictGreatSongs[_sJustFriends])
greatPerfectAchievement(174500, _serGreat, _sMelody, _dictSongs[_sMelody], _dictGreatSongs[_sMelody])
greatPerfectAchievement(174501, _serGreat, _sWintryWinds, _dictSongs[_sWintryWinds], _dictGreatSongs[_sWintryWinds])
greatPerfectAchievement(174502, _serGreat, _sColorfulMelody, _dictSongs[_sColorfulMelody], _dictGreatSongs[_sColorfulMelody])
greatPerfectAchievement(174503, _serGreat, _sLukaNightFever, _dictSongs[_sLukaNightFever], _dictGreatSongs[_sLukaNightFever])
greatPerfectAchievement(174504, _serGreat, _sStarGazer, _dictSongs[_sStarGazer], _dictGreatSongs[_sStarGazer])
greatPerfectAchievement(174505, _serGreat, _sRequiem, _dictSongs[_sRequiem], _dictGreatSongs[_sRequiem])
greatPerfectAchievement(174506, _serGreat, _sIroha, _dictSongs[_sIroha], _dictGreatSongs[_sIroha])
greatPerfectAchievement(174507, _serGreat, _sHelloPlanet, _dictSongs[_sHelloPlanet], _dictGreatSongs[_sHelloPlanet])
greatPerfectAchievement(174508, _serGreat, _sDemons, _dictSongs[_sDemons], _dictGreatSongs[_sDemons])
greatPerfectAchievement(174509, _serGreat, _sDissapearance, _dictSongs[_sDissapearance], _dictGreatSongs[_sDissapearance])
greatPerfectAchievement(174510, _serGreat, _sParadi, _dictSongs[_sParadi], _dictGreatSongs[_sParadi])
greatPerfectAchievement(174511, _serGreat, _sTwoSideLovers, _dictSongs[_sTwoSideLovers], _dictGreatSongs[_sTwoSideLovers])
greatPerfectAchievement(174512, _serGreat, _sLookWayBaby, _dictSongs[_sLookWayBaby], _dictGreatSongs[_sLookWayBaby])
greatPerfectAchievement(174513, _serGreat, _sIntenseVoice, _dictSongs[_sIntenseVoice], _dictGreatSongs[_sIntenseVoice])
greatPerfectAchievement(174514, _serGreat, _sColorfulSexy, _dictSongs[_sColorfulSexy], _dictGreatSongs[_sColorfulSexy])
greatPerfectAchievement(174515, _serGreat, _sRollingGirl, _dictSongs[_sRollingGirl], _dictGreatSongs[_sRollingGirl])
greatPerfectAchievement(174516, _serGreat, _sGraffiti, _dictSongs[_sGraffiti], _dictGreatSongs[_sGraffiti])
endSongAchievement(174517, _sGoMyWay, _dExtreme, _serGreat, _dictSongs[_sGoMyWay], _dictGreatSongs[_sGoMyWay])
endSongAchievement(174518, _sRelations, _dExtreme, _serGreat, _dictSongs[_sRelations], _dictGreatSongs[_sRelations])

finishWithAchievementItem(174519, _mAppendMiku, _sYellow, _dHard, _hiCoolFine, "A Bit More Of Hatsune Miku", 5) //-Done
finishWithAchievement(174520, _mHarukaMiku, _sGoMyWay, _dHard, _serGreat, 150, 0, "[DLC] Miku's Way!!", 5) //-Done
finishWithAchievement(174521, _mXmasMiku, _sRequiem, _dExtreme, _serStandard, 0, 0, "Merry Merry Xmas", 5) //-Done
finishExcellentAchievement(174522, 10, _dNormal, _mSnow2010Miku, "My Favorites", 10) //-Done All  ?
finishExcellentAchievement(174523, 5, _dHard, _mSnow2010Miku, "My Top 5", 10) //-200 Done
finishWithAchievementItem(174524, _mEveWhite, _sStarduster, _dHard, _hiSurvival, "Give The Love", 5) //-Done
finishWithAchievement(174525, _mHelloWorldMiku, _sHelloPlanet, _dExtreme, _serStandard, 0, 0, "Heal The World", 5) //-Done
swimsuitAchievement(174526, _chMiku, _mRacing2010Miku, "Front-runner Miku", 10) //-Done
excellentAchievement(174527, _mRacing2011Miku, "Top Runner Miku", 10) //-Done
finishWithAchievementNote(174528, _mFeiYenMiku, _sMelody, _dHard, 0, 200, "From Vocaloid To Virtuaroid", 5) //-Done
finishWithAchievement(174529, _mRollingMiku, _sRollingGirl, _dExtreme, _serStandard, 0, 0, "Keep Rollin' Rollin' Rollin' Rollin'", 5) //-Done
finishWithAchievement(174530, _mDemonDeadMiku, _sDemons, _dExtreme, _serStandard, 0, 0, "The End of Innocence", 5) //-Done
finishWithAchievement(174531, _mOrbitMiku, _sSpica, _dExtreme, _serStandard, 0, 0, "Shine Bright, SPiCa", 5) //-Done
finishWithAchievement(174532, _mPatchworkMiku, _sPuzzle, _dExtreme, _serStandard, 0, 0, "The Missing Piece", 5) //-Done
finishWithAchievement(174533, _mSonicMiku, _sDissapearance, _dExtreme, _serStandard, 0, 0, "Gotta Sing Fast", 5) //-Done
finishWithAchievement(174534, _mTyrol, _sSongNoForm, _dExtreme, _serStandard, 0, 0, "Formless Treasure", 5) //-Done
finishWithAchievement(174535, _mConflictMiku, _sTwoSideLovers, _dExtreme, _serStandard, 0, 0, "Bipolar Love", 5) //-Done
finishWithAchievement(174536, _mShinyMiku, _sGraffiti, _dExtreme, _serStandard, 0, 0, "Shapes In The Sky", 5) //-Done
finishWithAchievement(174537, _mType2020, _sColorfulMelody, _dHard, _serGreat, 180, 0, "Lady Dragon", 5) //-Done

finishWithAchievementNote(174538, _mXmasRin, _sRequiem, _dEasy, 1, 0, "To Those Who Are Lonely", 5) //-Done
finishWithAchievementItem(174539, _mAmiMamiRin, _sElectricAngel, _dHard, _hiCoolFine, "Electric Idol", 5) //-Done
finishWithAchievement(174540, _mSchoolRin, _sButterfly39, _dHard, _serGreat, 200, 0, "Class Rep.", 5) //-Done
finishWithAchievementNote(174541, _mAppendRin, _sRinSignal, _dNormal, 1, 0, "A Bit More Of Kagamine Rin", 5) //-Done
finishWithAchievementItem(174542, _mNamelessNo1Rin, _sMeltdown, _dHard, _hiSurvival, "Ace Specialist", 5) //-Done
swimsuitAchievement(174543, _chRin, _mRacing2010Rin, "Front-runner Rin", 10) //-Done
finishWithAchievement(174544, _mBlackStarRin, _sSolitude, _dExtreme, _serStandard, 0, 0, "Bright Star On The Darkest Night", 5) //-Done
finishWithAchievement(174545, _mKagerou, _sIroha, _dExtreme, _serStandard, 0, 0, "Ancient Poem Of Devotion", 5) //-Done
perfectChanceTimeAchievement(174546, _mSappanwoodRin, _sEndInfinity, _dHard, "Burning Star Along The Rising Sun", 5) //-Done

finishWithAchievementItem(174547, _mXmasLen, _sRequiem, _dNormal, _hiSurvival, "To Those Who Are Lost", 5) //-Done
finishWithAchievementNote(174548, _mSchoolLen, _sButterfly39, _dHard, 0, 200, "Wealthy Rascal", 5) //-Done
finishWithAchievement(174549, _mAppendLen, _sRinSignal, _dHard, _serStandard, 180, 0, "A Bit More Of Kagamine Len", 5) //-Done
finishWithAchievement(174550, _mBlueMoonLen, _sEndInfinity, _dExtreme, _serStandard, 0, 0, "Shiny Moon On The Darkest Night", 5) //-Done
perfectChanceTimeAchievement(174551, _mIndigoLen, _sSolitude, _dHard, "Crescent Moon Along The Rising Sun", 5) //-Done
finishWithAchievement(174552, _mStrangeDark, _sParadi, _dExtreme, _serStandard, 0, 0, "C6H4Cl2", 5) //-Done
finishWithAchievementNote(174553, _mNamelessNo7Len, _sParadi, _dHard, 0, 333, "Rythm Officer", 5) //-Done

finishWithAchievementNote(174554, _mXmasLuka, _sRequiem, _dHard, 0, 400, "To Those Who Are Gone", 5) //-Done
perfectChanceTimeAchievement(174555, _mWitchLuka, _sPalette, _dHard, "Magical Colors", 5) //-Done
finishWithAchievement(174556, _mChihayaLuka, _sRelations, _dHard, _serGreat, 100, 0, "[DLC] Toxic Relations", 5) //-Done
finishWithAchievementItem(174557, _mFairyLuka, _sColorfulSexy, _dHard, _hiCoolFine, "Multicolored Romance", 5) //-Done
finishWithAchievement(174558, _mSilenceLuka, _sPalette, _dExtreme, _serStandard, 0, 0, "Black & White Feelings", 5) //-Done
swimsuitAchievement(174559, _chLuka, _mRacing2010Luka, "Front-runner Luka", 10) //-Done
finishWithAchievement(174560, _mCyberLuka, _sLukaNightFever, _dExtreme, _serStandard, 0, 0, "Luka's EuroVision", 5) //-Done
finishWithAchievementNote(174561, _mNagisaLuka, _sStardust, _dHard, 0, 280, "Enigmatic Deuman Hunter", 5) //-Done
finishWithAchievement(174562, _mNagisaASLuka, _sStardust, _dExtreme, _serStandard, 0, 0, "Infinity Nagisa", 5) //-Done

perfectChanceTimeAchievement(174563, _mXmasKaito, _sRequiem, _dHard, "To Those Who Stil Dream", 5) //-Done
finishWithAchievementItem(174564, _mWhiteBlazerKaito, _sThousandYearSolo, _dHard, _hiSurvival, "A Millenium Without You", 5) //-Done
finishWithAchievement(174565, _mDrizzleKaito, _sWintryWinds, _dExtreme, _serStandard, 0, 0, "The Cold Dry Wind", 5) //-Done
finishWithAchievement(174566, _mVioletKaito, _sThousandYearSolo, _dExtreme, _serStandard, 0, 0, "The Bard's Song", 5) //-Done
perfectChanceTime2Achievement(174567, _mVFNinjaKaito, _sDissapearance, _dExtreme, "Ninja Reflexes", 5) //-Done
perfectChanceTimeAchievement(174568, _mVFNinjaASKaito, _sIntenseVoice, _dExtreme, "Japanese Youtuber Reflexes", 10) //-Done

finishWithAchievement(174569, _mXmasMeiko, _sRequiem, _dHard, _serGreat, 250, 0, "To Those Who Still Love", 5) //-Done
perfectChanceTimeAchievement(174570, _mTaishoMeiko, _sLoverSuicide, _dHard, "Unforgotten Taisho Lady", 5) //-Done
finishWithAchievement(174571, _mSexyPuddingMeiko, _sColorfulSexy, _dExtreme, _serStandard, 0, 0, "A Colorful Passion", 5) //-Done
finishWithAchievementNote(174572, _mBlackTailThiefMeiko, _sNekomimi, _dHard, 0, 280, "Shining Cat Heart", 5) //-Done
finishWithAchievement(174573, _mAutumnMeiko, _sWintryWinds, _dHard, _serGreat, 0, 200, "The Lonely Scarlet Leaf", 5) //-Done
swimsuitAchievement(174574, _chMeiko, _mRacing2010Meiko, "Front-runner Meiko", 10) //-Done
finishWithAchievement(174575, _mLoreleiMeiko, _sLoverSuicide, _dExtreme, _serStandard, 0, 0, "Her Swan Song", 5) //-Done

finishWithAchievement(174576, _mClubNeru, _sYourDiva, _dExtreme, _serStandard, 0, 0, "Your REAL Diva", 5) //-Done
finishWithAchievement(174577, _mGothicPurpleHaku, _sStarGazer, _dExtreme, _serStandard, 0, 0, "Brightest Star In Deep Space", 5) //-Done
finishWithAchievementItem(174578, _mNostalgySakine, _sLookWayBaby, _dHard, _hiSurvival, "Look Up Here, Baby!", 5) //-Done
swimsuitAchievement(174579, _chSakine, _mBlackDressNSSakine, "Favorite Feline", 10) //-Done

//-Unlock all songs (10)
allFlagsAchievement(174580, _fSongs, "My Special Album", "Unlock all songs", 10)

//-Get every Diva Room and Theme (10)
allFlagsArrayAchievement(174581, [_fRoomTheme, _fDivaRooms], "Room For A DIVA", "Get every Diva Room and Theme", 10)

//-Get every Room Accessory (25)
allFlagsAchievement(174582, _fShelfAccessory, "Limited Special Editions", "Get every Shelf Accessory", 25)

//-Get every Wall Accessory (10)
allFlagsAchievement(174583, _fWallAccessory, "My Favorite Wallpaper", "Get every Wall Accessory", 10)

//-Get every Floor Accessory (10)
allFlagsAchievement(174584, _fFloorAccessory, "Watch Your Step", "Get every Floor Accessory", 10)

//-Get every picture and video from the Visual Library (10)
allFlagsAchievement(174585, _fVisualLibrary, "Vocaloid Art & Service", "Get every picture and video from the Visual Library", 10)

//-Get Perfect on any song Normal or Hard (10)
perfectAchievement(174586, "Way Of The DIVA", 10)

//-Get every module (10)
allFlagsAchievement(174587, _fModules, "DIVA's Stylist", "Get every Module", 25)

//-Watch every Room Event (25)
allFlagsAchievement(174588, _fRoomEvents, "A Day In a DIVA's Life", "Watch every Room Event", 25)
//#endregion

//#region Leaderboards
for song in _dictSongs {
	if (song != _sIevanPolkka){	
		for diff in _dictDifficulty {
			songLeaderboard(song, diff)
		}
	}
}

//#endregion

//#region Rich Presence
rich_presence_conditional_display(onTitle(), "In the Title Screen")

rich_presence_conditional_display(songPointer != 0 && songPlayID > _sIevanPolkka && verifySongName(_sGoMyWay),
							"[{0}] Playing {1} ({2})",
							rich_presence_lookup("module", currentModule, _dictModuleNames, "DLC Vocaloid"),
							rich_presence_lookup("songDLC", _sGoMyWay, _dictSongs, "???"),
							rich_presence_lookup("difficulty", songPlayDifficulty, _dictDifficulty))
							
rich_presence_conditional_display(songPointer != 0 && songPlayID > _sIevanPolkka && verifySongName(_sRelations),
							"[{0}] Playing {1} ({2})",
							rich_presence_lookup("module", currentModule, _dictModuleNames, "DLC Vocaloid"),
							rich_presence_lookup("songDLC", _sRelations, _dictSongs, "???"),
							rich_presence_lookup("difficulty", songPlayDifficulty, _dictDifficulty))

rich_presence_conditional_display(songPointer != 0 && songPlayDifficulty == _dEasy, 
							"[{0}] Playing {1} ({2} {3}) [High Score: {4}] [MAX Combo: {5}] [Cleared: {16}{6} {7}{8}{9}{10}{11}{12}{13}{14}{15}]",
							rich_presence_lookup("module", currentModule, _dictModuleNames, "DLC Vocaloid"),
							rich_presence_lookup("song", songPlayID, _dictSongs, "???"),
							rich_presence_lookup("difficulty", songPlayDifficulty, _dictDifficulty),
							rich_presence_lookup("starsE", songPlayID, _dictSongStarsEasy),
							rich_presence_value("val", songMax(_fsMaxScore, songPlayID, _dEasy)),
							rich_presence_value("val", songMax(_fsMaxCombo, songPlayID, _dEasy)),
							rich_presence_value("val", timesCleared(songPlayID, _dEasy)),
							rich_presence_lookup("miku", clearedSongWChar(_fsMikuFail, songPlayID, _dEasy), _dictEmpty, "💚"),
							rich_presence_lookup("rin", clearedSongWChar(_fsRinFail, songPlayID, _dEasy), _dictEmpty, "🍊"),
							rich_presence_lookup("len", clearedSongWChar(_fsLenFail, songPlayID, _dEasy), _dictEmpty, "🍌"),
							rich_presence_lookup("luka", clearedSongWChar(_fsLukaFail, songPlayID, _dEasy), _dictEmpty, "🐙"),
							rich_presence_lookup("kaito", clearedSongWChar(_fsKaitoFail, songPlayID, _dEasy), _dictEmpty, "🍦"),
							rich_presence_lookup("meiko", clearedSongWChar(_fsMeikoFail, songPlayID, _dEasy), _dictEmpty, "👗"),
							rich_presence_lookup("neru", clearedSongWChar(_fsNeruFail, songPlayID, _dEasy), _dictEmpty, "📱"),
							rich_presence_lookup("haku", clearedSongWChar(_fsHakuFail, songPlayID, _dEasy), _dictEmpty, "🍶"),
							rich_presence_lookup("sakine", clearedSongWChar(_fsSakineFail, songPlayID, _dEasy), _dictEmpty, "👧"),
							rich_presence_lookup("perfect", songClear(_fsClearedPerfect, songPlayID, _dEasy), _dictEmpty, "👑")
							)
							
rich_presence_conditional_display(songPointer != 0 && songPlayDifficulty == _dNormal, 
							"[{0}] Playing {1} ({2} {3}) [High Score: {4}] [MAX Combo: {5}] [Cleared: {16}{6} {7}{8}{9}{10}{11}{12}{13}{14}{15}]",
							rich_presence_lookup("module", currentModule, _dictModuleNames, "DLC Vocaloid"),
							rich_presence_lookup("song", songPlayID, _dictSongs, "???"),
							rich_presence_lookup("difficulty", songPlayDifficulty, _dictDifficulty),
							rich_presence_lookup("starsN", songPlayID, _dictSongStarsNormal),
							rich_presence_value("val", songMax(_fsMaxScore, songPlayID, _dNormal)),
							rich_presence_value("val", songMax(_fsMaxCombo, songPlayID, _dNormal)),
							rich_presence_value("val", timesCleared(songPlayID, _dNormal)),
							rich_presence_lookup("miku", clearedSongWChar(_fsMikuFail, songPlayID, _dNormal), _dictEmpty, "💚"),
							rich_presence_lookup("rin", clearedSongWChar(_fsRinFail, songPlayID, _dNormal), _dictEmpty, "🍊"),
							rich_presence_lookup("len", clearedSongWChar(_fsLenFail, songPlayID, _dNormal), _dictEmpty, "🍌"),
							rich_presence_lookup("luka", clearedSongWChar(_fsLukaFail, songPlayID, _dNormal), _dictEmpty, "🐙"),
							rich_presence_lookup("kaito", clearedSongWChar(_fsKaitoFail, songPlayID, _dNormal), _dictEmpty, "🍦"),
							rich_presence_lookup("meiko", clearedSongWChar(_fsMeikoFail, songPlayID, _dNormal), _dictEmpty, "👗"),
							rich_presence_lookup("neru", clearedSongWChar(_fsNeruFail, songPlayID, _dNormal), _dictEmpty, "📱"),
							rich_presence_lookup("haku", clearedSongWChar(_fsHakuFail, songPlayID, _dNormal), _dictEmpty, "🍶"),
							rich_presence_lookup("sakine", clearedSongWChar(_fsSakineFail, songPlayID, _dNormal), _dictEmpty, "👧"),
							rich_presence_lookup("perfect", songClear(_fsClearedPerfect, songPlayID, _dNormal), _dictEmpty, "👑")
							)
							
rich_presence_conditional_display(songPointer != 0 && songPlayDifficulty == _dHard, 
							"[{0}] Playing {1} ({2} {3}) [High Score: {4}] [MAX Combo: {5}] [Cleared: {16}{6} {7}{8}{9}{10}{11}{12}{13}{14}{15}]",
							rich_presence_lookup("module", currentModule, _dictModuleNames, "DLC Vocaloid"),
							rich_presence_lookup("song", songPlayID, _dictSongs, "???"),
							rich_presence_lookup("difficulty", songPlayDifficulty, _dictDifficulty),
							rich_presence_lookup("starsH", songPlayID, _dictSongStarsHard),
							rich_presence_value("val", songMax(_fsMaxScore, songPlayID, _dHard)),
							rich_presence_value("val", songMax(_fsMaxCombo, songPlayID, _dHard)),
							rich_presence_value("val", timesCleared(songPlayID, _dHard)),
							rich_presence_lookup("miku", clearedSongWChar(_fsMikuFail, songPlayID, _dHard), _dictEmpty, "💚"),
							rich_presence_lookup("rin", clearedSongWChar(_fsRinFail, songPlayID, _dHard), _dictEmpty, "🍊"),
							rich_presence_lookup("len", clearedSongWChar(_fsLenFail, songPlayID, _dHard), _dictEmpty, "🍌"),
							rich_presence_lookup("luka", clearedSongWChar(_fsLukaFail, songPlayID, _dHard), _dictEmpty, "🐙"),
							rich_presence_lookup("kaito", clearedSongWChar(_fsKaitoFail, songPlayID, _dHard), _dictEmpty, "🍦"),
							rich_presence_lookup("meiko", clearedSongWChar(_fsMeikoFail, songPlayID, _dHard), _dictEmpty, "👗"),
							rich_presence_lookup("neru", clearedSongWChar(_fsNeruFail, songPlayID, _dHard), _dictEmpty, "📱"),
							rich_presence_lookup("haku", clearedSongWChar(_fsHakuFail, songPlayID, _dHard), _dictEmpty, "🍶"),
							rich_presence_lookup("sakine", clearedSongWChar(_fsSakineFail, songPlayID, _dHard), _dictEmpty, "👧"),
							rich_presence_lookup("perfect", songClear(_fsClearedPerfect, songPlayID, _dHard), _dictEmpty, "👑")
							)
							
rich_presence_conditional_display(songPointer != 0 && songPlayDifficulty == _dExtreme, 
							"[{0}] Playing {1} ({2} {3}) [High Score: {4}] [MAX Combo: {5}] [Cleared: {16}{6} {7}{8}{9}{10}{11}{12}{13}{14}{15}]",
							rich_presence_lookup("module", currentModule, _dictModuleNames, "DLC Vocaloid"),
							rich_presence_lookup("song", songPlayID, _dictSongs, "???"),
							rich_presence_lookup("difficulty", songPlayDifficulty, _dictDifficulty),
							rich_presence_lookup("starsX", songPlayID, _dictSongStarsExtreme),
							rich_presence_value("val", songMax(_fsMaxScore, songPlayID, _dExtreme)),
							rich_presence_value("val", songMax(_fsMaxCombo, songPlayID, _dExtreme)),
							rich_presence_value("val", timesCleared(songPlayID, _dExtreme)),
							rich_presence_lookup("miku", clearedSongWChar(_fsMikuFail, songPlayID, _dExtreme), _dictEmpty, "💚"),
							rich_presence_lookup("rin", clearedSongWChar(_fsRinFail, songPlayID, _dExtreme), _dictEmpty, "🍊"),
							rich_presence_lookup("len", clearedSongWChar(_fsLenFail, songPlayID, _dExtreme), _dictEmpty, "🍌"),
							rich_presence_lookup("luka", clearedSongWChar(_fsLukaFail, songPlayID, _dExtreme), _dictEmpty, "🐙"),
							rich_presence_lookup("kaito", clearedSongWChar(_fsKaitoFail, songPlayID, _dExtreme), _dictEmpty, "🍦"),
							rich_presence_lookup("meiko", clearedSongWChar(_fsMeikoFail, songPlayID, _dExtreme), _dictEmpty, "👗"),
							rich_presence_lookup("neru", clearedSongWChar(_fsNeruFail, songPlayID, _dExtreme), _dictEmpty, "📱"),
							rich_presence_lookup("haku", clearedSongWChar(_fsHakuFail, songPlayID, _dExtreme), _dictEmpty, "🍶"),
							rich_presence_lookup("sakine", clearedSongWChar(_fsSakineFail, songPlayID, _dExtreme), _dictEmpty, "👧"),
							rich_presence_lookup("perfect", songClear(_fsClearedPerfect, songPlayID, _dExtreme), _dictEmpty, "👑")
							)

rich_presence_conditional_display(inEditMode(), "[{0}] Playing around with the Song Editor [🎵:{1}/36] [🧸:{2}/207] [🖼️:{3}/38] [👫:{4}/167]",
					rich_presence_lookup("module", currentModule, _dictModuleNames, "DLC Vocaloid"),
					rich_presence_value("val", flagCounter(_dictFlags[_fSongs])),
					rich_presence_value("val", flagCounterV2([_fDivaRooms, _fRoomTheme, _fFloorAccessory, _fShelfAccessory, _fWallAccessory])),
					rich_presence_value("val", flagCounter(_dictFlags[_fVisualLibrary])),
					rich_presence_value("val", flagCounter(_dictFlags[_fModules])))

rich_presence_display("[{0}] [🎵:{1}/36] [🧸:{2}/207] [🖼️:{3}/38] [👫:{4}/167]",
					rich_presence_lookup("module", currentModule, _dictModuleNames, "DLC Vocaloid"),
					rich_presence_value("val", flagCounter(_dictFlags[_fSongs])),
					rich_presence_value("val", flagCounterV2([_fDivaRooms, _fRoomTheme, _fFloorAccessory, _fShelfAccessory, _fWallAccessory])),
					rich_presence_value("val", flagCounter(_dictFlags[_fVisualLibrary])),
					rich_presence_value("val", flagCounter(_dictFlags[_fModules])))

//#endregion
