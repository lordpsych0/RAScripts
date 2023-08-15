// Dark Cloud 2
// #ID = 1308
//-Core = 1308 
//-Subset = 25202
subsetMonster = 0

//*
//- https://docs.google.com/spreadsheets/d/1eI4GceYGU3plYHovn8X9kjFNhgZnq6cdOe-fYD8CxM8/edit#gid=0
//- https://docs.google.com/spreadsheets/d/1g-zID6zQ5K38n7vxANhLtxHxEuQPHhIdPyrN1uKtKwc/edit?usp=sharing
//- https://quest.guide/dark-cloud-2/#/chapter/1
//-https://www.ign.com/wikis/dark-cloud-2/Walkthrough:_Chapter_1
//-https://www.playstationtrophies.org/forum/topic/266746-dark-cloud-2-trophy-guide-amp-roadmap/
//-https://quest.guide/dark-cloud-2/#/chapters

//-https://psnprofiles.com/guide/3895-dark-cloud-2-ideas-scoops-and-inventions-guide
//-https://www.almarsguides.com/retro/walkthroughs/ps2/games/darkcloud2/
//-https://darkcloud.fandom.com/wiki/Inventing#Inventions
//-*/

//#region zFramework {
function isTrue(p) => p == 1
function isFalse(p) => p == 0
function turnOn(p) => prev(p) == 0 && p == 1
function turnOff(p) => prev(p) == 1 && p == 0
function fromTo(add, x, y) => prev(add) == x && add == y
function increasedBy(add, am) {
	if (am == 0) return add > prev(add)
	else return add == prev(add) + am
}
function decreasedBy(add, am) {
	if (am == 0) return add < prev(add)
	else return add == prev(add) - am
}
//#endregion }

//#region Variables {

//- function Chapters()
_chpPrologue = 1
_chp1 = 2
_chp1a = 3
_chp2 = 4
_chp3 = 5
_chp4 = 6
_chp5 = 7
_chp6 = 8
_chp7 = 9
_chp8 = 10

//- function Characters()
_chrMax = 0
_chrMonica = 1
_chrRidepod = 2
_chrMonster = 3

//- function Locations()
//-Ch1
_iaCedricShop = 11
_iaPollyBakery = 12
_iaMortonSundries = 13
_iaWeaponShop = 14
_iaPoliceHQ = 15
_iaBar = 16
_iaStation = 17
_iaPalmBrinks = 18 //-Include Tree
_iaSunMoon = 19
_iaChurch = 20
_iaUChannelExit = 21
_iaTrain = 22
_iaCityHall = 23
_iaParn = 24
_iaMortonHouse = 25
_iaMansion = 26
_iaZelMine = 27
_iaDrDell = 28
_iaPier = 29
//-Ch2
_iaSindain = 30
_iaJurakMall = 31
//-Ch3
_iaBalanceValley = 32
_iaStarlighCanyon = 33
_iaStarlightTemple = 34
_iaFishContest = 35
_chp3a = 45 //-This is only used for segregation
//-Ch4
_iaVeniccio = 36
_iaLunaLabs = 37
_iaFinnyFrenzy = 38
//-Ch5
_iaHeimRada = 39
_iaGundoradaWorkshop = 40
//-Ch6
_iaMoonFlowerEntrance = 41
_iaKazarov = 42
//-Ch7
_iaMoonFlowerPalace = 43
_iaMoonFlowerPalaceExtra = 45
//-Ch8
_iaZelMine8 = 44

//- function Items()
//---Max Right weapon
_imaxrBattleWrench = 0x1
_imaxrDrillWrench = 0x2
_imaxrSmashWrench = 0x3
_imaxrStingerWrench = 0x4
_imaxrPoisonWrench = 0x5
_imaxrCubicHammer = 0x6
_imaxrDigiHammer = 0x7
_imaxrHeavyHammer = 0x8
_imaxrTurtleShellHammer = 0xf
_imaxrBigBucksHammer = 0x10
_imaxrFrozenTuna = 0x11
_imaxrKuberaHand = 0x12
_imaxrSigmaBreaker = 0x13
_imaxrGradeZero = 0x14
_imaxrLegend = 0x15
_imaxrTrueBattleWrench = 0x5a

//---Max Left Weapon
_imaxlClassicGun = 0x16
_imaxlDryerGun = 0x17
_imaxlTrumpetGun = 0x18
_imaxlBellTrigger = 0x19
_imaxlMagicGun = 0x1a
_imaxlSoulBreaker = 0x1b
_imaxlGrenadeLauncher = 0x1c
_imaxlDarkViper = 0x1d
_imaxlTwinBuster = 0x1e
_imaxlJurakGun = 0x1f
_imaxlQuestionShooter = 0x20
_imaxlStealGun = 0x21
_imaxlSupernova = 0x22
_imaxlStarBreaker = 0x23
_imaxlWildCat = 0x24
_imaxlSexyPanther = 0x25
_imaxlDesperado = 0x26
_imaxlSigmaBazooka = 0x27
_imaxlLastResort = 0x28

//---Spheda
_isHandyStick = 0x9
_isTurkey = 0xa
_isSwan = 0xb
_isFlamingo = 0xc
_isFalcon = 0xd
_isAlbatross = 0xe

//---Monica Right Weapon
_imonrLongSword = 0x29
_imonrBroadSword = 0x2a
_imonrBaselard = 0x2b
_imonrGladius = 0x2c
_imonrWiseOwlSword = 0x2d
_imonrCliffKnife = 0x2e
_imonrAntiqueSword = 0x2f
_imonrBastardSword = 0x30
_imonrKitchenKnife = 0x31
_imonrTsukikage = 0x32
_imonrSunSword = 0x33
_imonrSerpentSlicer = 0x34
_imonrShamshir = 0x36
_imonrAmaNoMurakumo = 0x37
_imonrLambsSword = 0x38
_imonrDarkCloud = 0x39
_imonrBraveArk = 0x3a
_imonrBigBang = 0x3b
_imonrAtlamilliaSword = 0x3c
_imonrMardanSword = 0x3d
_imonrGarayanSword = 0x3e
_imonrMardanGarayan = 0x3f
_imonrRulersSword = 0x40
_imonrEvilcise = 0x41
_imonrSmallSword = 0x42
_imonrSandBreaker = 0x43
_imonrDrainSeeker = 0x44
_imonrChopper = 0x45
_imonrChoora = 0x46
_imonrClaymore = 0x47
_imonrManeater = 0x48
_imonrBoneRapier = 0x49
_imonrSax = 0x4a
_imonr7BranchSword = 0x4b
_imonrDusack = 0x4c
_imonrCrossHeinder = 0x4d
_imonr7thHeaven = 0x4e
_imonrSwordOfZeus = 0x4f
_imonrChronicleSword = 0x50
_imonrChronicle2 = 0x51
_imonrHolyDaedalusBlade = 0x52
_imonrMuramasa = 0x53
_imonrDarkExcalibur = 0x54
_imonrSargatanas = 0x55
_imonrHalloweenBlade = 0x56
_imonrShiningBravado = 0x57
_imonrIslandKing = 0x58
_imonrGriffonFork = 0x59
_imonlRoyalSword = 0x6e

//---Monica Left Weapon
_imonlMagicBrassard = 0x5b
_imonlGoldBrassard = 0x5c
_imonlBanditBrassard = 0x5d
_imonlCrystalBrassard = 0x5e
_imonlPlatinumBrassard = 0x5f
_imonlGoddessBrassard = 0x60
_imonlSpiritBrassard = 0x61
_imonlDestructionBrassard = 0x62
_imonlSatanBrassard = 0x63
_imonlAthenasBrassard = 0x64
_imonlMobiusBangle = 0x65
_imonlAngelShooter = 0x66
_imonlPocklekul = 0x67
_imonlThornArmlet = 0x68
_imonlStarArmlet = 0x69
_imonlMoonArmlet = 0x6a
_imonlSunArmlet = 0x6b
_imonlFiveStarArmlet = 0x6c
_imonlLove = 0x6d

//-Items
_itMonsterNotes = 0xac //-Blue book
_itFishingRod = 0x12e 
_itBadgeBox = 0x134 
_itAquarium = 0x135 
_itInsideScoopMemo = 0x163 //-Green book
_itPhotoAlbum = 0x165 //-Orange book
_itCamera = 0x171
_itNameChangeTicket = 0x180
_itNotebook = 0x182 //-Red book
_itGiftCapsule = 0x130
_itFruitEden = 0x128
_itPotatoPie = 0x184
_itWitchParfait = 0x185
_itVoiceUnit = 0x1a6
_itEarthGem = 0x16d
_itWaterGem = 0x16e
_itWindGem = 0x16f
_itFireGem = 0x170
_itSunStone = 0xc6
_itMoonStone = 0xc7

//-Fishes
_itPriscleen = 0x136
_itBobo = 0x140
_itGobbler = 0x141
_itNonky = 0x142
_itKaji = 0x143
_itBakuBaku = 0x144
_itMadamGarayan = 0x145
_itGummy = 0x146
_itNiler = 0x147
_itUmadakara = 0x148
_itTarton = 0x149
_itPiccoly = 0x14a
_itBon = 0x14b
_itHamaHama = 0x14c
_itNegie = 0x14d
_itDen = 0x14e
_itHeela = 0x14f
_itBaronGarayan = 0x150

//- function Outfits()
_ioExplorer = 0
_ioPrincess = 1
_ioPanther = 2

//-Max Head
_ioHuntingCap = 0x6f
_ioFashionableCap = 0x70
_ioTwoToneBeret = 0x71
_ioMaintenanceCap = 0x72
_ioExplorerHelmet = 0x73
_ioClownHat = 0x74
//-Max Body
_ioGreenOveralls = 0x102
_ioRedVest = 0x103
_ioDenimOveralls = 0x104
_ioExplorerOutfit = 0x105
_ioClownSuit = 0x106
//-Max shoes
_ioLeatherShoes = 0x75
_ioWingShoes = 0x76
_ioWorkShoes = 0x77
_ioDragonShoes = 0x78
_ioClownShoes = 0x79
_ioExplorerShoes = 0x7a

//-Monica Head
_ioYellowRibbon = 0x7b
_ioStrippedRibbon = 0x7c
_ioZipanguComb = 0x7d
_ioSwallowTail = 0x7e
_ioPrincessOrb = 0x7f
_ioKittyBell = 0x80
//-Monica Body
_ioPumpkinShorts = 0x107
_ioStrippedDress = 0x108
_ioStarLeotard = 0x109
_ioPrincessDress = 0x10a
_ioPantherEnsemble = 0x10b
//-Monica shoes
_ioKnightBoots = 0x81
_ioMetalBoots = 0x82
_ioWingBoots = 0x83
_ioSpikeBoots = 0x84
_ioPrincessBoots = 0x85
_ioPantherBoots = 0x86


//- function Inventions()
_invFirstInvention = 0x1e270bc

_ivAlbatross = _isAlbatross
_ivAntiCurseAmulet = 0xff
_ivAntiGooAmulet = 0x100
_ivAntiPetrifyAmulet = 0xfd
_ivAntidoteAmulet = 0x101
_ivAntidoteDrink = 0x113
_ivAquarium = 0x135
_ivBanditBrassard = _imonlBanditBrassard
_ivBarrelCannon = 0x92
_ivBarrelCannonII = 0x18b
_ivBarrelCannonIII = 0x18c
_ivBarrelCannonIV = 0x18d
_ivBellTrigger = _imaxlBellTrigger
_ivBomb = 0x118
_ivBoneRapier = _imonrBoneRapier
_ivBread = 0x10c
_ivBucketLeg = 0x9d
_ivBucketPack = 0xa7
_ivBuggy = 0x9f
_ivCannonballArm = 0x91
_ivCannonballArmII = 0x188
_ivCannonballArmIII = 0x189
_ivCannonballArmIV = 0x18a
_ivCaterpillar = 0x9c
_ivCheese = 0x10d
_ivCleanerPack = 0xa8
_ivClownBody = 0x8b
_ivClownFoot = 0xa3
_ivClownHand = 0x97
_ivClownHandII = 0x19a
_ivClownHandIII = 0x19b
_ivClownHandIV = 0x19c
_ivClownShoes = 0x79
_ivCubicHammer = _imaxrCubicHammer
_ivDarkViper = _imaxlDarkViper
_ivDigiHammer = _imaxrDigiHammer
_ivDoublePudding = 0x10f
_ivDragonShoes = 0x78
_ivDrillArm = 0x93
_ivDrillArmII = 0x18e
_ivDrillArmIII = 0x18f
_ivDrillArmIV = 0x190
_ivDrumCanBody = 0x87
_ivEnergyPack = 0xa5
_ivEnergyPackBarrel = 0xa6
_ivEnergyPackUrn = 0xa9
_ivEscapePowder = 0x125
_ivFalcon = _isFalcon
_ivFinalBomb = 0x187
_ivFlamingo = _isFlamingo
_ivGiftCapsule = _itGiftCapsule
_ivGrenadeLauncher = _imaxlGrenadeLauncher
_ivHammerArm = 0x95
_ivHammerArmII = 0x194
_ivHammerArmIII = 0x195
_ivHammerArmIV = 0x196
_ivHeavyHammer = _imaxrHeavyHammer
_ivHolyWater = 0x114
_ivImprovedBomb = 0x186
_ivIronLeg = 0x9b
_ivJetHover = 0xa2
_ivKnightBoots = 0x81
_ivLaserArm = 0x99
_ivLaserArmII = 0x1a0
_ivLaserArmIII = 0x1a1
_ivLaserArmIV = 0x1a2
_ivLeatherShoes = 0x75
_ivLevelupPowder = 0x127
_ivLightspeed = 0x133
_ivLureRod = 0x12f
_ivMachineGunArm = 0x96
_ivMachineGunArmII = 0x197
_ivMachineGunArmIII = 0x198
_ivMachineGunArmIV = 0x199
_ivMagicGun = _imaxlMagicGun
_ivMetalBoots = 0x82
_ivMilkCanBody = 0x88
_ivMissilePodArm = 0x94
_ivMissilePodArmII = 0x191
_ivMissilePodArmIII = 0x192
_ivMissilePodArmIV = 0x193
_ivMultiFeet = 0xa1
_ivNonStopAmulet = 0xfe
_ivNovaCannon = 0x9a
_ivNovaCannonII = 0x1a3
_ivNovaCannonIII = 0x1a4
_ivNovaCannonIV = 0x1a5
_ivPantherBoots = 0x86
_ivPoisonWrench = _imaxrPoisonWrench
_ivPremiumChicken = 0x10e
_ivPrincessBoots = 0x85
_ivPropellerLeg = 0xa0
_ivQuestionShooter = _imaxlQuestionShooter
_ivRefridgeratorBody = 0x89
_ivResurrectionPowder = 0x111
_ivRidepodFuel = 0x17d
_ivRollerFoot = 0x9e
_ivRulersSword = _imonrRulersSword
_ivSamuraiArm = 0x98
_ivSamuraiArmII = 0x19d
_ivSamuraiArmIII = 0x19e
_ivSamuraiArmIV = 0x19f
_ivSamuraiBody = 0x8c
_ivSandBreaker = _imonrSandBreaker
_ivSexyPanther = _imaxlSexyPanther
_ivSmashWrench = _imaxrSmashWrench
_ivSoap = 0x115
_ivSoulBreaker = _imaxlSoulBreaker
_ivSpikeBoots = 0x84
_ivStaminaDrink = 0x112
_ivStarBreaker = _imaxlStarBreaker
_ivStealGun = _imaxlStealGun
_ivStingerWrench = _imaxrStingerWrench
_ivSunandMoonArmour = 0x8e
_ivSuperAlloyBody = 0x8d
_ivSwan = _isSwan
_ivTastyWater = 0x1a9
_ivTreasureKey = 0x129
_ivTripleUrnPack = 0xaa
_ivTrumpetGun = _imaxlTrumpetGun
_ivTurkey = _isTurkey
_ivTwinBuster = _imaxlTwinBuster
_ivWildcat = _imaxlWildCat
_ivWingBoots = 0x83
_ivWingShoes = 0x76
_ivWiseOwlSword = _imonrWiseOwlSword
_ivWoodenBoxBody = 0x8a
_ivWorkShoes = 0x77


//--function Ideas()
_idTrashcan 	= 0x1
_idMailbox 		= 0x2
_idStreetlight 	= 0x3
_idFountain 	= 0x4
_idBarrel 		= 0x5
_idLamp 		= 0x6
_idBench 		= 0x7
_idParasol 		= 0x8
_idFlag 		= 0x9
_idShruberry 	= 0xa
_idWindow 		= 0xb
_idWoodenBox 	= 0xc
_idManhole 		= 0xd
_idTrafficLight = 0xe
_idDrawbridge 	= 0xf
_idRiver 		= 0x10
_idPost 		= 0x11
_idClock 		= 0x12
_idTable 		= 0x13
_idStaircase 	= 0x14
_idMonument 	= 0x15
_idTree 		= 0x16
_idBridge 		= 0x17
_idPier 		= 0x18
_idRock 		= 0x19
_idRailroad 	= 0x1a
_idPumpkin 		= 0x1b
_idCart 		= 0x1c
_idFence 		= 0x1d
_idGate 		= 0x1e
_idChimey 		= 0x1f
_idHoe			= 0x20
_idSunshade		= 0x21
_idMilkCan		= 0x22
_idPipe			= 0x23
_idBelt			= 0x24
_idOldStylRobot = 0x25
_idWeightGauge	= 0x26
_idRapper		= 0x27
_idFan			= 0x28
_idVacumm		= 0x29
_idVacummBag	= 0x2a
_idTinyHammer	= 0x2b
_idABookReader	= 0x2c
_idBinoculars	= 0x2d
_idConstructor	= 0x2e
_idIronBridge	= 0x2f
_idLight		= 0x30
_idFlower		= 0x31
_idWithJurak	= 0x32
_idPot			= 0x33
//-_idPalmBrinks	= 0x34
_idCloth		= 0x35
_idEgg			= 0x36
//-_idPalmBrinks	= 0x37
//-_idPalmBrinks	= 0x38
_idMushroom		= 0x39
_idHat			= 0x3a
//-_idPalmBrinks	= 0x3b
_idBone			= 0x3c
_idEyeball		= 0x3d
_idChair		= 0x3e
_idBottle		= 0x3f
_idFigure		= 0x40
_idRug			= 0x41
_idCurtain		= 0x42
//-_idPalmBrinks	= 0x43
_idPiano		= 0x44
//-_id				= 0x45
_idCar			= 0x46
_idBook			= 0x47
_idWheel		= 0x48
_idRobot		= 0x49
_idBed			= 0x4a
_idDresser		= 0x4b
_idChandelier	= 0x4c
_idTelescope	= 0x4d
_idPainting		= 0x4e
_idQuartz		= 0x4f
_idHorn			= 0x50
//-_id				= 0x51
_idHookedNose	= 0x52
_idFireplace	= 0x53
_idDeerHorn		= 0x54
_idElenaPort	= 0x55
_idDrawer		= 0x56
_idVegetFruit	= 0x57
_idFish			= 0x58
_idStove		= 0x59
_idLadder		= 0x5a
_idPhone		= 0x5b
_idLetter		= 0x5c
_idRefri		= 0x5d
_idScale		= 0x5e
_idElectBulle	= 0x5f
_idVictorStand	= 0x60
_idWaterTank	= 0x61
_idOpposedIsl	= 0x62
_idGlowGate		= 0x63
_idIronMaiden	= 0x64
_idShowWindow	= 0x65
_idGoldStore	= 0x66
_idWeapon		= 0x67
_idShield		= 0x68
_idRedHouse		= 0x69
_idWindmill		= 0x6a
_idLunaSShard	= 0x6b
_idPalmTree		= 0x6c
_idTorch		= 0x6d
_idLinHouse		= 0x6e
_idMountGundor	= 0x6f
_idGeyser		= 0x70
_idHotSpringP	= 0x71
_idGrass		= 0x72
_idWorkCrane	= 0x73
_idGenerator	= 0x74
_idHammer		= 0x75
_idElevator		= 0x76
_idDecoLights	= 0x77
_idPhonograph	= 0x78
_idJurakEye		= 0x79
_idJurakNose	= 0x7a
_idSearchLight	= 0x7b
_idSign			= 0x7c
_idRifle		= 0x7d
_idCandle		= 0x7e
_idGlassesCase	= 0x7f
_idFreightTrain	= 0x80
_idBread		= 0x81
_idCup			= 0x82
_idVendingMach	= 0x83
_idRegister		= 0x84
_idWheatFlour	= 0x85
_idCan			= 0x86
_idOven			= 0x87
_idPaints		= 0x88
_idWaterfall	= 0x89
_idSaw			= 0x8a
_idHammock		= 0x8b
_idWeatherVane	= 0x8c
_idPaznosPatrn	= 0x8d
_idVentilation	= 0x8e
_idPropeller	= 0x8f
_idComputer		= 0x90
_idTransDev		= 0x91
_idEggTrans		= 0x92
_idTV			= 0x93
_idSmallGen		= 0x94
_idLaundry		= 0x95
_idBanana		= 0x96
_idJurakArmSign	= 0x97
_idMushBurgSign	= 0x98
_idWoodyTailorS	= 0x99
_idGoldDoor		= 0x9a
_idLabyDoor		= 0x9b
_idFlowerChande	= 0x9c
_idWorkRobot	= 0x9d
_idWorkEq		= 0x9e
_idAirCleaner	= 0x9f
_idEnergyPipe	= 0xa0
_idEggChair		= 0xa1
_idWorkArm		= 0xa2
_idFuturon800	= 0xa3
_idSystem5WP2	= 0xa4
_idNeoProjector	= 0xa5
_idWoodBookshel	= 0xa6
_idFlowerChair	= 0xa7
_idStand		= 0xa8
//-_id				= 0xa9
_idPowerArm		= 0xaa
_idLargeCrane	= 0xab
_idBoat			= 0xac
_idLigthLunaSt	= 0xad
_idFlowerBathL	= 0xae
_idLotusFlower	= 0xaf
_idWaterfCurt	= 0xb0
_idBlueLatern	= 0xb1
_idSunTable		= 0xb2
_idSunChair		= 0xb3
_idWaterWheel	= 0xb4
_idRelaxFount	= 0xb5
_idSilverBench	= 0xb6
//-_id				= 0xb7
_idCamelliaTree	= 0xb8
_idGoldGate		= 0xb9
_idStarlStair	= 0xba
_idStardustPoun	= 0xbb
_idStarlTunnel	= 0xbc
_idFlowerBed	= 0xbd
_idMoonColumn	= 0xbe
_idRoadGoldbad	= 0xbf
_idDeadTree		= 0xc0
_idTheMoon		= 0xc1
_idTheSun		= 0xc2
_idMorningSun	= 0xc3
_idEveningSun	= 0xc4
_idDrumCan		= 0xc5
_idElectricSes	= 0xc6
_idDisplayRobo	= 0xc7
_idRunawDragon	= 0xc8
_idChinesLanter	= 0xc9
_idScroll		= 0xca
_idLaoChaoT		= 0xcb
_idSpecPekDuck	= 0xcc
_idPorkDump		= 0xcd
_idBaskStreamer	= 0xce
_idRotatingSign	= 0xcf
_idHandSewn		= 0xd0
_idStarLamp		= 0xd1
_idPeepingPole	= 0xd2
_idCrescShapLig	= 0xd3
_idStarglass	= 0xd4
_idHolyEmblem	= 0xd5
_idStainedGlass	= 0xd6
_idFrescoPaint	= 0xd7
_idSaintWriting	= 0xd8
_idWindmFeather	= 0xd9
_idSulphurJuice	= 0xda
_idPatternedRug	= 0xdb
_idAlexandraBed	= 0xdc
_idPollyBakSign	= 0xdd
_idCedricShopS	= 0xde
_idMortonSundS	= 0xdf
_idDellClinicS	= 0xe0
_idPoliceSign	= 0xe1
_idParnStudSi	= 0xe2
_idWeaponShopS	= 0xe3
_idBarSign		= 0xe4
_idCafeSign		= 0xe5
_idPinky		= 0xe6
_idCoal			= 0xe7
_idFireHouse	= 0xe8
_idPotTorch		= 0xe9
_idFruit		= 0xea
_idWell			= 0xeb
_idWarehouse	= 0xec
_idIronShed		= 0xed
_idLog			= 0xee
_idCinders		= 0xef
_idMud			= 0xf0
_idEarthAltar	= 0xf1
_idWindAltar	= 0xf2
_idFireAltar	= 0xf3
_idWaterAltar	= 0xf4
_idGiantYordaT	= 0xf5
_idBlackstoneO	= 0xf6
_idFishingCoSi	= 0xf7
_idFishRaceSi	= 0xf8
_idMrBigShotSha	= 0xf9
_idZelmiteFound	= 0xfa

//- function Scoops()
_sc1stScoopCheck = 0x01e274bd
_scBurnDragonF	= 0x3e8
_scSpinningIvan	= 0x3e9
_scChargRam		= 0x3ea
_scPhantoMemo	= 0x3eb
_scChangDogSt	= 0x3ec
_scFaintBonLor	= 0x3ed
_scNightStalker	= 0x3ee
_scDangerPumpk	= 0x3ef
//-_sc				= 0x3f0
_scHurrayRockMa	= 0x3f1
_scNiceMassage	= 0x3f2
_scGyumosYell	= 0x3f3
_scSpookyGrSmil	= 0x3f4
_scBraveLLinda	= 0x3f5
_scClownRoboAtt	= 0x3f6
_scPuppedShin	= 0x3f8
_scTheUltGasp	= 0x3f9
_scBaronHangOn	= 0x3fa
_scToreNap		= 0x3fb
//-_sc				= 0x3fc
_scFaceBehEvil	= 0x3fd
_scFloatEarchD	= 0x3fe
_scBomberBoom	= 0x3ff
_scFloatsRevive	= 0x400
//-_sc				= 0x401
_scGriffonRFace	= 0x402
_scDrJaming		= 0x403
_scFGoldenEgg	= 0x7d0
_scHmmJurak		= 0x7d1
_scMoonCrystal	= 0x7d2
_scSymLunaLab	= 0x7d3
_scPaznos		= 0x7d4
_scMasterUtan	= 0x7d5
_scVeniccioESun	= 0x7d6
_scAncientMural = 0x7d7
_scKingMardan 	= 0x7d8
_scLafreStem	= 0x7d9
_scFlyBattle	= 0x7da
_scFireSquall	= 0x7db
_scIxion		= 0x7dc
_scLegendMoon	= 0x7dd
_scMoonFlowPal	= 0x7de
_scKazStone		= 0x7df
_scGigPaznos	= 0x7e0
_scEarthGemAlt	= 0x7e1
_scWindGemAlt	= 0x7e2
_scWaterGemAlt	= 0x7e3
_scFireGemAlt	= 0x7e4
_scSunChamGate	= 0x7e5
_scFlowerSun	= 0x7e6
_scLavaRoad		= 0x7e7
//-_sc				= 0x7e8
_scFallenBattle	= 0x7e9
_scRulerPound	= 0x7ea
_scSurvSoldier	= 0x7eb
_scHotSpringSp	= 0x7ec
_scRButterUnite	= 0x3f7

//-- function Maps()
_mpSindain = 0x0
_mpBalanceValley = 0x1
_mpVeniccio = 0x2
_mpHeimRada = 0x3
_mpMoonFlowerPalace = 0x4
_mpPalmBrinks = 0xa
_mpSindainStation = 0x10
_mpJurakMall = 0x19
_mpForestTunnel = 0x35
_mpFishContest = 0x63
_mpFishFrenzy = 0x5f
_mpFishFrenzyRace = 0x60
_mpStarlightTemple = 0x1a
_mpLunaLab = 0x52
_mpLinHouse = 0x64
_mpGundoradaWorkshop = 0x66
_mpOperationsRoom = 0x6b
_mpLab1 = 0x71
_mpMFPCutscene = 0x7e

//-- function Dungeons&Floors()
_dUChannel = 0
_dRBWoods = 1
_dSCanyon = 2
_dORCave = 3
_dMGundore = 4
_dMFPalace = 5
_dZMine = 6

//-Floors
//-Underground channel
_fOutsideWorld = 1
_fBattleRats = 2
_fGhostChannel = 3
_fChanPumpRoom = 4 //-NM
_fStevesBattle = 5
_fSTreasureChest = 6
_fChanReservoir = 7 //-NM
_fChannelExit = 8 //-NM
_fRaybrandtCastle = 0x14
_fCircusTent = 0x15

//-Rainbow Butterfly Wood 
_fFrightForest = 1 //-NG
_fStrangeTree = 2 //-NG
_fRollingShells = 3 //-NG
_fGreatFishSwamps = 6 //-NM
_fThisIsGeostone = 4
_fNoiseInForest = 5
_fImPixie = 7
_fLegendKillSnake = 8
_fGrotSpiderLady = 13
_fRainbowFallsEntrance = 14
_fRainbowFalls = 15 //-NM

//-*
_fLookingEarthGem = 9
_fSomethingRareHere = 10 //-NG
_fScaryTree = 11
_fChamberSleepEarthGem = 12

//-Starlight Canyon
_fHeadlongDash = 1
_fFireIceMix = 2
_fEarthShakingDemon = 3
_fPowerfulYoYoRobot = 4
_fElephantArmyValley = 5
_fWarriorStarCanyon = 9
_fSmilingFairyVillage = 10
_fDangerousTreasureChest = 6
_fLittleDragonCounter = 7
_fBargasValley = 8 //-NM
_fCursedMask = 11
_fWeRolyPolyBrothers = 16
_fDragonSlayer = 17
_fYordasValley = 18 //-NM
_fRamaPriestsLikeCheese = 19
_fNaturesThreat = 20
_fMoonBaron = 21
_fLighthouseAppears = 22
_fLighthouseCape = 23 //-NM
//-* 
_fLookingWindGem = 12 //-NG
_fEvilSpiritValley = 13
_fBraveWarriorsValley = 14
_fChamberDefendingWindGem = 15 //-NM

//-Ocean's Roar Cave
_fPirates = 1
_fTonsFish = 2
_fTankBoss = 3
_fWaterMonster = 4
_fScaryAuntieMedusa = 5
_fSandMolers = 6
_fBatDen = 7
_fPiratesHideout = 8
_fCaveAncientMurals = 9 //-NM
_fWanderingZappy = 10
_fBanquetDead = 15
_fImprovements = 16
_fReturnSerpent = 17
_fCursedSea = 18
_fSeaAtrocity = 19
_fShiguraVillage = 20 //-NM
//-*
_fLookingWaterGem = 11 //-NG
_fPiratesRevenge = 12 //-NG
_fDeathOcean = 13 //-NG
_fChamberSleepingWaterGem = 14 //-NM

//-Mount Gundor
_fBattleGriffonArmy = 1
_fMtGundorWind = 2
_fLittleDragonsMountain = 3
_fSteamGoyone = 4
_fMountainBaddieAppears = 9
_fMagmanoff = 10
_fDangerZone = 11
_fSecretFireMountain = 12
_fDeathtrap = 13
_fDesperationMountain = 14
_fPainsNeck = 15
_fMountGundorPeak = 16 //-NM
_fWalkingPathFlames = 17
_fBurningUndead = 18
_fFireDragon = 19
_fTreasureChestDangerZone = 20
_fRoadRiverFlames = 21
_fMountGundorMouth = 22 //-NM

//-*
_fLookingFireGem = 5 //-NG
_fExplosiveHotSpring = 6 //-NG
_fCrazyMountain = 7 //-NG
_fChamberBlazingFireGem = 8 //-NM

//-Moonlight Flower Palace
_fAncientWind = 1
_fCardWarriorsGather = 2
_fDangerousTreasure = 3
_fZombieZone = 4
_fFeelingOutofPlace = 5
_fLivingStatue = 6
_fDangerZoneM = 7
_fScaryWomen = 8
_fHellElephant = 9
_fCrushtheUndead = 10
_fGarden = 11 //-NM
_fMissingGemDealer = 12
_fMaxLongestDay = 13
_fHellCorridor = 14
_fMonicaAllAlone = 15
_fRagingSpirits = 16
_fLonelyMachine = 17 //-NG
_fNobility = 18 //-NG
_fPalaceWatchdog = 19
_fRoadtoMemories = 20 //-NG
_fAlexandraRoom = 21 //-NM
_fFinalTrumpCard = 22
_fElementalParty = 23 //-NG
_fWarnderingKnightSoul = 24 //-NG
_fBewareCarelessness = 25 //-NG
_fFinalBattle = 26 //-NG
_fSunChamber = 27 //-NM

//-Zelmite Mine //-TODO
_fGetZelmite = 1
_fMoonMole = 2
_fPowerfulFrog = 3
_fEvilBatInvasion = 4
_fMinersBreakroom = 5 //-NM
_fCrossroadsDestiny = 6
_fScaryFace = 7
_fPowerfulWildBoar = 8
_fMurderousTank = 9
_fDeadEnd1 = 10 //-NM
_fWhichOne = 11
_fOldWomanSawIt = 12
_fGiantSnake = 13
_fUndauntedSoldiers = 14
_fHellWard1 = 15
_fDeadEnd2 = 16 //-NM
_fRoadTruth = 17
_fCrossroads = 18
_fLostRoad = 19
_fIndecision = 20
_fDeadEnd3 = 21 //-NM
_fLittleDragonArmy = 22
_fCaptainReturns = 23
_fHellsTurningPoint = 24
_fMummyHeaven = 25
_fDeadEnd4 = 26 //-NM
_fSuspiciousOpening = 27 //-NM
_fWard3Entrance = 28
_fFlotsamBrokenArmy = 29
_fHellWard3WellsideGossip = 30
_fDevilElemental = 31
_fMariner = 32
_fUltimateSnake = 33
_fOmen = 34
_fAnxiety = 35
_fFirmBelieve = 36
_fSleepingLight = 37
_fZelmiteMineDepths = 38 //-NM

//-Floor Address
//--_faMainFlags = 0x1e1de22
//--_faMainAllMonsters = 0x1e1de23
//--_faMainMonstersKilled = 0x1e1de24
//--_faMainTimesVisited = 0x1e1de26

//- function MonsterTransformations()
//-Beast Badge
_mbBeast = 0
_mtSewerRat = 0
_mtBeachRat = 1
_mtCastleEater = 2
_mtDeathMouse = 3


_mtRam = 136
_mtSavageRam = 137
_mtBandou = 139

_mtRifleWolf = 22
_mtSmilingWolf = 23

//-Windup badge
_mbWindup = 1
_mtBomberHead = 220
_mtTripleCracker = 221
_mtDangerBomb = 222
_mtSweetDynamite = 223

//-Acuatic Badge
_mbAcuatic = 2
_mtFroggy = 8
_mtGeron = 9
_mtGamal = 10
_mtPutos = 11

_mtMoonGoyone = 150
_mtMariner = 151

//-Flora Badge
_mbFlora = 3
_mtHimarra = 52
_mtBalalla = 53
_mtStormflower = 54
_mtMandora = 55

_mtMallone = 102
_mtScarecrow = 103

//-Magical Badge
_mbMagical = 4
_mtBaronBalloon = 24
_mtFlotsamBalloon = 25
_mtCountBalloon = 26
_mtDukeBalloon = 27

_mtGuardia = 166
_mtDarkKeeper = 167

//-Darkling Badge
_mbDarkling = 5
_mtSpiderLady = 72
_mtShiva = 73
_mtSpiderWoman = 74
_mtBambamchoo = 75

_mtMissGourgon = 154
_mtMrsGourgon = 155

//-Reptile Badge
_mbReptile = 6
_mtWindGemron = 124
_mtIceGemrom = 116
_mtThunderGemron = 120
_mtFireGemron = 112
_mtHolyGemron = 128

//-Spirit Badge
_mbSpirit = 7
_mtPixie = 44
_mtSylph = 45
_mtFaerie = 46
_mtImp = 47

//-Undead Badge
_mbUndead = 8
_mtSkeletonSoldier = 176
_mtHornhead = 177
_mtMasterJacket = 180
_mtRareJacket = 183

_mtWhitebeard = 186
_mtOyakata = 187

//-Card Badge
_mbCard = 9
_mtClub = 224
_mtDiamond = 236
_mtHeart = 228
_mtSpade = 232
_mtJoker = 240

_mbSun = 10
_mbMoon = 11

//- function BestiaryMonsters()
_mSewerRat = 0x1e646d2			//-000
_mBeachRat = 0x1e646de          //-001
_mCastleEater = 0x1e646ea       //-002
_mDеathMouse = 0x1e646f6        //-003
_mVanguard = 0x1e64702          //-004
_mNeoVanguard = 0x1e6470e       //-005
_mVanguardMk2 = 0x1e6471a       //-006
_mNailBurst = 0x1e64726         //-007
_mFroggy = 0x1e64732            //-008
_mGeron = 0x1e6473e             //-009
_mGamal = 0x1e6474a             //-010
_mPutos = 0x1e64756             //-011
_mTore = 0x1e64762              //-012
_mSteamTore = 0x1e6476e         //-013
_mMadTore = 0x1e6477a           //-014
_mGreatTree = 0x1e64786         //-015
_mKotore = 0x1e64792            //-016
_mSteamKotore = 0x1e6479e       //-017
_mDorone = 0x1e647aa            //-018
_mSmallTree = 0x1e647b6         //-019
_mHunterFox = 0x1e647c2         //-020
_mRedFox = 0x1e647ce            //-021
_mRifleWolf = 0x1e647da         //-022
_mSmilingWolf = 0x1e647e6       //-023
_mBaronBalloon = 0x1e647f2      //-024
_mFlotsamBalloon = 0x1e647fe    //-025
_mCountBalloon = 0x1e6480a      //-026
_mDukeBalloon = 0x1e64816       //-027
_mTortoise = 0x1e64822          //-028
_mSeaTortoise = 0x1e6482e       //-029
_mStarTortoise = 0x1e6483a      //-030
_mEbonyTortoise = 0x1e64846     //-031
_mTurtle = 0x1e64852            //-032
_mFintol = 0x1e6485e            //-033
_mArkerath = 0x1e6486a          //-034
_mBolter = 0x1e64876            //-035
_mClown = 0x1e64882             //-036
_mGriffonSoldier = 0x1e6488e    //-037
_mEvilPerformer = 0x1e6489a     //-038
_mDarkAlchemist = 0x1e648a6     //-039
_mTigriff = 0x1e648b2           //-040
_mChimera = 0x1e648be           //-041
_mLeogriff = 0x1e648ca          //-042
_mSphinx = 0x1e648d6            //-043
_mPixie = 0x1e648e2             //-044
_mSylph = 0x1e648ee             //-045
_mFaerie = 0x1e648fa            //-046
_mImp = 0x1e64906               //-047
_mLinda = 0x1e64912             //-048
_mElfas = 0x1e6491e             //-049
_mMoonflowerphant = 0x1e6492a   //-050
_mBehemont = 0x1e64936          //-051
_mHimarra = 0x1e64942           //-052*
_mBalalla = 0x1e6494e           //-053*
_mStormflower = 0x1e6495a       //-054*
_mMandora = 0x1e64966           //-055*
_mGyumo = 0x1e64972             //-056
_mBlumo = 0x1e6497e             //-057
_mCabuble = 0x1e6498a           //-058
_mMinotaurus = 0x1e64996        //-059
_mNightStalker = 0x1e649a2      //-060
_mRagstink = 0x1e649ae          //-061
_mLeach = 0x1e649ba             //-062
_mWraith = 0x1e649c6            //-063
_mDragon = 0x1e649d2            //-064
_mRedDragon = 0x1e649de         //-065
_mEarthDragon = 0x1e649ea       //-066
_mTiamat = 0x1e649f6            //-067
_mMemoEater = 0x1e64a02         //-068
_mBurger = 0x1e64a0e            //-069
_mStormy = 0x1e64a1a            //-070
_mLadha = 0x1e64a26             //-071
_mSpiderLady = 0x1e64a32        //-072
_mShiva = 0x1e64a3e             //-073
_mSpiderLady2 = 0x1e64a4a       //-074
_mBambamchoo = 0x1e64a56        //-075
_mFireElement = 0x1e64a62       //-076
_mFireSpirit = 0x1e64a6e        //-077
_mFireGhost = 0x1e64a7a         //-078
_mMagmaServant = 0x1e64a86      //-079
_mIceElement = 0x1e64a92        //-080
_mIceSpirit = 0x1e64a9e         //-081
_mSnowGhost = 0x1e64aaa         //-082
_mSnowServant = 0x1e64ab6       //-083
_mZappy = 0x1e64ac2             //-084
_mThunderSpirit = 0x1e64ace     //-085
_mThunderGhost = 0x1e64ada      //-086
_mThunderServant = 0x1e64ae6    //-087
_mAquaElement = 0x1e64af2       //-088
_mWaterSpirit = 0x1e64afe       //-089
_mRainGhost = 0x1e64b0a         //-090
_mTempestServant = 0x1e64b16    //-091
_mWindElement = 0x1e64b22       //-092
_mSpiritFlyer = 0x1e64b2e       //-093
_mStormGhost = 0x1e64b3a        //-094
_mWindServant = 0x1e64b46       //-095
_mMaskedTribesman = 0x1e64b52   //-096
_mLavaRunner = 0x1e64b5e        //-097
_mStoneGuard = 0x1e64b6a        //-098
_mLastGuardian = 0x1e64b76      //-099
_mPumpkinhead = 0x1e64b82       //-100
_mZucky = 0x1e64b8e             //-101
_mMallone = 0x1e64b9a           //-102*
_mScarecrow = 0x1e64ba6         //-103*
_mMummy = 0x1e64bb2             //-104
_mBundy = 0x1e64bbe             //-105
_mGhoul = 0x1e64bca             //-106
_mRevenant = 0x1e64bd6          //-107
_mManEatingGrass = 0x1e64be2    //-108
_mCursedRose = 0x1e64bee        //-109
_mDarkFlower = 0x1e64bfa        //-110
_mMysteryPlant = 0x1e64c06      //-111
_mFireGemron = 0x1e64c12        //-112
_mFireGundron = 0x1e64c1e       //-113
_mFireDrake = 0x1e64c2a         //-114
_mFireWyrm = 0x1e64c36          //-115
_mIceGemrom = 0x1e64c42         //-116
_mIceGundron = 0x1e64c4e        //-117
_mIceDrake = 0x1e64c5a          //-118
_mIceWyrm = 0x1e64c66           //-119
_mThunderGemron = 0x1e64c72     //-120
_mThunderGundron = 0x1e64c7e    //-121
_mThunderDrake = 0x1e64c8a      //-122
_mThunderWyrm = 0x1e64c96       //-123
_mWindGemron = 0x1e64ca2        //-124
_mWindGundron = 0x1e64cae       //-125
_mWindDrake = 0x1e64cba         //-126
_mWindWyrm = 0x1e64cc6          //-127
_mHolyGemron = 0x1e64cd2        //-128
_mHolyGundron = 0x1e64cde       //-129
_mHolyDrake = 0x1e64cea         //-130
_mHolyWyrm = 0x1e64cf6          //-131
_mNikapous = 0x1e64d02          //-132
_mIronMask = 0x1e64d0e          //-133
_mUmmagumma = 0x1e64d1a         //-134
_mIncuder = 0x1e64d26           //-135
_mRam = 0x1e64d32               //-136
_mSavageRam = 0x1e64d3e         //-137
_mRamZ = 0x1e64d4a              //-138
_mBandou = 0x1e64d56            //-139
_mMoler = 0x1e64d62             //-140
_mSandMoler = 0x1e64d6e         //-141
_mMineMoler = 0x1e64d7a         //-142
_mBusyMoler = 0x1e64d86         //-143
_mKillerSnake = 0x1e64d92       //-144
_mSeaSerpent = 0x1e64d9e        //-145
_mSandDragon = 0x1e64daa        //-146
_mDeadRope = 0x1e64db6          //-147
_mGoyone = 0x1e64dc2            //-148
_mSteamGoyone = 0x1e64dce       //-149
_mMoonGoyone = 0x1e64dda        //-150
_mMariner = 0x1e64de6           //-151
_mAuntieMedusa = 0x1e64df2      //-152
_mFatNaga = 0x1e64dfe           //-153
_mMissGourgon = 0x1e64e0a       //-154
_mMrsGourgon = 0x1e64e16        //-155
_mDogStatue = 0x1e64e22         //-156
_mCoralDog = 0x1e64e2e          //-157
_mToyRoc = 0x1e64e3a            //-158
_mCerberus = 0x1e64e46          //-159
_mIvanoff = 0x1e64e52           //-160
_mMagmaoff = 0x1e64e5e          //-161
_mRockFace = 0x1e64e6a          //-162
_mIwanosuke = 0x1e64e76         //-163
_mStatue = 0x1e64e82            //-164
_mLivingArmor = 0x1e64e8e       //-165
_mGuardia = 0x1e64e9a           //-166
_mDarkKeeper = 0x1e64ea6        //-167
_mGolem = 0x1e64eb2             //-168
_mLavaGolem = 0x1e64ebe         //-169
_mRockTaster = 0x1e64eca        //-170
_mTitan = 0x1e64ed6             //-171
_mBoneLord = 0x1e64ee2          //-172
_mFlamingNail = 0x1e64eee       //-173
_mEvilNail = 0x1e64efa          //-174
_mBoneKing = 0x1e64f06          //-175
_mSkeletonSoldier = 0x1e64f12   //-176
_mHornhead = 0x1e64f1e          //-177
_mSilverGear = 0x1e64f2a        //-178
_mPlatinumGear = 0x1e64f36      //-179
_mMasterJacket = 0x1e64f42      //-180
_mHeatWear = 0x1e64f4e          //-181
_mSkullChief = 0x1e64f5a        //-182
_mRareJacket = 0x1e64f66        //-183
_mCaptain = 0x1e64f72           //-184
_mBlackbeard = 0x1e64f7e        //-185
_mWhitebeard = 0x1e64f8a        //-186
_mOyakata = 0x1e64f96           //-187
_mCorsair = 0x1e64fa2           //-188
_mZombiePirate = 0x1e64fae      //-189
_mOreRobber = 0x1e64fba         //-190
_mEliteCorsair = 0x1e64fc6      //-191
_mFaceOfPajna = 0x1e64fd2       //-192
_mAlexander = 0x1e64fde         //-193
_mFaceOfYaksa = 0x1e64fea       //-194
_mDemonPuppet = 0x1e64ff6       //-195
_mSmilingFairy = 0x1e65002      //-196
_mHeatFairy = 0x1e6500e         //-197
_mFairyHelper = 0x1e6501a       //-198
_mHellFairy = 0x1e65026         //-199
_mCrescentBaron = 0x1e65032     //-200
_mStickJoe = 0x1e6503e          //-201
_mMoonJoe = 0x1e6504a           //-202
_mMoonlightHulk = 0x1e65056     //-203
_mDarkness = 0x1e65062          //-204
_mSooty = 0x1e6506e             //-205
_mDarker = 0x1e6507a            //-206
_mShadow = 0x1e65086            //-207
_mPriestOfRama = 0x1e65092      //-208
_mSleeber = 0x1e6509e           //-209
_mCrownPriest = 0x1e650aa       //-210
_mGaruda = 0x1e650b6            //-211
_mArthur = 0x1e650c2            //-212
_mLancer = 0x1e650ce            //-213
_mIronSpear = 0x1e650da         //-214
_mFlyingSteel = 0x1e650e6       //-215
_mPirateTank = 0x1e650f2        //-216
_mPirateEye = 0x1e650fe         //-217
_mAngryCanon = 0x1e6510a        //-218
_mIronGhost = 0x1e65116         //-219
_mBomberHead = 0x1e65122        //-220
_mTripleCracker = 0x1e6512e     //-221
_mDangerBomb = 0x1e6513a        //-222
_mSweetDynamite = 0x1e65146     //-223
_mClub = 0x1e65152              //-224
_mSClub = 0x1e6515e             //-225
_mRClub = 0x1e6516a             //-226
_mRSFClub = 0x1e65176           //-227
_mHeart = 0x1e65182             //-228
_mSHeart = 0x1e6518e            //-229
_mRHeart = 0x1e6519a            //-230
_mRSFHeart = 0x1e651a6          //-231
_mSpade = 0x1e651b2             //-232
_mSSpade = 0x1e651be            //-233
_mRSpade = 0x1e651ca            //-234
_mRSFSpade = 0x1e651d6          //-235
_mDiamond = 0x1e651e2           //-236
_mSDiamond = 0x1e651ee          //-237
_mRDiamond = 0x1e651fa          //-238
_mRFSDiamond = 0x1e65206        //-239
_mJoker = 0x1e65212             //-240
_mSJoker = 0x1e6521e            //-241
_mRJoker = 0x1e6522a            //-242
_mRFSJoker = 0x1e65236          //-243
//-_mNA = 0x1e65242             //-244
_mMimicUC = 0x1e6524e           //-245
_mKingMimicUC = 0x1e6525a       //-246
_mMimicRBW = 0x1e65266          //-247
_mKingMimicRBW = 0x1e65272      //-248
_mMimicSC = 0x1e6527e           //-249
_mKingMimicSC = 0x1e6528a       //-250
_mMimicORC = 0x1e65296          //-251
_mKingMimicORC = 0x1e652a2      //-252
_mMimicMG = 0x1e652ae           //-253
_mKingMimicMG = 0x1e652ba       //-254
_mMimicRBWs = 0x1e652c6         //-255
_mKingMimicRBWs = 0x1e652d2     //-256
_mMimicSCs = 0x1e652de          //-257
_mKingMimicSCs = 0x1e652ea      //-258
_mMimicORCs = 0x1e652f6         //-259
_mKingMimicORCs = 0x1e65302     //-260
_mMimicMFP = 0x1e6530e          //-261
_mKingMimicMFP = 0x1e6531a      //-262
_mMimicZM = 0x1e65326           //-263
_mKingMimicZM = 0x1e65332       //-264
_mMimicZMd = 0x1e6533e          //-265
_mKingMimicZMd = 0x1e6534a      //-266
_mMimicMGS = 0x1e65356          //-267
_mKingMimicMGS = 0x1e65362      //-268
_mSonicBomber = 0x1e6536e       //-269
_mUltrasonicBomb = 0x1e6537a    //-270
_mMetalBomber = 0x1e65386       //-271
_mKrauMauness = 0x1e65392       //-272
_mYoYoBarrel = 0x1e6539e        //-273
_mRollingRocks = 0x1e653aa      //-274
_mClockKnight = 0x1e653b6       //-275
_mSpinningSaucer = 0x1e653c2    //-276
_mBat = 0x1e653ce               //-277
_mSeaBat = 0x1e653da            //-278
_mLavaBat = 0x1e653e6           //-279
_mEvilBat = 0x1e653f2           //-280
                                    
//- function Photos()
_phIdeaPhotoAdd = 0x1e63880
_phIdeaBookAdd = 0x1e269e8
_phIdeaAlbumAdd = 0x1ecbfd0
_phIdeaOfPhoto = 0x1e26df2

//- function Recruitables()
_rcGordon = 0
_rcParn = 1
_rcDonny = 2
_rcFerdinand = 3
_rcClaire = 4
_rcPau = 5
_rcStewart = 6
_rcAdel = 7
_rcPolly = 8
_rcSheriff = 9
_rcMilane = 10
_rcGerald = 11
_rcMayor = 12
_rcPriest = 13
_rcRufio = 14
_rcFabio = 15
_rcOlivie = 16
_rcMina = 17
_rcCorrine = 18
_rcRosa = 19

//- function MiracleChests()
//-Chapter 1
_mcFEUC 	= [1, 0x01e01b70]
_mcPPPalm 	= [1, 0x01e01ab0]
_mcFEPalm 	= [2, 0x01e01ab0]

//-Chapter 2
_mcFEJurak1 = [1, 0x01e01ba0]
_mcPPJurak1 = [2, 0x01e01ba0]
_mcFEJurak2 = [3, 0x01e01ba0]
_mcWPJurak1 = [4, 0x01e01ba0]
_mcFEJurak3 = [5, 0x01e01ba0]
_mcPPJurak2 = [6, 0x01e01ba0]
_mcFEJurak4 = [7, 0x01e01ba0]
_mcWPJurak2 = [0, 0x01e01ba1]
_mc4WCJurak = [5, 0x01e01ba1]
_mcGJurak 	= [6, 0x01e01ba1]

//-Chapter 3
_mcFETemple1 = [3, 0x01e01bb0] //-Glitchy
_mcFETemple2 = [1, 0x01e01bb0]
_mcPPTemple1 = [2, 0x01e01bb0]
_mcWPTemple1 = [4, 0x01e01bb0]
_mcETemple1 = [3, 0x01e01bb2]
_mcPTemple1 = [4, 0x01e01bb2]
_mcFETemple3 = [5, 0x01e01bb0]
_mcFETemple4 = [3, 0x01e01bb1]
_mcWPTemple2 = [4, 0x01e01bb1]
_mcFETemple5 = [5, 0x01e01bb1]
_mcPPTemple2 = [6, 0x01e01bb1]
_mcPPTemple3 = [6, 0x01e01bb0]
_mcWPTemple3 = [0, 0x01e01bb1]
_mcPPTemple4 = [2, 0x01e01bb1]

//-Chapter 4
_mcFELab1 = [1, 0x01e01f30]
_mcPPLab1 = [2, 0x01e01f30]
_mcFELab2 = [3, 0x01e01f30]
_mcWPLab1 = [4, 0x01e01f30]
_mcFELab3 = [5, 0x01e01f30]
_mcPPLab2 = [6, 0x01e01f30]
_mcFELab4 = [7, 0x01e01f30]
_mcWPLab2 = [1, 0x01e01f31]
_mcRLab = [5, 0x01e01f32]
_mcPLab = [6, 0x01e01f32]
_mcSLab = [7, 0x01e01f32]
_mcFELab5 = [1, 0x01e02121]
_mcPPLab3 = [2, 0x01e02121]
_mcFELab6 = [3, 0x01e022e1]
_mcWPLab3 = [4, 0x01e022e1]
_mcFELab7 = [5, 0x01e022f1]
_mcWPLab4 = [6, 0x01e022f1]

//-Chapter 5
_mcFEGun1 = [1, 0x01e02070]
_mcPPGun1 = [2, 0x01e02070]
_mcFEGun2 = [3, 0x01e02070]
_mcWPGun1 = [4, 0x01e02070]
_mcFEGun3 = [5, 0x01e02070]
_mcPPGun2 = [6, 0x01e02070]
_mcFEGun4 = [7, 0x01e02070]
_mcWPGun2 = [0, 0x01e02071]
_mcFEGun5 = [1, 0x01e02071]
_mcPPGun3 = [2, 0x01e02071]
_mcFEGun6 = [3, 0x01e02071]
_mcWPGun3 = [4, 0x01e02071]
_mcFEGun7 = [5, 0x01e02071]
_mcPPGun4 = [6, 0x01e02071]
_mcFEGun8 = [7, 0x01e02071]
_mcWPGun4 = [0, 0x01e02072]

//-Chapter 6
_mcFEJurak5 = [1, 0x01e01ba1]
_mcPPJurak3 = [2, 0x01e01ba1]
_mcFEJurak6 = [3, 0x01e01ba1]
_mcWPJurak3 = [4, 0x01e01ba1]
_mcAmJurak 	= [7, 0x01e01ba1]
_mcAqJurak 	= [0, 0x01e01ba2]

//-Uses the same address for FoE CH3 and FoE CH6
_mcFETemple6 = [7, 0x01e01bb0] //-Glitchy?
_mcFETemple7 = [7, 0x01e01bb1]
_mcPPTemple5 = [0, 0x01e01bb2]
_mcFETemple8 = [1, 0x01e01bb2]
_mcWPTemple4 = [2, 0x01e01bb2]

_mcFELab8 = [7, 0x01e02131]
_mcFELab9 = [1, 0x01e020f2]
_mcFELab10 = [3, 0x01e020f2]
_mcPPLab4 = [0, 0x01e02132]
_mcPPLab5 = [4, 0x01e020f2]
_mcWPLab5 = [2, 0x01e020f2]

_mcFEGun9 = [1, 0x01e02072]
_mcFEGun10 = [3, 0x01e02072]
_mcFEGun11 = [5, 0x01e02072]
_mcPPGun5 = [2, 0x01e02072]
_mcWPGun5 = [4, 0x01e02072]
_mcWPGun6 = [6, 0x01e02072]
_mcToGun  =	[7, 0x01e02072]
_mcTuGun  =	[0, 0x01e02073]
_mcDiGun  =	[0, 0x01e02073]

//-Chapter 7
_mcFEPalace1 = [1, 0x01e020e0]
_mcPPPalace1 = [2, 0x01e020e0]
_mcFEPalace2 = [3, 0x01e020e0]
_mcWPPalace1 = [4, 0x01e020e0]
_mcFEPalace3 = [5, 0x01e020e0]
_mcPPPalace2 = [6, 0x01e020e0]
_mcFEPalace4 = [7, 0x01e020e0]
_mcWPPalace2 = [0, 0x01e020e1]
_mcFEPalace5 = [1, 0x01e020e1]
_mcPPPalace3 = [2, 0x01e020e1]
_mcFEPalace6 = [3, 0x01e020e1]
_mcWPPalace3 = [4, 0x01e020e1]
_mcFEPalace7 = [5, 0x01e020e1]
_mcPPPalace4 = [6, 0x01e020e1]
_mcFEPalace8 = [7, 0x01e020e1]
_mcWPPalace4 = [0, 0x01e020e2]
_mcFEPalace9 = [1, 0x01e020e2]
_mcPPPalace5 = [2, 0x01e020e2]
_mcFEPalace10 = [3, 0x01e020e2]
_mcWPPalace5 = [4, 0x01e020e2]
_mcPPPalace6 = [5, 0x01e020e2]
_mcWPPalace6 = [6, 0x01e020e2]

//-Chapter 8

//#endregion }

//#region Dictionaries {
//- function Locations()
_dictMap = {
	_mpSindain: "Sindain",
	_mpBalanceValley: "Balance Valley",
	_mpVeniccio: "Veniccio",
	_mpHeimRada: "Heim Rada",
	_mpMoonFlowerPalace: "Moon Flower Palace",
	0x9: "Veniccio",
	_mpPalmBrinks: "Palm Brinks",
	0xb: "Palm Brinks Station",
	0xc: "Palm Brinks Square",
	0xd: "Palm Brinks Residence",
	0xe: "Palm Brinks Park",
	0xf: "Channel Reservoir",
	_mpSindainStation: "Sindain Station",
	0x11: "Palm Brinks",
	0x12: "Inside of Train",
	0x13: "Palm Brinks",
	0x14: "Palm Brinks",
	0x15: "Channel Reservoir",
	0x16: "Channel Entrance",
	0x17: "Inside of Locomotive",
	0x18: "Rainbow Falls",
	_mpJurakMall: "Jurak Mall",
	_mpStarlightTemple: "Starlight Temple",
	0x1b: "Cedric's Shop",
	0x1c: "Polly's Bakery",
	0x1d: "Rental Storehouse",
	0x1e: "Weapon Shop",
	0x1f: "Morton's Sundries",
	_mpForestTunnel: "Forest Tunnel",
	_mpFishContest: "Fishing Contest Grounds",
	_mpFishFrenzy: "Fishing Frenzy Races",
	_mpFishFrenzyRace: "Fishing Frenzy Race Course",
	_mpLunaLab: "Luna Lab",
	0x56: "Repair Shop",
	_mpLinHouse: "Lin's House",
	_mpGundoradaWorkshop: "Gundorada Workshop",
	_mpOperationsRoom: "Operations Room",
	0x67: "Kazarov Stonehenge",
	0x69: "Paznos (Bridge)",
	_mpLab1: "Lab 1",		
	0x72: "Lab 4",
	0x8d: "Lab 2",
	0x8e: "Lab 3",
}

_dictFloor = {
	//--Underground Channel--
	_dUChannel: {
		_fOutsideWorld: "To the Outside World",
		_fBattleRats: "Battle with Rats",
		_fGhostChannel: "Ghost in the Channel",
		_fChanPumpRoom: "Channel Pump Room",
		_fStevesBattle: "Steve's Battle",
		_fSTreasureChest: "Sweet, Scary Treasure Chest",
		_fChanReservoir: "Channel Reservoir",
		_fChannelExit: "Channel Exit",
		_fRaybrandtCastle: "Raybrandt Castle",
		_fCircusTent: "Circus Tent"
		},
	//--Rainbow Butterfly Wood
	_dRBWoods: {
		_fFrightForest: "Fight Forest",
		_fStrangeTree: "Strange Tree",
		_fRollingShells: "Rolling Shells",
		_fGreatFishSwamps: "Great Fish Swamps",
		_fThisIsGeostone: "This is a Geostone?",
		_fNoiseInForest: "Noise in the Forest",
		_fImPixie: "I'm a Pixie",
		_fLegendKillSnake: "Legendary Killer Snake",
		_fLookingEarthGem: "Looking for the Earth Gem",
		_fSomethingRareHere: "Something Rare Here!",
		_fScaryTree: "Scary Tree",
		_fChamberSleepEarthGem: "Chamber of the Sleeping Earth Gem",
		_fGrotSpiderLady: "Grotesque Spider Lady",
		_fRainbowFallsEntrance: "Rainbow Falls Entrance",
		_fRainbowFalls: "Rainbow Falls"		
	},
	_dSCanyon: {
		_fHeadlongDash: "Headlong Dash",
		_fFireIceMix: "Fire and Ice Don't Mix",
		_fEarthShakingDemon: "Earth-Shaking Demon",
		_fPowerfulYoYoRobot: "Powerful Yo-Yo Robot",
		_fElephantArmyValley: "Elephant Army in Valley",
		_fWarriorStarCanyon: "Warrior in Starlight Canyon",
		_fSmilingFairyVillage: "Smiling Fairy Village",
		_fDangerousTreasureChest: "Dangerous Treasure Chest",
		_fLittleDragonCounter: "Little Dragon Counterattack",
		_fBargasValley: "Barga's Valley",
		_fCursedMask: "Cursed Mask",
		_fWeRolyPolyBrothers: "We're the Roly-Poly Brothers",
		_fDragonSlayer: "Dragon Slayer",
		_fYordasValley: "Yorda's Valley",
		_fRamaPriestsLikeCheese: "Rama Priests Like Cheese",
		_fNaturesThreat: "Nature's Threat",
		_fMoonBaron: "Moon Baron",
		_fLighthouseAppears: "Lighthouse Appears",
		_fLighthouseCape: "Lighthouse on the Cape",
		_fLookingWindGem: "Looking for the Wind Gem",
		_fEvilSpiritValley: "Evil Spirit in the Valley",
		_fBraveWarriorsValley: "Brave Warriors in the Valley",
		_fChamberDefendingWindGem: "Chamber of the Defending Wind Gem"
	},
	_dORCave: {
		_fPirates: "Pirates!",
		_fTonsFish: "Tons of Fish",
		_fTankBoss: "Tank and Boss",
		_fWaterMonster: "Water Monster",
		_fScaryAuntieMedusa: "Scary Auntie Medusa",
		_fSandMolers: "Sand Molers",
		_fBatDen: "Bat Den",
		_fPiratesHideout: "Pirates' Hideout",
		_fCaveAncientMurals: "Cave of Ancient Murals",
		_fWanderingZappy: "Wandering Zappy",
		_fBanquetDead: "Banquet of the Dead",
		_fImprovements: "Improvements",
		_fReturnSerpent: "Return of the Serpent",
		_fCursedSea: "Cursed Sea",
		_fSeaAtrocity: "Sea of Atrocity",
		_fShiguraVillage: "Shigura Village",
		_fLookingWaterGem: "Looking Water Gem",
		_fPiratesRevenge: "Pirates' Revenge",
		_fDeathOcean: "Death Ocean",
		_fChamberSleepingWaterGem: "Chamber of the Sleeping Water Gem"
	},
	_dMGundore: {
		_fBattleGriffonArmy: "Nattle with Griffon's Army",
		_fMtGundorWind: "Mt. Gundor Wind",
		_fLittleDragonsMountain: "Little Dragons on the Mountain",
		_fSteamGoyone: "Steam Goyone",
		_fMountainBaddieAppears: "Mountain Baddie Appears",
		_fMagmanoff: "Magmanoff",
		_fDangerZone: "Danger Zone",
		_fSecretFireMountain: "Secret of Fire Mountain",
		_fDeathtrap: "Deathtrap",
		_fDesperationMountain: "Desperation on the Mountain",
		_fPainsNeck: "Pains in the Neck",
		_fMountGundorPeak: "Mount Gundor Peak",
		_fWalkingPathFlames: "Walking the Path of Flames",
		_fBurningUndead: "Burning Undead",
		_fFireDragon: "Fire Dragon",
		_fTreasureChestDangerZone: "Treasure Chest Danger Zone",
		_fRoadRiverFlames: "Road to the River of Flames",
		_fMountGundorMouth: "Mount Gundor Mouth",
		_fLookingFireGem: "Looking for the Fire Gem",
		_fExplosiveHotSpring: "Explosive Hot Spring",
		_fCrazyMountain: "Crazy Mountain",
		_fChamberBlazingFireGem: "Chamber of the Blazing Fire Gem"
	},
	_dMFPalace: {
		_fAncientWind : "Ancient Wind",
		_fCardWarriorsGather : "Card Warriors Gather",
		_fDangerousTreasure : "Dangerous Treasure",
		_fZombieZone : "Zombie Zone",
		_fFeelingOutofPlace : "Feeling Out of Place",
		_fLivingStatue : "Living Statue",
		_fDangerZoneM : "Danger Zone",
		_fScaryWomen : "Scary Women",
		_fHellElephant : "Hell Elephant",
		_fCrushtheUndead : "Crush the Undead",
		_fGarden : "Garden",
		_fMissingGemDealer : "Missing Gem Dealer",
		_fMaxLongestDay : "Max's Longest Day",
		_fHellCorridor : "Hell's Corridor",
		_fMonicaAllAlone : "Monica All Alone",
		_fRagingSpirits : "Raging Spirits",
		_fLonelyMachine : "Lonely Machine",
		_fNobility : "Nobility",
		_fPalaceWatchdog : "Palace Watchdog",
		_fRoadtoMemories : "Road to Memories",
		_fAlexandraRoom : "Alexandra's Room",
		_fFinalTrumpCard : "Final Trump Card",
		_fElementalParty : "Elemental Party",
		_fWarnderingKnightSoul : "Warndering Knight's Soul",
		_fBewareCarelessness : "Beware Carelessness",
		_fFinalBattle : "Final Battle",
		_fSunChamber : "Sun Chamber"
	},
	_dZMine: {
		_fGetZelmite: "Get the Zelmite!",
		_fMoonMole: "Moon Mole",
		_fPowerfulFrog: "Powerful Frog",
		_fEvilBatInvasion: "Evil Bat Invasion",
		_fMinersBreakroom: "Miners' Breakroom",
		_fCrossroadsDestiny: "Crossroads of Destiny",
		_fScaryFace: "Scary Face",
		_fPowerfulWildBoar: "Powerful Wild Boar",
		_fMurderousTank: "Murderous Tank",
		_fDeadEnd1: "Dead End 1",
		_fWhichOne: "Which One?",
		_fOldWomanSawIt: "The Old Woman Saw It",
		_fGiantSnake: "A Giant Snake!",
		_fUndauntedSoldiers: "Undaunted Soldiers",
		_fHellWard1: "Hell, Ward 1",
		_fDeadEnd2: "Dead End 2",
		_fRoadTruth: "Road to Truth",
		_fCrossroads: "Crossroads",
		_fLostRoad: "Lost Road",
		_fIndecision: "Indecision",
		_fDeadEnd3: "Dead End 3",
		_fLittleDragonArmy: "Little Dragon Army",
		_fCaptainReturns: "Captain Returns",
		_fHellsTurningPoint: "Hell's Turning Point",
		_fMummyHeaven: "Mummy Heaven",
		_fDeadEnd4: "Dead End 4",
		_fSuspiciousOpening: "A Suspicious Opening",
		_fWard3Entrance: "Ward 3 Entrance",
		_fFlotsamBrokenArmy: "Flotsam's Broken Army",
		_fHellWard3WellsideGossip: "Hell, Ward 3-Wellside Gossip",
		_fDevilElemental: "Devil Elemental",
		_fMariner: "Mariner",
		_fUltimateSnake: "Ultimate Snake",
		_fOmen: "Omen",
		_fAnxiety: "Anxiety",
		_fFirmBelieve: "Firm Believe",
		_fSleepingLight: "Sleeping Light",
		_fZelmiteMineDepths: "Zelmite Mine Depths",
	}
}

_dictDungeon = {
	_dUChannel: "Underground Channel",
	_dRBWoods: "Rainbow Butterfly Wood",
	_dSCanyon: "Starlight Canyon",
	_dORCave: "Ocean's Roar Cave",
	_dMGundore: "Mount Gundore",
	_dMFPalace: "Moon Flower Palace",
	_dZMine: "Zelmite Mine",
}

_dictFloorMedals = {
	//--Underground Channel--
	_dUChannel: {
		_fOutsideWorld: 3,
		_fBattleRats: 3,
		_fGhostChannel: 3,
		_fChanPumpRoom: 0,
		_fStevesBattle: 3,
		_fSTreasureChest: 3,
		_fChanReservoir: 0,
		_fChannelExit: 0
		},
	//--Rainbow Butterfly Wood
	_dRBWoods: {
		_fFrightForest: 4,
		_fStrangeTree: 4,
		_fRollingShells: 4,
		_fGreatFishSwamps: 4,
		_fThisIsGeostone: 4,
		_fNoiseInForest: 4,
		_fImPixie: 4,
		_fLegendKillSnake: 4,
		_fLookingEarthGem: 4,
		_fSomethingRareHere: 3,
		_fScaryTree: 4,
		_fChamberSleepEarthGem: 0,
		_fGrotSpiderLady: 4,
		_fRainbowFallsEntrance: 4,
		_fRainbowFalls: 0		
	},
	_dSCanyon: {
		_fHeadlongDash: 3,
		_fFireIceMix: 3,
		_fEarthShakingDemon: 3,
		_fPowerfulYoYoRobot: 3,
		_fElephantArmyValley: 3,
		_fWarriorStarCanyon: 3,
		_fSmilingFairyVillage: 3,
		_fDangerousTreasureChest: 3,
		_fLittleDragonCounter: 3,
		_fBargasValley: 0,
		_fCursedMask: 3,
		_fWeRolyPolyBrothers: 3,
		_fDragonSlayer: 3,
		_fYordasValley: 0,
		_fRamaPriestsLikeCheese: 3,
		_fNaturesThreat: 4,
		_fMoonBaron: 4,
		_fLighthouseAppears: 4,
		_fLighthouseCape: 0,
		_fLookingWindGem: 3,
		_fEvilSpiritValley: 3,
		_fBraveWarriorsValley: 3,
		_fChamberDefendingWindGem: 0
	},
	_dORCave: {
		_fPirates: 3,
		_fTonsFish: 3,
		_fTankBoss: 3,
		_fWaterMonster: 3,
		_fScaryAuntieMedusa: 3,
		_fSandMolers: 3,
		_fBatDen: 3,
		_fPiratesHideout: 3,
		_fCaveAncientMurals: 0,
		_fWanderingZappy: 3,
		_fBanquetDead: 3,
		_fImprovements: 3,
		_fReturnSerpent: 3,
		_fCursedSea: 3,
		_fSeaAtrocity: 3,
		_fShiguraVillage: 0,
		_fLookingWaterGem: 3,
		_fPiratesRevenge: 3,
		_fDeathOcean: 3,
		_fChamberSleepingWaterGem: 0
	},
	_dMGundore: {
		_fBattleGriffonArmy: 3,
		_fMtGundorWind: 3,
		_fLittleDragonsMountain: 3,
		_fSteamGoyone: 3,
		_fMountainBaddieAppears: 3,
		_fMagmanoff: 3,
		_fDangerZone: 3,
		_fSecretFireMountain: 3,
		_fDeathtrap: 3,
		_fDesperationMountain: 3,
		_fPainsNeck: 3,
		_fMountGundorPeak: 0,
		_fWalkingPathFlames: 3,
		_fBurningUndead: 3,
		_fFireDragon: 3,
		_fTreasureChestDangerZone: 3,
		_fRoadRiverFlames: 3,
		_fMountGundorMouth: 0,
		_fLookingFireGem: 3,
		_fExplosiveHotSpring: 3,
		_fCrazyMountain: 3,
		_fChamberBlazingFireGem: 0
	},
	_dMFPalace: {
		_fAncientWind: 3,
		_fCardWarriorsGather: 3,
		_fDangerousTreasure: 3,
		_fZombieZone: 3,
		_fFeelingOutofPlace: 3,
		_fLivingStatue: 3,
		_fDangerZoneM: 3,
		_fScaryWomen: 3,
		_fHellElephant: 3,
		_fCrushtheUndead: 3,
		_fGarden: 0,
		_fMissingGemDealer: 3,
		_fMaxLongestDay: 3,
		_fHellCorridor: 3,
		_fMonicaAllAlone: 3,
		_fRagingSpirits: 3,
		_fLonelyMachine: 3,
		_fNobility: 3,
		_fPalaceWatchdog: 3,
		_fRoadtoMemories: 3,
		_fAlexandraRoom: 0,
		_fFinalTrumpCard: 3,
		_fElementalParty: 3,
		_fWarnderingKnightSoul: 3,
		_fBewareCarelessness: 3,
		_fFinalBattle: 3,
		_fSunChamber: 0,
	},
	_dZMine: {
		_fGetZelmite: 3,
		_fMoonMole: 3,
		_fPowerfulFrog: 3,
		_fEvilBatInvasion: 3,
		_fMinersBreakroom: 0,
		_fCrossroadsDestiny: 3,
		_fScaryFace: 3,
		_fPowerfulWildBoar: 3,
		_fMurderousTank: 3,
		_fDeadEnd1: 0,
		_fWhichOne: 3,
		_fOldWomanSawIt: 3,
		_fGiantSnake: 3,
		_fUndauntedSoldiers: 3,
		_fHellWard1: 3,
		_fDeadEnd2: 0,
		_fRoadTruth: 3,
		_fCrossroads: 3,
		_fLostRoad: 3,
		_fIndecision: 3,
		_fDeadEnd3: 0,
		_fLittleDragonArmy: 3,
		_fCaptainReturns: 3,
		_fHellsTurningPoint: 3,
		_fMummyHeaven: 3,
		_fDeadEnd4: 0,
		_fSuspiciousOpening: 3,
		_fWard3Entrance: 3,
		_fFlotsamBrokenArmy: 3,
		_fHellWard3WellsideGossip: 3,
		_fDevilElemental: 3,
		_fMariner: 3,
		_fUltimateSnake: 3,
		_fOmen: 3,
		_fAnxiety: 3,
		_fFirmBelieve: 3,
		_fSleepingLight: 3,
		_fZelmiteMineDepths: 0
	}
}

_dictFloorLevelCap = {
	//--Underground Channel--
	_dUChannel: {
		_fOutsideWorld: 12,
		_fBattleRats: 12,
		_fGhostChannel: 12,
		_fChanPumpRoom: 12,
		_fStevesBattle: 12,
		_fSTreasureChest: 12		
		},
	//--Rainbow Butterfly Wood
	_dRBWoods: {
		_fFrightForest: 24,
		_fStrangeTree: 24,
		_fRollingShells: 24,
		_fGreatFishSwamps: 24,
		_fThisIsGeostone: 24,
		_fNoiseInForest: 24,
		_fImPixie: 24,
		_fLegendKillSnake: 24,
		_fLookingEarthGem: 72,
		_fSomethingRareHere: 72,
		_fScaryTree: 72,		
		_fGrotSpiderLady: 24,
		_fRainbowFallsEntrance: 24				
	},
	_dSCanyon: {
		_fHeadlongDash: 32,
		_fFireIceMix: 32,
		_fEarthShakingDemon: 32,
		_fPowerfulYoYoRobot: 32,
		_fElephantArmyValley: 32,
		_fWarriorStarCanyon: 32,
		_fSmilingFairyVillage: 32,
		_fDangerousTreasureChest: 32,
		_fLittleDragonCounter: 32,
		_fCursedMask: 32,
		_fWeRolyPolyBrothers: 32,
		_fDragonSlayer: 32,
		_fRamaPriestsLikeCheese: 32,
		_fNaturesThreat: 32,
		_fMoonBaron: 32,
		_fLighthouseAppears: 32,
		_fLookingWindGem: 72,
		_fEvilSpiritValley: 72,
		_fBraveWarriorsValley: 72		
	},
	_dORCave: {
		_fPirates: 48,
		_fTonsFish: 48,
		_fTankBoss: 48,
		_fWaterMonster: 48,
		_fScaryAuntieMedusa: 48,
		_fSandMolers: 48,
		_fBatDen: 48,
		_fPiratesHideout: 48,
		_fCaveAncientMurals: 48,
		_fWanderingZappy: 48,
		_fBanquetDead: 48,
		_fImprovements: 48,
		_fReturnSerpent: 48,
		_fCursedSea: 48,
		_fSeaAtrocity: 48,
		_fShiguraVillage: 48,
		_fLookingWaterGem: 72,
		_fPiratesRevenge: 72,
		_fDeathOcean: 72
	},
	_dMGundore: {
		_fBattleGriffonArmy: 60,
		_fMtGundorWind: 60,
		_fLittleDragonsMountain: 60,
		_fSteamGoyone: 60,
		_fMountainBaddieAppears: 60,
		_fMagmanoff: 60,
		_fDangerZone: 60,
		_fSecretFireMountain: 60,
		_fDeathtrap: 60,
		_fDesperationMountain: 60,
		_fPainsNeck: 60,
		_fWalkingPathFlames: 60,
		_fBurningUndead: 60,
		_fFireDragon: 60,
		_fTreasureChestDangerZone: 60,
		_fRoadRiverFlames: 60,
		_fLookingFireGem: 72,
		_fExplosiveHotSpring: 72,
		_fCrazyMountain: 72
	},
	_dMFPalace: {
		_fAncientWind: 84,
		_fCardWarriorsGather: 84,
		_fDangerousTreasure: 84,
		_fZombieZone: 84,
		_fFeelingOutofPlace: 84,
		_fLivingStatue: 84,
		_fDangerZoneM: 84,
		_fScaryWomen: 84,
		_fHellElephant: 84,
		_fCrushtheUndead: 84,		
		_fMissingGemDealer: 84,
		_fMaxLongestDay: 84,
		_fHellCorridor: 84,
		_fMonicaAllAlone: 84,
		_fRagingSpirits: 84,
		_fLonelyMachine: 84,
		_fNobility: 84,
		_fPalaceWatchdog: 84,
		_fRoadtoMemories: 84,
		_fFinalTrumpCard: 84,
		_fElementalParty: 84,
		_fWarnderingKnightSoul: 84,
		_fBewareCarelessness: 84,
		_fFinalBattle: 84		
	}
}

_dictDunFloorList = {
	_dUChannel: [_fOutsideWorld, _fBattleRats, _fGhostChannel,
				_fStevesBattle, _fSTreasureChest],
	_dRBWoods: [_fFrightForest, _fStrangeTree, _fRollingShells, 
				_fThisIsGeostone, _fNoiseInForest, _fImPixie, _fLegendKillSnake, 
				_fLookingEarthGem, _fSomethingRareHere, _fScaryTree, _fGrotSpiderLady,
				_fRainbowFallsEntrance],
	_dSCanyon: [_fHeadlongDash, _fFireIceMix, _fEarthShakingDemon, _fPowerfulYoYoRobot,
				_fElephantArmyValley, _fWarriorStarCanyon, _fSmilingFairyVillage,
				_fDangerousTreasureChest, _fLittleDragonCounter, _fCursedMask, _fWeRolyPolyBrothers, 
				_fDragonSlayer, _fRamaPriestsLikeCheese, _fNaturesThreat, _fMoonBaron, 
				_fLighthouseAppears, _fLookingWindGem, _fEvilSpiritValley, _fBraveWarriorsValley],
	_dORCave: [_fPirates, _fTonsFish, _fTankBoss, _fWaterMonster, _fScaryAuntieMedusa,
				_fSandMolers, _fBatDen, _fPiratesHideout, _fWanderingZappy, 
				_fBanquetDead, _fImprovements, _fReturnSerpent, _fCursedSea,
				_fSeaAtrocity, _fLookingWaterGem, _fPiratesRevenge, _fDeathOcean,
				_fChamberSleepingWaterGem],
	_dMGundore: [_fBattleGriffonArmy, _fMtGundorWind, _fLittleDragonsMountain,
				_fSteamGoyone, _fMountainBaddieAppears, _fMagmanoff, _fDangerZone,
				_fSecretFireMountain, _fDeathtrap, _fDesperationMountain, _fPainsNeck,
				_fWalkingPathFlames, _fBurningUndead, _fFireDragon, _fTreasureChestDangerZone, 
				_fRoadRiverFlames, _fLookingFireGem, _fExplosiveHotSpring, _fCrazyMountain],
	_dMFPalace: [_fAncientWind, _fCardWarriorsGather, _fDangerousTreasure, _fZombieZone, 
				_fFeelingOutofPlace, _fLivingStatue, _fDangerZoneM, _fScaryWomen, _fHellElephant, 
				_fCrushtheUndead, _fMissingGemDealer, _fMaxLongestDay, _fHellCorridor, _fMonicaAllAlone, 
				_fRagingSpirits, _fLonelyMachine, _fNobility, _fPalaceWatchdog, _fRoadtoMemories, 
				_fFinalTrumpCard, _fElementalParty, _fWarnderingKnightSoul, _fBewareCarelessness, 
				_fFinalBattle],
	_dZMine: [_fGetZelmite, _fMoonMole, _fPowerfulFrog, _fEvilBatInvasion,
			_fCrossroadsDestiny, _fScaryFace, _fPowerfulWildBoar, _fMurderousTank,
			_fWhichOne, _fOldWomanSawIt, _fGiantSnake, _fUndauntedSoldiers,
			_fHellWard1, _fRoadTruth, _fCrossroads, _fLostRoad, _fIndecision,
			_fLittleDragonArmy, _fCaptainReturns, _fHellsTurningPoint, 
			_fMummyHeaven, _fWard3Entrance, _fFlotsamBrokenArmy, _fHellWard3WellsideGossip, 
			_fDevilElemental, _fMariner, _fUltimateSnake, _fOmen, _fAnxiety, _fFirmBelieve, 
			_fSleepingLight]		
}

_dictMimicList = [_mMimicUC, _mKingMimicUC, _mMimicRBW, _mMimicRBWs,
				_mKingMimicRBW, _mKingMimicRBWs, _mMimicSC, _mMimicSCs,
				_mKingMimicSC, _mKingMimicSCs, _mMimicORC, _mMimicORCs,
				_mKingMimicORC, _mKingMimicORCs, _mMimicMG, _mMimicMGS,
				_mKingMimicMG, _mKingMimicMGS, _mMimicMFP, _mKingMimicMFP,
				_mMimicZM, _mMimicZMd, _mKingMimicZM, _mKingMimicZMd]

_dictDunMonsterList = {
	_dUChannel: [_mSewerRat, _mVanguard, _mFroggy, _mBaronBalloon,
				_mFlotsamBalloon, _mTurtle, _mClown, _mLinda, 
				_mNightStalker, _mDarkness, _mBat],
	_dRBWoods: [_mTore, _mMadTore, _mKotore, _mDorone, _mHunterFox, 
				_mTortoise, _mPixie, _mSylph, _mHimarra, _mGyumo,
				_mSpiderLady, _mFireElement, _mIceElement, _mSpiritFlyer,
				_mPumpkinhead, _mZucky, _mManEatingGrass, _mCursedRose,
				_mMoler, _mKillerSnake, _mSkeletonSoldier, _mFaceOfPajna,
				_mSonicBomber],
	_dSCanyon: [_mElfas, _mBalalla, _mBlumo, _mDragon, _mMemoEater, 
				_mThunderSpirit, _mWaterSpirit, _mWindElement, 
				_mMaskedTribesman, _mMummy, _mFireGemron, _mIceGemrom,
				_mThunderGemron, _mWindGemron, _mHolyGemron, _mNikapous,
				_mIronMask, _mDogStatue, _mIvanoff, _mGolem, _mSmilingFairy,
				_mHeatFairy, _mCrescentBaron, _mPriestOfRama, _mSleeber,
				_mYoYoBarrel],
	_dORCave: [_mBeachRat, _mNeoVanguard, _mGeron, _mSeaTortoise, 
				_mStarTortoise, _mFintol, _mArkerath, _mRagstink,
				_mShiva, _mZappy, _mAquaElement, _mSandMoler, _mSeaSerpent,
				_mGoyone, _mAuntieMedusa, _mFatNaga, _mCoralDog, _mStatue,
				_mHornhead, _mMasterJacket, _mCaptain, _mBlackbeard, 
				_mCorsair, _mZombiePirate, _mSooty, _mPirateTank, _mPirateEye,
				_mMetalBomber, _mSeaBat],
	_dMGundore: [_mSteamTore, _mSteamKotore, _mRedFox, _mRifleWolf, 
				_mGriffonSoldier, _mChimera, _mRedDragon, _mBurger, 
				_mFireSpirit, _mIceSpirit, _mLavaRunner, _mFireGundron,
				_mIceGundron, _mThunderGundron, _mWindGundron, _mHolyGundron,
				_mSavageRam, _mSteamGoyone, _mMagmaoff, _mLivingArmor,
				_mLavaGolem, _mBoneLord, _mFlamingNail, _mHeatWear,
				_mAlexander, _mStickJoe, _mArthur, _mBomberHead, _mTripleCracker,
				_mUltrasonicBomb, _mRollingRocks, _mLavaBat],
	_dMFPalace: [_mCastleEater, _mVanguardMk2, _mCountBalloon, _mEvilPerformer,
				_mLeogriff, _mMoonflowerphant, _mLeach, _mEarthDragon, _mStormy,
				_mThunderGhost, _mRainGhost, _mStormGhost, _mBundy, _mFireDrake,
				_mIceDrake, _mMoonGoyone, _mMissGourgon, _mToyRoc, _mGuardia,
				_mRockTaster, _mEvilNail, _mSilverGear, _mSkullChief, _mMoonJoe,
				_mCrownPriest, _mLancer, _mClub, _mSClub, _mHeart, _mSHeart, 
				_mSpade, _mSSpade, _mDiamond, _mSDiamond, _mJoker, _mSJoker,
				_mClockKnight],
	_dZMine: [_mDеathMouse, _mNailBurst, _mGamal, _mPutos, _mGreatTree,
				_mSmallTree, _mSmilingWolf, _mDukeBalloon, _mEbonyTortoise,
				_mBolter, _mDarkAlchemist, _mSphinx, _mFaerie, _mImp,
				_mBehemont, _mStormflower, _mMandora, _mCabuble, _mMinotaurus,
				_mWraith, _mTiamat, _mLadha, _mSpiderLady2, _mBambamchoo,
				_mFireGhost, _mMagmaServant, _mSnowGhost, _mSnowServant, 
				_mThunderServant, _mTempestServant, _mWindServant, _mStoneGuard,
				_mLastGuardian, _mMallone, _mScarecrow, _mGhoul, _mRevenant, 
				_mDarkFlower, _mMysteryPlant, _mFireWyrm, _mIceWyrm, 
				_mThunderDrake, _mThunderWyrm, _mWindDrake, _mWindWyrm, 
				_mHolyDrake, _mHolyWyrm, _mUmmagumma, _mIncuder, _mBandou, 
				_mMineMoler, _mBusyMoler, _mSandDragon, _mDeadRope, _mMariner,
				_mCerberus, _mRockFace, _mIwanosuke, _mDarkKeeper, _mTitan,
				_mBoneKing, _mPlatinumGear, _mRareJacket, _mWhitebeard, 
				_mOyakata, _mOreRobber, _mEliteCorsair, _mFaceOfYaksa,
				_mDemonPuppet, _mFairyHelper, _mHellFairy, _mMoonlightHulk,
				_mDarker, _mShadow, _mGaruda, _mIronSpear, _mFlyingSteel, 
				_mAngryCanon, _mIronGhost, _mDangerBomb, _mSweetDynamite, 
				_mRClub, _mRSFClub, _mRHeart, _mRSFHeart, _mRSpade, _mRSFSpade,
				_mRDiamond, _mRFSDiamond, _mRJoker, _mRFSJoker, _mKrauMauness, 
				_mSpinningSaucer, _mEvilBat]
}

function dictDunFloorList(dun, dict) {
	result = []
	for fl in dict[dun]
		array_push(result, [dun, fl])
	return result
}

_dictDunFloorGeostoneList = {
	_dRBWoods: [_fThisIsGeostone, _fNoiseInForest, _fImPixie, _fLegendKillSnake, 
				_fGrotSpiderLady, _fRainbowFallsEntrance, _fLookingEarthGem, _fScaryTree],
	_dSCanyon: [_fHeadlongDash, _fFireIceMix, _fEarthShakingDemon, _fPowerfulYoYoRobot,
				_fElephantArmyValley, _fWarriorStarCanyon, _fSmilingFairyVillage,
				_fDangerousTreasureChest, _fLittleDragonCounter, _fCursedMask, _fWeRolyPolyBrothers, _fDragonSlayer, _fRamaPriestsLikeCheese,
				_fNaturesThreat, _fMoonBaron, _fLighthouseAppears, _fEvilSpiritValley, _fBraveWarriorsValley],
	_dORCave: [_fPirates, _fTonsFish, _fTankBoss, _fWaterMonster, _fScaryAuntieMedusa,
				_fSandMolers, _fBatDen, _fPiratesHideout, _fWanderingZappy, 
				_fBanquetDead, _fImprovements, _fReturnSerpent, _fCursedSea,
				_fSeaAtrocity],
	_dMGundore: [_fBattleGriffonArmy, _fMtGundorWind, _fLittleDragonsMountain,
				_fSteamGoyone, _fMountainBaddieAppears, _fMagmanoff, _fDangerZone,
				_fSecretFireMountain, _fDeathtrap, _fDesperationMountain, _fPainsNeck,
				_fWalkingPathFlames, _fBurningUndead, _fFireDragon, _fTreasureChestDangerZone, _fRoadRiverFlames],
	_dMFPalace: [_fAncientWind, _fCardWarriorsGather, _fDangerousTreasure, _fZombieZone, 
				_fFeelingOutofPlace, _fLivingStatue, _fDangerZoneM, _fScaryWomen, _fHellElephant, 
				_fCrushtheUndead, _fMissingGemDealer, _fMaxLongestDay, _fHellCorridor, _fMonicaAllAlone, 
				_fRagingSpirits, _fPalaceWatchdog, _fFinalTrumpCard]	
}


_dictDunFloorSphedaList = {
	_dUChannel: _dictDunFloorList[_dUChannel],
	_dRBWoods: _dictDunFloorList[_dRBWoods],
	_dSCanyon: _dictDunFloorList[_dSCanyon],
	_dORCave: [	_fSandMolers, _fBatDen, _fPiratesHideout, _fWanderingZappy, 
				_fBanquetDead, _fImprovements, _fLookingWaterGem, _fPiratesRevenge, _fDeathOcean],
	_dMGundore: _dictDunFloorList[_dMGundore],
	_dMFPalace: _dictDunFloorList[_dMFPalace],
	_dZMine: _dictDunFloorList[_dZMine]
}

_dictDunFloorAddress = {
	_dUChannel: 0x01e1ddc8,
	_dRBWoods: 0x01e1ddcc,
	_dSCanyon: 0x01e1ddd0,
	_dORCave: 0x01e1ddd4,
	_dMGundore: 0x01e1ddd8,
	_dMFPalace: 0x01e1dddc,
	_dZMine: 0x01e1dde0
}

_dictDunFloorFirstAddress = {
	_dUChannel: 0x01e1de22,
	_dRBWoods: 0x01e1ded6,
	_dSCanyon: 0x01e1e016,
	_dORCave: 0x01e1e20a,
	_dMGundore: 0x01e1e3ae,
	_dMFPalace: 0x01e1e57a,
	_dZMine: 0x01e1e7be
}

_dictCP = {
	_mpSindain: 0x01e03438,
	_mpBalanceValley: 0x01e08948,
	_mpVeniccio: 0x01e0de58,
	_mpHeimRada: 0x01e13368
}

_dictGeoramaChecks = {
	_mpSindain: [0x01e08484, 0x01e08485, 0x01e08486, 0x01e08487, 0x01e08488,
				0x01e08489, 0x01e0848a, 0x01e0848b, 0x01e0848c, 0x01e0848d,
				0x01e0848e, 0x01e0848f, 0x01e08490, 0x01e08491, 0x01e08493,
				0x01e08494, 0x01e08495],
	_mpBalanceValley: [0x01e0d994, 0x01e0d995, 0x01e0d996, 0x01e0d997, 0x01e0d998,
					0x01e0d999, 0x01e0d99a, 0x01e0d99b, 0x01e0d99c, 0x01e0d99d,
					0x01e0d99e, 0x01e0d99f, 0x01e0d9a0, 0x01e0d9a1, 0x01e0d9a2,
					0x01e0d9a3, 0x01e0d9a4, 0x01e0d9a5, 0x01e0d9a7],
	_mpVeniccio: [0x01e12ea4, 0x01e12ea5, 0x01e12ea6, 0x01e12ea7, 0x01e12ea8,
				0x01e12ea9, 0x01e12eaa, 0x01e12eab, 0x01e12eac, 0x01e12ead, 
				0x01e12eae, 0x01e12eaf, 0x01e12eb0, 0x01e12eb1, 0x01e12eb2,
				0x01e12eb3, 0x01e12eb4, 0x01e12eb5, 0x01e12eb6, 0x01e12eb7,
				0x01e12eb8, 0x01e12eb9],
	_mpHeimRada: [0x01e183b4, 0x01e183b5, 0x01e183b6, 0x01e183b7, 0x01e183b8,
			0x01e183b9, 0x01e183ba, 0x01e183bb, 0x01e183bc, 0x01e183bd, 
			0x01e183be, 0x01e183bf, 0x01e183c0, 0x01e183c1, 0x01e183c2, 
			0x01e183c3, 0x01e183c5, 0x01e183c6, 0x01e183c7, 0x01e183c8,
			0x01e183c9, 0x01e183ca, 0x01e183cc, 0x01e183cd],
	_mpMoonFlowerPalace: [0x01e1d8c4, 0x01e1d8c5, 0x01e1d8c6, 0x01e1d8c7, 
			0x01e1d8c8, 0x01e1d8c9, 0x01e1d8ca, 0x01e1d8cb, 0x01e1d8cc,
			0x01e1d8cd, 0x01e1d8ce, 0x01e1d8cf]
}

_dictGeoramaConditions = {
	_mpSindain: [0x01e084c4, 0x01e084c5, 0x01e084c6, 0x01e084c7, 0x01e084c8,
				0x01e084c9, 0x01e084ca, 0x01e084cb, 0x01e084cc, 0x01e084cd,
				0x01e084ce, 0x01e084cf, 0x01e084d0, 0x01e084d1, 0x01e084d3,
				0x01e084d4, 0x01e084d5],
	_mpBalanceValley: [0x01e0d9d4, 0x01e0d9d5, 0x01e0d9d6, 0x01e0d9d7, 0x01e0d9d8,
					0x01e0d9d9, 0x01e0d9da, 0x01e0d9db, 0x01e0d9dc, 0x01e0d9dd,
					0x01e0d9de, 0x01e0d9df, 0x01e0d9e0, 0x01e0d9e1, 0x01e0d9e2,
					0x01e0d9e3, 0x01e0d9e4, 0x01e0d9e5, 0x01e0d9e7],
	_mpVeniccio: [0x01e12ee4, 0x01e12ee5, 0x01e12ee6, 0x01e12ee7, 0x01e12ee8,
				0x01e12ee9, 0x01e12eea, 0x01e12eeb, 0x01e12eec, 0x01e12eed, 
				0x01e12eee, 0x01e12eef, 0x01e12ef0, 0x01e12ef1, 0x01e12ef2,
				0x01e12ef3, 0x01e12ef4, 0x01e12ef5, 0x01e12ef6, 0x01e12ef7,
				0x01e12ef8, 0x01e12ef9],
	_mpHeimRada: [0x01e183f4, 0x01e183f5, 0x01e183f6, 0x01e183f7, 0x01e183f8,
			0x01e183f9, 0x01e183fa, 0x01e183fb, 0x01e183fc, 0x01e183fd, 
			0x01e183fe, 0x01e183ff, 0x01e18400, 0x01e18401, 0x01e18402, 
			0x01e18403, 0x01e18405, 0x01e18406, 0x01e18407, 0x01e18408,
			0x01e18409, 0x01e1840a, 0x01e1840c, 0x01e1840d],
	_mpMoonFlowerPalace: []
}

//-						Reward			Map
_dictGeoramaRewards = {
	_mpSindain 		: [_imaxlJurakGun, _mpJurakMall],
	_mpBalanceValley: [_imonrSerpentSlicer, _mpStarlightTemple],
	_mpVeniccio 	: [_ivNovaCannon, _mpLab1],
	_mpHeimRada 	: [_imonrHolyDaedalusBlade, _mpOperationsRoom],
	_mpMoonFlowerPalace: [_itMoonStone, _mpMoonFlowerPalace]
}

_dictFishName = {
	_itPriscleen: "Priscleen",
	_itBobo: "Bobo",
	_itGobbler: "Gobbler",
	_itNonky: "Nonky",
	_itKaji: "Kaji",
	_itBakuBaku: "Baku Baku",
	_itMadamGarayan: "Mardan Garayan",
	_itGummy: "Gummy",
	_itNiler: "Niler",
	_itUmadakara: "Umadakara",	
	_itTarton: "Tarton",
	_itPiccoly: "Piccoly",
	_itBon: "Bon",
	_itHamaHama: "Hamma Hamma",
	_itNegie: "Negie",
	_itDen: "Den",
	_itHeela: "Heela",
	_itBaronGarayan: "Baron Garayan"
}

//- function Items()

_dictItems = {
	//-Wrenches
	_imaxrBattleWrench: "Battle Wrench",
	_imaxrDrillWrench: "Drill Wrench",
	_imaxrSmashWrench : "Smash Wrench",
	_imaxrStingerWrench : "Stinger Wrench",
	_imaxrPoisonWrench : "Poison Wrench",
	_imaxrCubicHammer : "Cubic Hammer",
	_imaxrDigiHammer : "Digi Hammer",
	_imaxrHeavyHammer : "Heavy Hammer",
	_imaxrTurtleShellHammer : "Turtle Shell Hammer",
	_imaxrBigBucksHammer : "Big Bucks Hammer",
	_imaxrFrozenTuna : "Frozen Tuna",
	_imaxrKuberaHand : "Kubera Hand",
	_imaxrSigmaBreaker : "Sigma Breaker",
	_imaxrGradeZero : "Grade Zero",
	_imaxrLegend : "Legend",
	_imaxrTrueBattleWrench: "True Battle Wrench",
	//-Spheda
	_isHandyStick : "Handy Stick",
	_isTurkey : "Turkey",
	_isSwan : "Swan",
	_isFlamingo : "Flamingo",
	_isFalcon : "Falcon",
	_isAlbatross : "Albatross",
	//-Guns
	_imaxlClassicGun: "Classic Gun",
	_imaxlDryerGun: "Dryer Gun",
	_imaxlTrumpetGun: "Trumpet Gun",
	_imaxlBellTrigger: "Bell Trigger",
	_imaxlMagicGun: "Magic Gun",
	_imaxlSoulBreaker: "Soul Breaker",
	_imaxlGrenadeLauncher: "Grenade Launcher",
	_imaxlDarkViper: "Dark Viper",
	_imaxlTwinBuster: "Twin Buster",
	_imaxlJurakGun: "Jurak Gun",
	_imaxlQuestionShooter: "Question Shooter",
	_imaxlStealGun: "StealGun",
	_imaxlSupernova: "Supernova",
	_imaxlStarBreaker: "Star Breaker",
	_imaxlWildCat: "Wild Cat",
	_imaxlSexyPanther: "Sexy Panther",
	_imaxlDesperado: "Desperado",
	_imaxlSigmaBazooka: "SigmaBazooka",
	_imaxlLastResort: "Last Resort",
	//-Swords
	_imonrLongSword: "Long Sword",
	_imonrBroadSword: "Broad Sword",
	_imonrBaselard: "Baselard",
	_imonrGladius: "Gladius",
	_imonrWiseOwlSword: "Wise Owl Sword",
	_imonrCliffKnife: "CliffKnife",
	_imonrAntiqueSword: "Antique Sword",
	_imonrBastardSword: "Bastard Sword",
	_imonrKitchenKnife: "Kitchen Knife",
	_imonrTsukikage: "Tsukikage",
	_imonrSunSword: "Sun Sword",
	_imonrSerpentSlicer: "Serpent Slicer",
	_imonrShamshir: "Shamshir",
	_imonrAmaNoMurakumo: "Ama No Murakumo",
	_imonrLambsSword: "Lamb's Sword",
	_imonrDarkCloud: "Dark Cloud",
	_imonrBraveArk: "Brave Ark",
	_imonrBigBang: "Big Bang",
	_imonrAtlamilliaSword: "Atlamillia Sword",
	_imonrMardanSword: "Mardan Sword",
	_imonrGarayanSword: "Garayan Sword",
	_imonrMardanGarayan: "Mardan Garayan",
	_imonrRulersSword: "Ruler's Sword",
	_imonrEvilcise: "Evilcise",
	_imonrSmallSword: "Small Sword",
	_imonrSandBreaker: "Sand Breaker",
	_imonrDrainSeeker: "Drain Seeker",
	_imonrChopper: "Chopper",
	_imonrChoora: "Choora",
	_imonrClaymore: "Claymore",
	_imonrManeater: "Maneater",
	_imonrBoneRapier: "BoneRapier",
	_imonrSax: "Sax",
	_imonr7BranchSword: "7 Branch Sword",
	_imonrDusack: "Dusack",
	_imonrCrossHeinder: "Cross Heinder",
	_imonr7thHeaven: "7th Heaven",
	_imonrSwordOfZeus: "Sword Of Zeus",
	_imonrChronicleSword: "Chronicle Sword",
	_imonrChronicle2: "Chronicle 2",
	_imonrHolyDaedalusBlade: "Holy Daedalus Blade",
	_imonrMuramasa: "Muramasa",
	_imonrDarkExcalibur: "Dark Excalibur",
	_imonrSargatanas: "Sargatanas",
	_imonrHalloweenBlade: "Halloween Blade",
	_imonrShiningBravado: "Shining Bravado",
	_imonrIslandKing: "Island King",
	_imonrGriffonFork: "Griffon Fork",
	_imonlRoyalSword: "Royal Sword",
	//-Armlets
	_imonlMagicBrassard: "Magic Brassard",
	_imonlGoldBrassard: "Gold Brassard",
	_imonlBanditBrassard: "Bandit Brassard",
	_imonlCrystalBrassard: "Crystal Brassard",
	_imonlPlatinumBrassard: "Platinum Brassard",
	_imonlGoddessBrassard: "Goddess Brassard",
	_imonlSpiritBrassard: "Spirit Brassard",
	_imonlDestructionBrassard: "DestructionBrassard",
	_imonlSatanBrassard: "Satan Brassard",
	_imonlAthenasBrassard: "Athenas Brassard",
	_imonlMobiusBangle: "Mobius Bangle",
	_imonlAngelShooter: "Angel Shooter",
	_imonlPocklekul: "Pocklekul",
	_imonlThornArmlet: "Thorn Armlet",
	_imonlStarArmlet: "Star Armlet",
	_imonlMoonArmlet: "Moon Armlet",
	_imonlSunArmlet: "SunArmlet",
	_imonlFiveStarArmlet: "Five Star Armlet",
	_imonlLove: "Love",
	//-Fishing Rods
	_itFishingRod: "Fishing Rod",
	_ivLureRod: "Lure Rod",
	//-Powerups
	_itFruitEden: "Fruit of Eden",
	_itPotatoPie: "Potato Pie",
	_itWitchParfait: "Witch Parfait",
	//-Ridepod Parts
	_ivCannonballArm: "Cannonball Arm",
	_ivClownHand: "Clown Hand",
	_ivSamuraiArm: "Samurai Arm",
	_ivHammerArm: "Hammer Arm",
	_ivDrillArm: "Drill Arm",
	_ivBarrelCannon: "Barrel Cannon",
	_ivMachineGunArm: "Machine Gun Arm",
	_ivMissilePodArm: "Missile Pod Arm",
	_ivNovaCannon: "Nova Cannon",
	_ivLaserArm: "Laser Arm",
	_ivSunandMoonArmour: "Sun & Moon Armor",
	_ivJetHover: "Jet Hover",
	_ivEnergyPackBarrel: "Energy Pack (Barrel)",
	_ivBucketPack: "Bucket Pack",
	_ivCleanerPack: "Cleaner Pack",
	_ivEnergyPackUrn: "Energy Pack (Urn)",
	_ivTripleUrnPack: "Triple Urn Pack",
	_ivSamuraiBody: "Samurai Body",
	_ivMilkCanBody: "Milk Can Body",
	_ivBucketLeg: "Bucket Leg",
	_ivMultiFeet: "Multi Feet",
	_ivEnergyPack: "Energy Pack",
	_ivAquarium: "Aquarium",
	_itEarthGem: "Earth Gem",
	_itFireGem: "Fire Gem",
	_itWindGem: "Wind Gem",
	_itWaterGem: "Water Gem",
	_itSunStone: "Sun Stone",
	_itMoonStone: "Moon Stone",
}

_dictMaxStats = {
	_imaxrLegend: [500, 99, 250, 250, 250, 250, 250, 250, 250, 250],
	_imaxlSupernova: [500, 99, 250, 250, 250, 250, 250, 250, 250, 250],
	_imonrIslandKing: [500, 99, 250, 250, 250, 250, 250, 250, 250, 250],
	_imonlFiveStarArmlet: [500, 99, 300, 300, 300, 300, 250, 250, 250, 250]
}

//- function Chapters()

_dictChapter = {
	_chpPrologue: "Prologue - A Night at the Circus",
	_chp1: "To the Outside World",
	_chp1a: "To the Outside World",
	_chp2: "Resurrection of the Great Elder",
	_chp3: "The Sage of the Stars",
	_chp4: "Good-Bye Shingala",
	_chp5: "Conflict of the Past and Future",
	_chp6: "When Two Eras Collide",
	_chp7: "Palace of Flowers",
	_chp8: "The Forgotten Adventure"
}

_dictChapterNum = {
	_chpPrologue: "",
	_chp1: "1",
	_chp1a: "1",
	_chp2: "2",
	_chp3: "3",
	_chp3a: "3",
	_chp4: "4",
	_chp5: "5",
	_chp6: "6",
	_chp7: "7",
	_chp8: "8",
	99: "Testing"
}

_dictChapterRP = {
	_chpPrologue: _dictChapter[_chpPrologue],
	_chp1: format("Ch{0}", _dictChapterNum[_chp1]),
	_chp1a: format("Ch{0}", _dictChapterNum[_chp1a]),
	_chp2: format("Ch{0}", _dictChapterNum[_chp2]),
	_chp3: format("Ch{0}", _dictChapterNum[_chp3]),
	_chp4: format("Ch{0}", _dictChapterNum[_chp4]),
	_chp5: format("Ch{0}", _dictChapterNum[_chp5]),
	_chp6: format("Ch{0}", _dictChapterNum[_chp6]),
	_chp7: format("Ch{0}", _dictChapterNum[_chp7]),
	_chp8: format("Ch{0}", _dictChapterNum[_chp8]),
}

//- function Ideas()

_dictIdeaOrder = {
	_idAirCleaner	: 0,
	_idAlexandraBed	: 1,
	_idABookReader	: 2,
	_idBanana		: 3,
	_idBarSign	 	: 4,
	_idBarrel		: 5,
	_idBaskStreamer	: 6,
	_idBed			: 7,
	_idBelt			: 8,
	_idBench 		: 9,
	_idBinoculars	: 10,
	_idBlackstoneO	: 11,
	_idBlueLatern	: 12,
	_idBoat			: 13,
	_idBone			: 14,
	_idBook			: 15,
	_idBottle		: 16,
	_idBread		: 17,
	_idBridge 		: 18,
	_idCafeSign     : 19,
	_idCamelliaTree : 20,
	_idCan          : 21,
	_idCandle       : 22,
	_idCar          : 23,
	_idCart         : 24,
	_idCedricShopS  : 25,
	_idChair        : 26,
	_idChandelier   : 27,
	_idChimey       : 28,
	_idChinesLanter : 29,
	_idCinders      : 30,
	_idClock        : 31,
	_idCloth        : 32,
	_idCoal         : 33,
	_idComputer     : 34,
	_idConstructor  : 35,
	_idCrescShapLig : 36,
	_idCup          : 37,
	_idCurtain      : 38,
	_idDeadTree     : 39,
	_idDecoLights   : 40,
	_idDeerHorn     : 41,
	_idDellClinicS  : 42,
	_idDisplayRobo  : 43,
	_idDrawbridge   : 44,
	_idDrawer       : 45,
	_idDresser      : 46,
	_idDrumCan      : 47,
	_idEarthAltar   : 48,
	_idEgg          : 49,
	_idEggChair     : 50,
	_idEggTrans     : 51,
	_idElectBulle   : 52,
	_idElectricSes  : 53,
	_idElenaPort    : 54,
	_idElevator     : 55,
	_idEnergyPipe   : 56,
	_idEveningSun   : 57,
	_idEyeball      : 58,
	_idFan          : 59,
	_idFence        : 60,
	_idFigure       : 61,
	_idFireAltar    : 62,
	_idFireHouse    : 63,
	_idFireplace    : 64,
	_idFish         : 65,
	_idFishRaceSi   : 66,
	_idFishingCoSi  : 67,
	_idFlag         : 68,
	_idFlower       : 69,
	_idFlowerBathL  : 70,
	_idFlowerBed    : 71,
	_idFlowerChair  : 72,
	_idFlowerChande : 73,
	_idFountain     : 74,
	_idFreightTrain : 75,
	_idFrescoPaint  : 76,
	_idFruit        : 77,
	_idFuturon800   : 78,
	_idGate         : 79,
	_idGenerator    : 80,
	_idGeyser       : 81,
	_idGiantYordaT  : 82,
	_idGlassesCase  : 83,
	_idGlowGate     : 84,
	_idGoldGate     : 85,
	_idGoldStore    : 86,
	_idGoldDoor     : 87,
	_idGrass        : 88,
	_idHammer       : 89,
	_idHammock      : 90,
	_idHandSewn     : 91,
	_idHat          : 92,
	_idHoe          : 93,
	_idHolyEmblem   : 94,
	_idHookedNose   : 95,
	_idHorn         : 96,
	_idHotSpringP   : 97,
	_idIronBridge   : 98,
	_idIronMaiden   : 99,
	_idIronShed     : 100,
	_idJurakArmSign : 101,
	_idJurakEye     : 102,
	_idJurakNose    : 103,
	_idLabyDoor     : 104,
	_idLadder       : 105,
	_idLamp         : 106,
	_idLaoChaoT     : 107,
	_idLargeCrane   : 108,
	_idLaundry      : 109,
	_idLetter       : 110,
	_idLight        : 111,
	_idLigthLunaSt  : 112,
	_idLinHouse     : 113,
	_idLog          : 114,
	_idLotusFlower  : 115,
	_idLunaSShard   : 116,
	_idMailbox      : 117,
	_idManhole      : 118,
	_idMilkCan      : 119,
	_idMonument     : 120,
	_idMoonColumn   : 121,
	_idMorningSun   : 122,
	_idMortonSundS  : 123,
	_idMountGundor  : 124,
	_idMrBigShotSha : 125,
	_idMud          : 126,
	_idMushroom     : 127,
	_idMushBurgSign : 128,
	_idNeoProjector : 129,
	_idOldStylRobot : 130,
	_idOpposedIsl   : 131,
	_idOven         : 132,
	_idPainting     : 133,
	_idPaints       : 134,
	_idPalmTree     : 135,
	_idParasol      : 136,
	_idParnStudSi   : 137,
	_idPatternedRug : 138,
	_idPaznosPatrn  : 139,
	_idPeepingPole  : 140,
	_idPhone        : 141,
	_idPhonograph   : 142,
	_idPiano        : 143,
	_idPier         : 144,
	_idPinky        : 145,
	_idPipe         : 146,
	_idPoliceSign   : 147,
	_idPollyBakSign : 148,
	_idPorkDump     : 149,
	_idPost         : 150,
	_idPot          : 151,
	_idPotTorch     : 152,
	_idPowerArm     : 153,
	_idPropeller    : 154,
	_idPumpkin      : 155,
	_idQuartz       : 156,
	_idRailroad     : 157,
	_idRapper       : 158,
	_idRedHouse     : 159,
	_idRefri        : 160,
	_idRegister     : 161,
	_idRelaxFount   : 162,
	_idRifle        : 163,
	_idRiver        : 164,
	_idRoadGoldbad  : 165,
	_idRobot        : 166,
	_idRock         : 167,
	_idRotatingSign : 168,
	_idRug          : 169,
	_idRunawDragon  : 170,
	_idSaintWriting : 171,
	_idSaw          : 172,
	_idScale        : 173,
	_idScroll       : 174,
	_idSearchLight  : 175,
	_idShield       : 176,
	_idShowWindow   : 177,
	_idShruberry    : 178,
	_idSign         : 179,
	_idSilverBench  : 180,
	_idSmallGen     : 181,
	_idSpecPekDuck  : 182,
	_idStainedGlass : 183,
	_idStaircase    : 184,
	_idStand        : 185,
	_idStarLamp     : 186,
	_idStardustPoun : 187,
	_idStarglass    : 188,
	_idStarlStair   : 189,
	_idStarlTunnel  : 190,
	_idStove        : 191,
	_idStreetlight  : 192,
	_idSulphurJuice : 193,
	_idSunChair     : 194,
	_idSunTable     : 195,
	_idSunshade     : 196,
	_idSystem5WP2   : 197,
	_idTV           : 198,
	_idTable        : 199,
	_idTelescope    : 200,
	_idTheMoon      : 201,
	_idTheSun       : 202,
	_idTinyHammer   : 203,
	_idTorch        : 204,
	_idTrafficLight : 205,
	_idTransDev     : 206,
	_idTrashcan     : 207,
	_idTree         : 208,
	_idVacumm       : 209,
	_idVacummBag    : 210,
	_idVegetFruit   : 211,
	_idVendingMach  : 212,
	_idVentilation  : 213,
	_idVictorStand  : 214,
	_idWarehouse    : 215,
	_idWaterAltar   : 216,
	_idWaterTank    : 217,
	_idWaterWheel   : 218,
	_idWaterfall    : 219,
	_idWaterfCurt   : 220,
	_idWeapon       : 221,
	_idWeaponShopS  : 222,
	_idWeatherVane  : 223,
	_idWeightGauge  : 224,
	_idWell         : 225,
	_idWheatFlour   : 226,
	_idWheel        : 227,
	_idWindAltar    : 228,
	_idWindmill     : 229,
	_idWindmFeather : 230,
	_idWindow       : 231,
	_idWithJurak    : 232,
	_idWoodBookshel : 233,
	_idWoodenBox    : 234,
	_idWoodyTailorS : 235,
	_idWorkArm      : 236,
	_idWorkCrane    : 237,
	_idWorkEq       : 238,
	_idWorkRobot    : 239,
	_idZelmiteFound : 240
}

//-241 Ideas. 53 Scoops = 294 slots
_dictChapterIdeas = {
//-		_chp1: [_idABookReader, _idBarSign, _idBarrel, _idBelt, _idBench, _idBinoculars, _idBlackstoneO, _idBook, _idBottle, _idBread, _idCafeSign, _idCan, _idCar, _idCart, _idCedricShopS, _idChair, _idChandelier, _idChimey, _idClock, _idConstructor, _idCup, _idDrawbridge, _idEveningSun, _idFan, _idFlag, _idFlower, _idFlowerChair, _idFountain, _idFreightTrain, _idGoldStore, _idIronBridge, _idIronMaiden, _idLadder, _idLamp, _idLight, _idMailbox, _idManhole, _idMilkCan, _idMorningSun, _idMortonSundS, _idOldStylRobot, _idOven, _idPainting, _idParasol, _idPhonograph, _idPiano, _idPipe, _idPoliceSign, _idPollyBakSign, _idPost, _idPot, _idPumpkin, _idRailroad, _idRapper, _idRefri, _idRegister, _idRiver, _idShield, _idShowWindow, _idShruberry, _idSign, _idStaircase, _idStreetlight, _idSunshade, _idTable, _idTheMoon, _idTheSun, _idTinyHammer, _idTrafficLight, _idTrashcan, _idTree, _idVacumm, _idVacummBag, _idVegetFruit, _idVendingMach, _idWaterfall, _idWeapon, _idWeaponShopS, _idWeightGauge, _idWheatFlour, _idWheel, _idWindow, _idWoodenBox],
//-		_chp2: [_idBed, _idBoat, _idBone, _idBridge, _idCandle, _idCloth, _idCoal, _idCurtain, _idDeerHorn, _idDellClinicS, _idDrawer, _idDresser, _idEgg, _idElenaPort, _idEyeball, _idFence, _idFigure, _idFireHouse, _idFireplace, _idFish, _idFruit, _idGate, _idGlassesCase, _idGrass, _idHammock, _idHoe, _idJurakArmSign, _idJurakEye, _idJurakNose, _idLetter, _idLog, _idMonument, _idMushroom, _idMushBurgSign, _idPaints, _idPalmTree, _idParnStudSi, _idPhone, _idPier, _idPotTorch, _idQuartz, _idRifle, _idRobot, _idRock, _idRug, _idSaw, _idStainedGlass, _idStand, _idStove, _idTelescope, _idWaterWheel, _idWithJurak, _idWoodBookshel, _idWoodyTailorS],
//-		_chp3: [_idBaskStreamer, _idChinesLanter, _idCrescShapLig, _idElectBulle, _idFishingCoSi, _idFrescoPaint, _idGiantYordaT, _idGlowGate, _idHandSewn, _idHat, _idHolyEmblem, _idHorn, _idLaoChaoT, _idLaundry, _idLinHouse, _idPeepingPole, _idPorkDump, _idRotatingSign, _idRunawDragon, _idSaintWriting, _idScale, _idScroll, _idSpecPekDuck, _idStarLamp, _idStarglass, _idTorch, _idVictorStand, _idWarehouse, _idWeatherVane, _idWell],
//-		_chp4: [_idAirCleaner, _idBanana, _idEggChair, _idEggTrans, _idEnergyPipe, _idFishRaceSi, _idFuturon800, _idIronShed, _idLigthLunaSt, _idLunaSShard, _idNeoProjector, _idOpposedIsl, _idRedHouse, _idSearchLight, _idSmallGen, _idSystem5WP2, _idTV, _idVentilation, _idWaterTank, _idWindmill, _idWindmFeather, _idWorkArm, _idWorkEq, _idWorkRobot],
//-		_chp5: [_idCinders, _idComputer, _idDecoLights, _idDisplayRobo, _idDrumCan, _idElectricSes, _idElevator, _idGeyser, _idHammer, _idHotSpringP, _idLargeCrane, _idMountGundor, _idMud, _idPatternedRug, _idPaznosPatrn, _idPowerArm, _idPropeller, _idSulphurJuice, _idTransDev, _idWorkCrane],
//-		_chp6: [_idDeadTree, _idEarthAltar, _idFireAltar, _idGoldGate, _idHookedNose, _idPinky, _idWaterAltar, _idWindAltar],
//-		_chp7: [_idAlexandraBed, _idBlueLatern, _idCamelliaTree, _idFlowerBathL, _idFlowerBed, _idFlowerChande, _idGoldDoor, _idLabyDoor, _idLotusFlower, _idMoonColumn, _idRelaxFount, _idRoadGoldbad, _idSilverBench, _idStardustPoun, _idStarlStair, _idStarlTunnel, _idSunChair, _idSunTable, _idWaterfCurt],
	_iaCedricShop: [_idOldStylRobot, _idWeightGauge, _idFan, _idTinyHammer, _idBinoculars, _idABookReader, _idVacummBag, _idVacumm, _idConstructor, _idPipe, _idManhole, _idFlag],
	_iaPollyBakery: [_idBread, _idCan, _idFlower, _idOven, _idMilkCan, _idPollyBakSign, _idSunshade, _idWindow, _idRegister],
	_iaMortonSundries: [_idBook, _idChair, _idChandelier, _idPainting, _idPhonograph, _idVegetFruit, _idVendingMach, _idWheatFlour, _idBarrel, _idPumpkin, _idSign],
	_iaWeaponShop: [_idGoldStore, _idIronMaiden, _idLamp, _idLight, _idShield, _idShowWindow, _idWeapon, _idWoodenBox, _idMailbox, _idWeaponShopS ],
	_iaPoliceHQ: [_idBench, _idClock, _idPost, _idShruberry, _idBelt, _idCart , _idChimey, _idPoliceSign, _idStreetlight],
	_iaBar: [_idBottle, _idCar, _idLadder, _idPiano, _idRapper, _idTable, _idWheel, _idBarSign, _idCafeSign, _idParasol],
	_iaStation: [_idFlowerChair, _idCup, _idPot, _idStaircase, _idBlackstoneO, _idFreightTrain],	
	_iaSunMoon: [_idTheSun, _idTheMoon, _idMorningSun, _idEveningSun],
	_iaPalmBrinks: [_idTrashcan, _idFountain, _idRiver, _idTrafficLight, _idTree, _idRailroad, _idBoat, _idPier, _idElectBulle, _idFishingCoSi, _idGlowGate, _idScale, _idOpposedIsl, _idVictorStand, _idWaterTank],
	_iaUChannelExit: [_idIronBridge, _idWaterfall],
	_iaTrain: [_idCoal, _idFireHouse],
	_iaCityHall: [_idGlassesCase, _idDeerHorn, _idStand],
	_iaChurch: [_idCandle, _idRug],
	_iaParn: [_idParnStudSi, _idBed, _idCloth, _idCurtain, _idFigure, _idPaints],
	_iaMortonHouse: [_idDrawer, _idHoe, _idRefri],
	_iaMansion: [_idElenaPort, _idFireplace, _idRifle, _idStainedGlass, _idDresser, _idRobot, _idTelescope, _idPalmTree, _idFish, _idStove, _idPhone, _idLetter, _idFence, _idGate, _idBridge],
	_iaDrDell: [_idDellClinicS, _idBone, _idEyeball, _idEgg, _idSaw],
	//-Ch2
	_iaSindain: [_idFruit, _idGrass, _idHammock, _idJurakEye, _idJurakNose, _idLog, _idPotTorch, _idQuartz, _idWaterWheel, _idWithJurak, _idWoodBookshel],
	_iaJurakMall: [_idJurakArmSign, _idMushroom, _idMushBurgSign, _idWoodyTailorS],
	//-Ch3
	_iaBalanceValley: [_idBaskStreamer, _idChinesLanter, _idFrescoPaint, _idHandSewn, _idHolyEmblem, _idLaundry, _idLinHouse, _idRotatingSign, _idSaintWriting, _idStarLamp, _idWarehouse, _idWeatherVane, _idWell],
	_iaStarlighCanyon: [_idGiantYordaT],
	_iaStarlightTemple: [_idCrescShapLig, _idHat, _idHorn, _idLaoChaoT, _idPeepingPole, _idPorkDump, _idRunawDragon, _idScroll, _idSpecPekDuck, _idStarglass, _idTorch],
	//-Ch4
	_iaVeniccio: [_idBanana, _idIronShed, _idLigthLunaSt, _idLunaSShard, _idRedHouse, _idSmallGen, _idTV, _idVentilation, _idWindmill, _idWindmFeather],
	_iaLunaLabs: [_idAirCleaner, _idEggChair, _idEggTrans, _idEnergyPipe, _idFuturon800, _idNeoProjector, _idSearchLight, _idSystem5WP2, _idWorkArm, _idWorkEq, _idWorkRobot],
	//-Ch5
	_iaHeimRada: [_idCinders, _idGeyser, _idHotSpringP, _idLargeCrane, _idMountGundor, _idMud],
	_iaGundoradaWorkshop: [_idComputer, _idElevator, _idGenerator, _idPaznosPatrn, _idPowerArm, _idPropeller, _idTransDev, _idWorkCrane, _idDecoLights, _idDisplayRobo, _idDrumCan, _idElectricSes, _idHammer, _idPatternedRug, _idSulphurJuice],
	//-Ch6
	_iaMoonFlowerEntrance: [_idDeadTree, _idGoldGate, _idPinky],
	_iaKazarov: [_idEarthAltar, _idFireAltar, _idWaterAltar, _idWindAltar],
	//-Ch7
	_iaMoonFlowerPalace: [_idAlexandraBed, _idBlueLatern, _idCamelliaTree, _idFlowerBathL, _idFlowerBed, _idFlowerChande, _idGoldDoor, _idHookedNose, _idLabyDoor, _idLotusFlower, _idRelaxFount, _idRoadGoldbad, _idWaterfCurt, _idSilverBench],
	_iaMoonFlowerPalaceExtra: [_idMoonColumn, _idStardustPoun, _idStarlStair, _idStarlTunnel, _idSunChair, _idSunTable],
	//-Ch8
	_chp8: [_idMrBigShotSha, _idZelmiteFound]
}

//- function Inventions()
//-128 Inventions
_dictChapterInventions = {
	_chp1a: [_ivAquarium, _ivBanditBrassard, _ivCannonballArm, _ivCaterpillar, _ivClownHand, _ivEnergyPack, _ivEnergyPackBarrel, _ivKnightBoots, _ivTastyWater, _ivTrumpetGun],
	_chp2: [_ivAntiPetrifyAmulet, _ivBarrelCannon, _ivBellTrigger, _ivBomb, _ivBoneRapier, _ivBread, _ivCannonballArmII, _ivClownBody, _ivClownFoot, _ivClownShoes, _ivDoublePudding, _ivGiftCapsule, _ivGrenadeLauncher, _ivIronLeg, _ivImprovedBomb, _ivLeatherShoes, _ivLightspeed, _ivLureRod, _ivSwan, _ivWorkShoes],
	_chp3: [_ivAntiCurseAmulet, _ivAntidoteAmulet, _ivAntidoteDrink, _ivAntiGooAmulet, _ivBarrelCannonII, _ivBucketLeg, _ivBucketPack, _ivCannonballArmIII, 
			_ivCheese, _ivClownHandII, _ivDragonShoes, _ivDrillArm, _ivHolyWater, _ivMachineGunArm, _ivMachineGunArmII],
	_chp3a: [_ivMagicGun, _ivMilkCanBody, _ivMissilePodArm, _ivNonStopAmulet, _ivPremiumChicken,
			_ivRollerFoot, _ivSamuraiArm, _ivSamuraiBody, _ivSandBreaker, _ivSmashWrench, _ivSoap, _ivSpikeBoots, _ivStaminaDrink, _ivStarBreaker, _ivWiseOwlSword, _ivWoodenBoxBody],
	_chp4: [_ivBarrelCannonIII, _ivBuggy, _ivCannonballArmIV, _ivCleanerPack, _ivClownHandIII, _ivCubicHammer, _ivDarkViper, _ivFlamingo, _ivHammerArm, _ivMissilePodArmII, _ivMultiFeet, _ivPropellerLeg, _ivQuestionShooter, _ivRefridgeratorBody, _ivStingerWrench, _ivSuperAlloyBody, _ivTurkey, _ivWildcat, _ivWingBoots, _ivWingShoes],
	_chp5: [_ivAlbatross, _ivBarrelCannonIV, _ivClownHandIV, _ivDigiHammer, _ivDrillArmII, _ivDrumCanBody, _ivEnergyPackUrn, _ivEscapePowder, _ivFalcon, _ivFinalBomb, _ivHammerArmII, _ivHeavyHammer, _ivLaserArm, _ivMachineGunArmIII, _ivMetalBoots, _ivMissilePodArmIII, _ivNovaCannon, _ivPantherBoots, _ivPoisonWrench, _ivRulersSword, _ivSamuraiArmII, _ivSoulBreaker, _ivStealGun, _ivSunandMoonArmour],
	_chp6: [_ivDrillArmIII, _ivHammerArmIII, _ivLaserArmII, _ivMachineGunArmIV, _ivMissilePodArmIV, _ivNovaCannonII],
	_chp7: [_ivDrillArmIV, _ivHammerArmIV, _ivJetHover, _ivLaserArmIII, _ivLaserArmIV, _ivLevelupPowder, _ivNovaCannonIII, _ivPrincessBoots, _ivResurrectionPowder, _ivRidepodFuel, _ivSamuraiArmIII, _ivSexyPanther, _ivTreasureKey, _ivTripleUrnPack, _ivTwinBuster],
	_chp8: [_ivNovaCannonIV, _ivSamuraiArmIV]
}

//- function Scoops()
_dictChapterScoops = {
	_chp1a: [_scBraveLLinda, _scNightStalker, _scBaronHangOn, _scClownRoboAtt],
	_chp2: [_scRulerPound, _scSpookyGrSmil, _scFloatEarchD, _scDangerPumpk, _scToreNap, _scGyumosYell, _scMasterUtan, _scKingMardan, _scHmmJurak, _scFGoldenEgg, _scLafreStem, _scRButterUnite],
	_chp3: [_scChargRam, _scFaceBehEvil, _scHurrayRockMa, _scChangDogSt, _scSpinningIvan, _scNiceMassage, _scPhantoMemo, _scBurnDragonF, _scFlyBattle, _scMoonCrystal],
	_chp4: [_scSurvSoldier, _scVeniccioESun, _scAncientMural, _scPuppedShin, _scDrJaming, _scSymLunaLab],
	_chp5: [_scHotSpringSp, _scBomberBoom, _scFireSquall, _scFaintBonLor, _scLavaRoad, _scFallenBattle, _scPaznos],
	_chp6: [_scIxion, _scMoonFlowPal, _scGriffonRFace, _scKazStone, _scGigPaznos, _scEarthGemAlt, _scWindGemAlt, _scWaterGemAlt, _scFireGemAlt],
	_chp7: [_scFlowerSun, _scSunChamGate, _scLegendMoon],
	99: [_scLafreStem]
}

_dictScoopOrder = {
	_scBurnDragonF 	: 0,
	_scSpinningIvan	: 1,
	_scChargRam		: 2,
	_scPhantoMemo	: 3,
	_scChangDogSt	: 4,
	_scFaintBonLor	: 5,
	_scNightStalker	: 6,
	_scDangerPumpk	: 7,
	_scHurrayRockMa	: 8,
	_scNiceMassage	: 9,
	_scGyumosYell	: 10,
	_scSpookyGrSmil	: 11,
	_scBraveLLinda	: 12,
	_scClownRoboAtt	: 13,
	_scPuppedShin	: 14,
	_scTheUltGasp	: 15,
	_scBaronHangOn	: 16,
	_scToreNap		: 17,
	_scFaceBehEvil	: 18,
	_scFloatEarchD	: 19,
	_scBomberBoom	: 20,
	_scFloatsRevive	: 21,
	_scGriffonRFace	: 23,
	_scDrJaming		: 24,
	_scFGoldenEgg	: 25,
	_scHmmJurak		: 26,
	_scMoonCrystal	: 27,
	_scSymLunaLab	: 28,
	_scPaznos		: 29,
	_scMasterUtan	: 30,
	_scVeniccioESun	: 31,
	_scAncientMural : 32,
	_scKingMardan 	: 33,
	_scLafreStem	: 34,
	_scFlyBattle	: 35,
	_scFireSquall	: 36,
	_scIxion		: 37,
	_scLegendMoon	: 38,
	_scMoonFlowPal	: 39,
	_scKazStone		: 40,
	_scGigPaznos	: 41,
	_scEarthGemAlt	: 42,
	_scWindGemAlt	: 43,
	_scWaterGemAlt	: 44,
	_scFireGemAlt	: 45,
	_scSunChamGate	: 46,
	_scFlowerSun	: 47,
	_scLavaRoad		: 48,
	_scFallenBattle	: 49,
	_scRulerPound	: 50,
	_scSurvSoldier	: 51,
	_scHotSpringSp	: 52,
	_scRButterUnite	: 53
}

_dictInstaPhoto = {
	_scBraveLLinda: "Brave Little Linda scoop",
	_idCinders: "Cinders photo",
	_scClownRoboAtt: "Clown Robo's Attack scoop ",
	_idDeadTree: "Dead Tree photo",
	_scDrJaming: "Doctor Janing scoop",
	_scFireSquall: "Fire Squall scoop",
	_scFlyBattle: "Flying Battleship scoop",
	_scGriffonRFace: "Griffon's Real Face scoop",
	_scKingMardan: "King Mardan scoop",
	_scLegendMoon: "Legend of the Moon scoop",
	_scPhantoMemo: "Phantom Memo Eater scoop",
	_scPuppedShin: "Puppet Shingala scoop",
	_scRButterUnite: "Rainbow Buttlerfly Reunited scoop",
	_scTheUltGasp: "The Ultimate Gaspard scoop",
	_scFloatsRevive: "Flotsam Revived! scoop"
}

//- function Recruitables
_dictRecruitables = {
	_rcGordon: "Gordon",
	_rcParn: "Parn",
	_rcDonny: "Donny",
	_rcFerdinand: "Ferdinand",
	_rcClaire: "Claire",
	_rcPau: "Pau",
	_rcStewart: "Stewart",
	_rcAdel: "Adel",
	_rcPolly: "Polly",
	_rcSheriff: "Sheriff Blinkhorn",
	_rcMilane: "Milane",
	_rcGerald: "Max's Dad",
	_rcMayor: "Mayor Need",
	_rcPriest: "Priest Bruno",
	_rcRufio: "Rufio",
	_rcFabio: "Fabio",
	_rcOlivie: "Olivie",
	_rcMina: "Mina",
	_rcCorrine: "Corrine",
	_rcRosa: "Rosa"
}

_dictChar = {
	_chrMax : "Max",
	_chrMonica : "Monica",
	_chrRidepod : "The Ridepod",
	_chrMonster : "Monster Monica"
}

//- function MiracleChests()

_dictChestsChapter = {
	_chp1: [_mcFEUC, _mcPPPalm, _mcFEPalm],
	_chp2: [_mcFEJurak1, _mcPPJurak1, _mcFEJurak2, _mcWPJurak1, _mcFEJurak3,
			_mcPPJurak2, _mcFEJurak4, _mcWPJurak2, _mc4WCJurak, _mcGJurak],
	_chp3: [_mcFETemple1, _mcFETemple2, _mcPPTemple1, _mcWPTemple1, _mcETemple1,
			_mcPTemple1, _mcFETemple3, _mcPPTemple2, _mcFETemple4, _mcWPTemple2,
			_mcFETemple5, _mcPPTemple3, _mcWPTemple3, _mcPPTemple4],
	_chp4: [_mcFELab1, _mcPPLab1, _mcFELab2, _mcWPLab1, _mcFELab3, _mcPPLab2, 
			_mcFELab4, _mcWPLab2, _mcRLab, _mcPLab, _mcSLab, _mcFELab5, 
			_mcPPLab3, _mcFELab6, _mcWPLab3, _mcFELab7, _mcWPLab4],
	_chp5: [_mcFEGun1, _mcPPGun1, _mcFEGun2, _mcWPGun1, _mcFEGun3, _mcPPGun2, 
			_mcFEGun4, _mcWPGun2, _mcFEGun5, _mcPPGun3, _mcFEGun6, _mcWPGun3, 
			_mcFEGun7, _mcPPGun4, _mcFEGun8, _mcWPGun4],
	_chp6: [_mcFEJurak5, _mcPPJurak3, _mcFEJurak6, _mcWPJurak3, _mcAmJurak, _mcAqJurak,
			_mcFETemple6, _mcFETemple7, _mcPPTemple5, _mcFETemple8, _mcWPTemple4,
			_mcFELab8, _mcFELab9, _mcFELab10, _mcPPLab4, _mcPPLab5, _mcWPLab5,
			_mcFEGun9, _mcFEGun10, _mcFEGun11, _mcPPGun5, _mcWPGun5, _mcWPGun6, 
			_mcToGun, _mcTuGun, _mcDiGun],
	_chp7: [_mcFEPalace1, _mcPPPalace1, _mcFEPalace2, _mcWPPalace1, 
			_mcFEPalace3, _mcPPPalace2, _mcFEPalace4, _mcWPPalace2, 
			_mcFEPalace5, _mcPPPalace3, _mcFEPalace6, _mcWPPalace3, 
			_mcFEPalace7, _mcPPPalace4, _mcFEPalace8, _mcWPPalace4, 
			_mcFEPalace9, _mcPPPalace5, _mcFEPalace10, _mcWPPalace5, 
			_mcPPPalace6, _mcWPPalace6],
	_chp8: [],
	_itFruitEden: [_mcFEUC, _mcFEPalm, _mcFEJurak1, _mcFEJurak2, _mcFEJurak3, 
					_mcFEJurak4, _mcFETemple1, _mcFETemple2, _mcFETemple3, 
					_mcFETemple4, _mcFETemple5, _mcFELab1, _mcFELab2, _mcFELab3,
					_mcFELab4, _mcFELab5, _mcFELab6, _mcFELab7, _mcFEGun1, 
					_mcFEGun2, _mcFEGun3, _mcFEGun4, _mcFEGun5, _mcFEGun6, 
					_mcFEGun7, _mcFEGun8, _mcFEJurak5, _mcFEJurak6, 
					_mcFETemple6, _mcFETemple7, _mcFETemple8, 
					_mcFELab8, _mcFELab9, _mcFELab10,
					_mcFEGun9, _mcFEGun10, _mcFEGun11,
					_mcFEPalace1, _mcFEPalace2, _mcFEPalace3, _mcFEPalace4,
					_mcFEPalace5, _mcFEPalace6, _mcFEPalace7, _mcFEPalace8,
					_mcFEPalace9, _mcFEPalace10],
	_itPotatoPie: [_mcPPPalm, _mcPPJurak1, _mcPPJurak2, _mcPPTemple1, 
					_mcPPTemple2, _mcPPTemple3, _mcPPTemple4, _mcPPLab1,
					_mcPPLab2, _mcPPLab3, _mcPPGun1, _mcPPGun2, _mcPPGun3,
					_mcPPGun4, _mcPPJurak3, _mcPPTemple5, _mcPPLab4, _mcPPLab5,
					_mcPPGun5, _mcPPPalace1, _mcPPPalace2, _mcPPPalace3, 
					_mcPPPalace4, _mcPPPalace5, _mcPPPalace6],
	_itWitchParfait: [_mcWPJurak1, _mcWPJurak2, _mcWPTemple1, _mcWPTemple2,
					_mcWPTemple3, _mcWPLab1, _mcWPLab2, _mcWPLab3, _mcWPLab4,
					_mcWPGun1, _mcWPGun2, _mcWPGun3, _mcWPGun4, _mcWPJurak3,
					_mcWPTemple4, _mcWPLab5, _mcWPGun5, _mcWPGun6, _mcWPPalace1,
					_mcWPPalace2, _mcWPPalace3, _mcWPPalace4, _mcWPPalace5,
					_mcWPPalace6]
}

//- function MonsterBadges()
_dictMonsterBadges = {
	_mbBeast: "Beast",
	_mbWindup: "Windup",
	_mbAcuatic: "Acuatic",
	_mbFlora: "Flora",
	_mbMagical: "Magical",
	_mbDarkling: "Darkling",
	_mbReptile: "Reptile",
	_mbSpirit: "Spirit",
	_mbUndead: "Undead",
	_mbCard: "Card",
	_mbSun: "Sun",
	_mbMoon: "Moon"
}

_dictMonsterBadgesNames = {
	_mtSewerRat: "Sewer Rat",
	_mtBeachRat: "Beach Rat",
	_mtCastleEater: "Castle Eater",
	_mtDeathMouse: "Death Mouse",
	_mtRam: "Ram",
	_mtSavageRam: "Savage Ram",
	_mtBandou: "Bandou",
	_mtRifleWolf: "Rifle Wolf",
	_mtSmilingWolf: "Smiling Wolf",
	_mtBomberHead: "Bomber Head",
	_mtTripleCracker: "Triple Cracker",
	_mtDangerBomb: "Danger Bomb",
	_mtSweetDynamite: "Sweet Dynamite",
	_mtFroggy: "Froggy",
	_mtGeron: "Geron",
	_mtGamal: "Gamal",
	_mtPutos: "Putos",
	_mtMoonGoyone: "Moon Goyone",
	_mtMariner: "Mariner",
	_mtHimarra: "Himarra",
	_mtBalalla: "Balalla",
	_mtStormflower: "Stormflower",
	_mtMandora: "Mandora",
	_mtMallone: "Mallone",
	_mtScarecrow: "Scarecrow",
	_mtBaronBalloon: "Baron Balloon",
	_mtFlotsamBalloon: "Flotsam Balloon",
	_mtCountBalloon: "Count Balloon",
	_mtDukeBalloon: "Duke Balloon",
	_mtGuardia: "Guardia",
	_mtDarkKeeper: "Dark Keeper",
	_mtSpiderLady: "Spider Lady",
	_mtShiva: "Shiva",
	_mtSpiderWoman: "Spider Woman",
	_mtBambamchoo: "Bambamchoo",
	_mtMissGourgon: "Miss Gourgon",
	_mtMrsGourgon: "Mrs Gourgon",
	_mtWindGemron: "Wind Gemron",
	_mtIceGemrom: "Ice Gemrom",
	_mtThunderGemron: "Thunder Gemron",
	_mtFireGemron: "Fire Gemron",
	_mtHolyGemron: "Holy Gemron",
	_mtPixie: "Pixie",
	_mtSylph: "Sylph",
	_mtFaerie: "Faerie",
	_mtImp: "Imp",
	_mtSkeletonSoldier: "Skeleton Soldier",
	_mtHornhead: "Hornhead",
	_mtMasterJacket: "Master Jacket",
	_mtRareJacket: "Rare Jacket",
	_mtWhitebeard: "Whitebeard",
	_mtOyakata: "Oyakata",
	_mtClub: "Club",
	_mtDiamond: "Diamond",
	_mtHeart: "Heart",
	_mtSpade: "Spade",
	_mtJoker: "Joker"
}

_dictMonsterBadgesTiers = {
	_mtSewerRat: 0,
	_mtBeachRat: 1,
	_mtCastleEater: 2,
	_mtDeathMouse: 3,
	_mtRam: 1,
	_mtSavageRam: 2,
	_mtBandou: 3,
	_mtRifleWolf: 2,
	_mtSmilingWolf: 3,
	_mtBomberHead: 0,
	_mtTripleCracker: 1,
	_mtDangerBomb: 2,
	_mtSweetDynamite: 3,
	_mtFroggy: 0,
	_mtGeron: 1,
	_mtGamal: 2,
	_mtPutos: 3,
	_mtMoonGoyone: 2,
	_mtMariner: 3,
	_mtHimarra: 0,
	_mtBalalla: 1,
	_mtStormflower: 2,
	_mtMandora: 3,
	_mtMallone: 2,
	_mtScarecrow: 3,
	_mtBaronBalloon: 0,
	_mtFlotsamBalloon: 1,
	_mtCountBalloon: 2,
	_mtDukeBalloon: 3,
	_mtGuardia: 2,
	_mtDarkKeeper: 3,
	_mtSpiderLady: 0,
	_mtShiva: 1,
	_mtSpiderWoman: 2,
	_mtBambamchoo: 3,
	_mtMissGourgon: 2,
	_mtMrsGourgon: 3,
	_mtWindGemron: 0,
	_mtIceGemrom: 1,
	_mtThunderGemron: 2,
	_mtFireGemron: 3,
	_mtHolyGemron: 3,
	_mtPixie: 0,
	_mtSylph: 1,
	_mtFaerie: 2,
	_mtImp: 3,
	_mtSkeletonSoldier: 0,
	_mtHornhead: 1,
	_mtMasterJacket: 2,
	_mtRareJacket: 3,
	_mtWhitebeard: 2,
	_mtOyakata: 3,
	_mtClub: 0,
	_mtDiamond: 1,
	_mtHeart: 2,
	_mtSpade: 3,
	_mtJoker: 3
}

_dictMonsterBadgesGrp = {
	_mbBeast: [_mtSewerRat],
	_mbWindup: [_mtBomberHead],
	_mbAcuatic: [_mtFroggy],
	_mbFlora: [_mtHimarra],
	_mbMagical: [_mtBaronBalloon],
	_mbDarkling: [_mtSpiderLady],
	_mbReptile: [_mtWindGemron],
	_mbSpirit: [_mtPixie],
	_mbUndead: [_mtSkeletonSoldier],
	_mbCard: [_mtClub, _mtDiamond, _mtHeart, _mtSpade, _mtJoker],
}

_dictRidepodPartGroups = {
	_ivCannonballArm: [_ivCannonballArmII, _ivCannonballArmIII, _ivCannonballArmIV],
	_ivClownHand: [_ivClownHandII, _ivClownHandIII, _ivClownHandIV],
	_ivSamuraiArm: [_ivSamuraiArmII, _ivSamuraiArmIII, _ivSamuraiArmIV],
	_ivHammerArm: [_ivHammerArmII, _ivHammerArmIII, _ivHammerArmIV],
	_ivDrillArm: [_ivDrillArmII, _ivDrillArmIII, _ivDrillArmIV],
	_ivBarrelCannon: [_ivBarrelCannonII, _ivBarrelCannonIII, _ivBarrelCannonIV],
	_ivMachineGunArm: [_ivMachineGunArmII, _ivMachineGunArmIII, _ivMachineGunArmIV],
	_ivMissilePodArm: [_ivMissilePodArmII, _ivMissilePodArmIII, _ivMissilePodArmIV],
	_ivNovaCannon: [_ivNovaCannonII, _ivNovaCannonIII, _ivNovaCannonIV],
	_ivLaserArm: [_ivLaserArmII, _ivLaserArmIII, _ivLaserArmIV],
	_ivDrumCanBody: [_ivMilkCanBody, _ivClownBody, _ivWoodenBoxBody, 				_ivSamuraiBody, _ivRefridgeratorBody, _ivSuperAlloyBody, 
					_ivSunandMoonArmour],
	_ivIronLeg: [_ivCaterpillar, _ivBucketLeg, _ivClownFoot, _ivRollerFoot,
				_ivMultiFeet, _ivBuggy, _ivPropellerLeg, _ivJetHover]
	
}

_dictOutfits = {
	_ioExplorer: "Explorer",
	_ioPrincess: "Princess",
	_ioPanther: "Panther"
}

_dictFishFrenzy = {
	0 : "Beginner",
	1 : "Junior",
	2 : "Senior",
	3 : "Master"
}

_dictBosses = {
	_dUChannel: {
		_fChanPumpRoom: "Brave Little Linda",
		_fChanReservoir: "Halloween"
	},
	_dRBWoods: {
		_fRainbowFalls: "Rainbow Butterfly",
		_fChamberSleepEarthGem: "Trentos"
	},
	_dSCanyon: {
		_fYordasValley: "Memo-Eater",
		_fLighthouseCape: "Gaspard",
		_fChamberDefendingWindGem: "Lapis Garter"
	},
	_dORCave:{
		_fCaveAncientMurals: "Shingala",
		_fShiguraVillage: "Dr. Jaming",
		_fChamberSleepingWaterGem: "Sea Dragon"
	},
	_dMGundore:{
		_fMountGundorPeak: "Death Ark",
		_fMountGundorMouth: "Gaspard",
		_fChamberBlazingFireGem: "Inferno"
	},
	_dMFPalace:{
		_fAncientWind: "Emperor Griffon"		
	}
}

//#endregion }

//#region Memory Accessors {

//-General
gilda = dword(0x1e6384c)

//-Game
playtime = dword(0x1e03210)
day = word(0x01e03224)
hour = float(0x01e03220)
chapter = byte(0x1e03218)
character = byte(0x01e63846)
monsTrans = word(0x01e63848)

//-Location
mapId = word(0x1e03228)
prevMapId = word(0x1e0322c)
UCfloorId = byte(0x1e1ddc8)
RBWfloorId = byte(0x01e1ddcc)
SCfloorId = byte(0x01e1ddd0)
ORCfloorId = byte(0x01e1ddd4)
MGfloorId = byte(0x01e1ddd8)
MFPfloorId = byte(0x01e1dddc)
ZMfloorId = byte(0x01e1dde0)
currentDungeon = byte(0x01e1ddc4)
inDungeonVal = bit2(0x01e63842)
function inDungeon() => isTrue(inDungeonVal) //- == 0xf
function notDungeon() => isFalse(inDungeonVal) //- == 0x3
function fishExtras() => chapter == 1 && notDungeon() && mapId >= _mpFishFrenzy && mapId <= _mpFishFrenzyRace
function sphedaExtras() => byte(sphedaPracticeName) != 0 && mapId == 0xffff && inDungeon()
function wasDungeon() => isTrue(prev(inDungeonVal))//- == 0xf
function wasNotDungeon() => isFalse(prev(inDungeonVal))//- == 0x3
function inDungeonV(val) => inDungeon() && currentDungeon == val

prevFloorId = byte(0x1e1dde4)

//-Story
storyflag1 = byte(0x1e0191a)
savedLin = bit2(0x01e01839)
savedShingala = bit4(0x01e01844)
fightUltimateGaspard = bit4(0x01e01852)

//-Max
maxRightWeaponId = word(0x01e22b6a)
maxLeftWeaponId = word(0x01e22bd6)

//-Monica
monicaRightWeaponId = word(0x01e22ef6)
monicaLeftWeaponId = word(0x01e22f62)

//-Menus & HUD
buildUpWindowFlag = byte(0x1ecdc22) 
switchWindow = dword(0x1ecdc18)
buildUp2 = byte(0x1ece038)
buildUpFishing = byte(0x01ecdf70)
showHud = byte(0x01ddb238)
runClock = byte(0x01ddb1d5)
cutsceneFlag = byte(0x01ece504)
function finishedCutscene() => prev(cutsceneFlag) != 0 && cutsceneFlag == 0
function skippedCutscene() => fromTo(cutsceneFlag, 1, 2)
function CompletedCutscene() => fromTo(cutsceneFlag, 1, 0)

//-Magic Numbers! (destroy these)
talkingFlag = byte(0x01e9c7ec)
//-Oh titleFlag, where are you?
titleFlag = byte(0x0001a4ec)//-dword(0x003d3e54)//-0x01e68b84) //-Use alt 0x01e67440 if fails
//-clearDungeonMainFlag = dword(0x01ece890)
//-clearDungeonSubFlag = dword(0x01ece880)
//-hideHUD = dword(0x01e9f6e0)
//-attackAddress = dword(0x01e9f6f0)
//-loadingLevel = word(0x01ea0302)

//-Floor Variables
floorVariable = byte(0x01ddb1f9) //-This is a series of bitflags, but it is easier to handle like a byte
floorStartTime = dword(0x01ddb280) //-According to current playtime
floorChallenge = 0x01ddb288
hitItems = bit0(floorChallenge)
hitMaxRight = bit1(floorChallenge)
hitMaxGun = bit2(floorChallenge)
hitMonicaSword = bit3(floorChallenge)
hitMonicaMagic = bit4(floorChallenge)
hitRidepod = bit5(floorChallenge)
hitMonster = bit6(floorChallenge)
hasHealed = bit7(floorChallenge)

function clearAllDungeon() => prev(floorVariable) == 0x46 && floorVariable == 6
						//-fromTo(clearDungeonMainFlag, 0xffffffff, 2) 
						//-&& fromTo(clearDungeonSubFlag, 0xffffffff, 0)
//-function hasAttacked() => hideHUD == 0 && prev(attackAddress) == 0x3f800000 && attackAddress != 0x3f800000
function levelLoaded() => prev(floorStartTime) == 0 && floorStartTime != 0
//-loadingLevel == 0xffff || loadingLevel != 0xffff && word(0x01ea0300) != 0

//-Item Handling
itemPointer = dword(0x377850)

//--Synth
synthPointer = dword(0x1ece048)

//--BuildUp
buildUpPointer = dword(0x1ecdc44)
buildUpPointer2 = dword(0x1ece044)

function itemId(ptr) => word(ptr + 0x2)
function itemNameChangeFlag(ptr) => byte(ptr + 0x5)
function itemAtk(ptr) => word(ptr + 0x22) 
function itemDur(ptr) => word(ptr + 0x24) 
function itemFlame(ptr) => word(ptr + 0x26) //-Flight
function itemChill(ptr) => word(ptr + 0x28) //-Strength
function itemLight(ptr) => word(ptr + 0x2a) //-Resilience
function itemCyclone(ptr) => word(ptr + 0x2c) //-Grip
function itemSmash(ptr) => word(ptr + 0x2e) //-Luck
function itemExorcism(ptr) => word(ptr + 0x30)
function itemBeast(ptr) => word(ptr + 0x32)
function itemScale(ptr) => word(ptr + 0x34)
function itemSynthPoints(ptr) => word(ptr + 0x3c)

_rodFlight = 1
_rodStrength = 2
_rodResilience = 3
_rodGrip = 4
_rodLuck = 5

_dictRodStat = {
	_rodFlight: [0x01bb940c, "Flight", 30],
	_rodStrength: [0x01bb9454, "Strength", 50],
	_rodResilience: [0x01bb949c, "Resilience", 50],
	_rodGrip: [0x01bb94e4, "Grip", 20],
	_rodLuck: [0x01bb952c, "Luck", 50]
}

function dictRodStat(st, ptr) {
	if (st == _rodFlight)
		return itemFlame(ptr)
	if (st == _rodStrength)
		return itemChill(ptr)
	if (st == _rodResilience)
		return itemLight(ptr)
	if (st == _rodGrip)
		return itemCyclone(ptr)
	if (st == _rodLuck)
		return itemSmash(ptr)
}

function notBuildingFish() => isFalse(prev(buildUpFishing))
function startFishBuildUp() => fromTo(buildUpFishing, 4, 0xf)
function finishedFishBuildUp() => fromTo(buildUpFishing, 0xf, 0)

firstItemInventory = 0x01e1eab0
lastItemInventory = 0x01e22704 //-Id is 0x01e22706, looking at 24 rows of 6 cols

//-Floor Flags
function floorAddress(dun, fl, offset) => _dictDunFloorFirstAddress[dun] + 0x14*(fl-1) + offset

function floorUnlocked(d, fl) => bit0(floorAddress(d, fl, 0))
function floorFinished(d, fl) => bit1(floorAddress(d, fl, 0))
//-Clear Medal
function floorMedal1(d, fl) => bit4(floorAddress(d, fl, 0))
//-Spheda Medal
function floorMedal2(d, fl) => bit7(floorAddress(d, fl, 0))
//-Special Medal
function floorMedal3(d, fl) => bit3(floorAddress(d, fl, 0))
//-Fish Medal
function floorMedal4(d, fl) => bit5(floorAddress(d, fl, 0))

function floorKillAll(d, fl) => bit2(floorAddress(d, fl, 1))
function clearAllFirst(d, fl) => turnOn(floorKillAll(d, fl))
function floorKillAllGrp(grp) => floorKillAll(grp[0], grp[1])
function pfloorKillAllGrp(grp) => prev(floorKillAll(grp[0], grp[1]))

function floorGeostone(d, fl) => bit0(floorAddress(d, fl, 1))
function floorGeostoneAllGrp(grp) => floorGeostone(grp[0], grp[1])

function floorNumberKilled(d, fl) => word(floorAddress(d, fl, 2))
function floorTimesVisited(d, fl) => word(floorAddress(d, fl, 4))
function floorBestTime(d, fl) => word(floorAddress(d, fl, -10))

function floorSphedaPrize(d, fl) => byte(floorAddress(d, fl, -2))
function floorEverySphedaMainGrp(grp) => once(floorSphedaPrize(grp[0], grp[1]) > 0)
function floorEverySphedaSubGrp(grp) => once(floorSphedaPrize(grp[0], grp[1]) > 1)
function pfloorEverySphedaMainGrp(grp) => prev(floorSphedaPrize(grp[0], grp[1])) == 0
									&& inFloorArr(grp)
function pfloorEverySphedaSubGrp(grp) => prev(floorSphedaPrize(grp[0], grp[1])) == 1 
									&& inFloorArr(grp)

function floorEveryMonsterGrp(add) => once(word(add) > 0)
function pfloorEveryMonsterGrp(add) => prev(word(add)) == 0

//-Photos
photoMovingNew = byte(0x377650)
photoNewToMove = byte(0x377654)
photoMenuPointer = dword(0x377668)
photoMode = byte(0x00378710)
photoMenuOption = byte(photoMenuPointer + 0x14)
photoToBeDeleted = photoMenuPointer + 0x5c4
inventingFlag = byte(photoMenuPointer + 0x580)
inventionToDiscover = word(photoMenuPointer + 0x582)
inventionToMake = word(photoMenuPointer + 0xfc)
inventionMadeToSlot = word(photoMenuPointer + 0x104)
inventionSelected = word(photoMenuPointer + 0x16a)
function inPhotoAlbum() => photoMenuOption == 0xb || photoMenuOption == 9
function inventing() => photoMenuOption == 0x6

//-Fishing
isFishingFlag = byte(0x003784c0)
function isFishing() => isTrue(isFishingFlag)
fishingStates = byte(0x003784d0)
function successfulFishing() => fromTo(fishingStates, 5, 7)
function failedFishing() => fromTo(fishingStates, 5, 6)
fishCaughtSize = word(0x01e96504) //-This is used for many things
fishContestResult = fishCaughtSize
fishFrenzyLevel = byte(0x00377740)
fishContestWeight = dword(0x00565f7c)
fishFrenzyRaceStatus = byte(0x0037860c)
fishFrenzyTime = float(0x00378604)

tankLooking = byte(0x01e23408)
firstFishIdRecTank = 0x01e2340e
firstFishIdBattleTank = 0x01e23696
firstFishIdBreedTank = 0x01e23846

fishBoostOffset = 0x34
fishEndurOffset = 0x36
fishTenacyOffset = 0x38
fishStaminaOffset = 0x3a
fishStrOffset = 0x3c
fishMoodOffset = 0x24

_dictFishStatName = {
	fishBoostOffset: "Boost",
	fishEndurOffset: "Endurance",
	fishTenacyOffset: "Tenacy",
	fishStaminaOffset: "Stamina",
	fishStrOffset: "Strength"
}

aquariumFishOffset = 0x6c
breedTankCounter = word(0x01e23928)

itemGottenId = word(0x01e964c4)
function gotItem(it) => itemGottenId == it + 0x2710
itemGottenCount = word(0x01e96508) //-Also counts FP

//-Character requests
charRequest = 0x01e64250

//-Monster Transform
firstBadgeNumber = 0x01e23960
firstBadgeLevel = 0x01e23962
firstBadgeEvol = 0x01e23964
firstBadgeBranch = 0x01e23966
firstBadgeMonId = 0x01e23968
firstBadgeGotten = 0x01e2396a
firstMonsterTimer = 0x01e23970
badgeOffset = 0xbc

function getBadgeLevel(bg) => byte(firstBadgeLevel + badgeOffset * bg)
function getBadgeEvol(bg) => byte(firstBadgeEvol + badgeOffset * bg)
function getBadgeBranch(bg) => byte(firstBadgeBranch + badgeOffset * bg)
function getBadgeMonId(bg) => word(firstBadgeMonId + badgeOffset * bg)
function getBadgeGotten(bg) => byte(firstBadgeGotten + badgeOffset * bg)
function getBadgeTimer(bg) => float(firstMonsterTimer + badgeOffset * bg)

//-Max and Monica Outfit
maxHead = word(0x01e22c42)
maxBody = word(0x01e22d1a)
maxShoes = word(0x01e22cae)

monicaHead = word(0x01e22fce)
monicaBody = word(0x01e230a6)
monicaShoes = word(0x01e2303a)

//-Steve
steveHP = float(0x01e23134)
steveArm = word(0x01e23142)
steveBody = word(0x01e231ae)
steveEnergyPk = word(0x01e2321a)
steveFoot = word(0x01e23286)

shieldKits = byte(0x01e232f8)
voiceUnit = byte(0x01e2312c)
voiceUnitFlag = byte(0x01e2312d)

//-Spheda
sphedaPointer = dword(0x003783c4)
sphedaFlag = byte(sphedaPointer + 0x28)
sphedaShots = byte(sphedaPointer + 0xb8)

sphedaPracticeCourse = 0x003d9778
sphedaPracticeHole = byte(0x003d97a8)
sphedaPracticeName = 0x003d97ac
function sphedaPracticeCourseScore(c) => word(sphedaPracticeCourse + 2*c)

//-Boss
bossHP = dword(0x00d06fe4)
bossAppeared = bit0(0x00d07000)
bossDefeated = bit1(0x00d07000)
trainHP = float(0x003787e0)
//#endregion }

//#region Functions {
function getByte(add) => byte(add)
function getPByte(add) => prev(getByte(add))
function getBit(add) => bit(add[0], add[1])
function getPBit(add) => prev(getBit(add))

//-function inTitle() => prev(playtime) == 0//-dword(0x3d3898) == 0xffffffff//-mapId == 0xffff
function inTitle2() => (playtime == 0 || titleFlag == 0xb)//-ffffffff //-isTrue(titleFlag)
function notInTitle() => !inTitle2()//--isFalse(titleFlag)
function notIntoItems() => itemPointer == 0
function saveProtection() => prev(mapId) != 0xffff && playtime > prev(playtime)
function saveProtection2() => unless(inTitle() || playtime == prev(playtime))
function saveProtectionR() => never(inTitle()) && unless(playtime == prev(playtime))
function prologueEnd() => fromTo(storyflag1, 2, 3)
function charRequestDone(ch) => isTrue(byte(charRequest + 16*ch)) 
								&& turnOn(byte(charRequest + 1 + 16*ch))
								
function isMonsterInGroup(ms) => monsTrans == ms

function inAnyFloorOfDungeon(dun) => any_of(dictDunFloorList(dn, _dictDunFloorList), inFloorArr)

function getHourRP() {
	vHour = hour - 12
	vM = "AM"
	vMin = (hour - vHour) * 60	
	//-if (hour >= 12) {
	//-	vHour = vHour - 12
	//-	vM = "PM"
	//-}
	
	return format("{0}", vHour)//-:{1} {2}", vHour, vMin, vM)
}

function finishChap(ch) {
	if (ch == _chpPrologue)
		return chapter == _chpPrologue && prologueEnd()
	if (ch == _chp1)
		return fromTo(chapter, _chp1a, _chp2) && mapId == _mpSindainStation
	if (ch == _chp2)
		return fromTo(chapter, _chp2, _chp3)
	if (ch == _chp3)
		return fromTo(chapter, _chp3, _chp4)
	if (ch == _chp4)
		return fromTo(chapter, _chp4, _chp5)
	if (ch == _chp5)
		return fromTo(chapter, _chp5, _chp6)
	if (ch == _chp6)
		return fromTo(chapter, _chp6, _chp7)
	if (ch == _chp7)
		return fromTo(chapter, _chp7, _chp8) //-TODO: Verify
	if (ch == _chp8)
		return fromTo(chapter, _chp8, 11) //-TODO: Get
}


function maxStat(wp, ptr) {
	maxStat = _dictMaxStats[wp]
	
	return itemId(ptr) == wp
		&& itemNameChangeFlag(ptr) == 0
		&& prev(ptr) > 0
		&& prev(itemSynthPoints(ptr)) > itemSynthPoints(ptr)
		&& (
			(prev(itemDur(ptr)) < maxStat[1] && itemDur(ptr) >= maxStat[1]) ||
			(prev(itemAtk(ptr)) < maxStat[0] && itemAtk(ptr) >= maxStat[0]) ||
			(prev(itemFlame(ptr)) < maxStat[2] && itemFlame(ptr) >= maxStat[2]) ||
			(prev(itemChill(ptr)) < maxStat[3] && itemChill(ptr) >= maxStat[3]) ||
			(prev(itemLight(ptr)) < maxStat[4] && itemLight(ptr) >= maxStat[4]) ||
			(prev(itemCyclone(ptr)) < maxStat[5] && itemCyclone(ptr) >= maxStat[5]) ||
			(prev(itemSmash(ptr)) < maxStat[6] && itemSmash(ptr) >= maxStat[6]) ||
			(prev(itemExorcism(ptr)) < maxStat[7] && itemExorcism(ptr) >= maxStat[7]) ||
			(prev(itemBeast(ptr)) < maxStat[8] && itemBeast(ptr) >= maxStat[8]) ||
			(prev(itemScale(ptr)) < maxStat[9] && itemScale(ptr) >= maxStat[9])
			)
}

function madeInvention(it) => 
				inventionToMake == it
			&& prev(word(firstItemInventory + 2 + inventionMadeToSlot * 0x6c)) == 0
			&& word(firstItemInventory + 2 + inventionMadeToSlot * 0x6c) == it

function hasItemInventory(it) {
	//- +0 = Item type
	//- +2 = Item Id
	itmId = word(firstItemInventory + 2)
	result = itmId == it
	for index in range(1, 24*6-1){ //-Slot 1 to 293
		itmId = word(firstItemInventory + 2 + index * 0x6c)
		result = result || itmId == it
	}
	return result
}

function gotItemInventory(it) {
	//- +0 = Item type
	//- +2 = Item Id
	itmId = word(firstItemInventory + 2)
	result = fromTo(itmId, 0, it)
	for index in range(1, 24*6-1){ //-Slot 1 to 293
		itmId = word(firstItemInventory + 2 + index * 0x6c)
		result = result || fromTo(itmId, 0, it)
	}
	return result
}

function onceGotItemInventory(it) {
	//- +0 = Item type
	//- +2 = Item Id
	itmId = word(firstItemInventory + 2)
	result = once(fromTo(itmId, 0, it))
	for index in range(1, 24*6-1){ //-Slot 1 to 293
		itmId = word(firstItemInventory + 2 + index * 0x6c)
		result = result || once(fromTo(itmId, 0, it))
	}
	return result
}

function bestCoreInventory() {
	hyperCore = 0xfb
	mgCore = 0xfc
	itmId = word(firstItemInventory + 2)
	result = fromTo(itmId, hyperCore, mgCore)
	for index in range(1, 24*6-1){ //-Slot 1 to 293
		itmId = word(firstItemInventory + 2 + index * 0x6c)
		result = result || fromTo(itmId, hyperCore, mgCore)
	}
	return result
}

function foundIdea(id) {	
	result = word(_phIdeaBookAdd) == id //-Slot 0
	for index in range(1, 293){ //-Slot 1 to 293
		result = result || word(_phIdeaBookAdd + 2 * index) == id
	}
	return once(result)
}
function foundIdea2(id) {	
	result = word(_phIdeaAlbumAdd) == id //-Look in Slot 0
	maxAddress = _dictIdeaOrder[id] //-Idea Max number after ordered
	
	if (maxAddress > 0)
		for index in range(1, maxAddress){ //-Slot 1 to X
			result = result || word(_phIdeaAlbumAdd + 2 * index) == id
		}
	return once(result)
}

function hadPhotos(photos){
	result = always_false()
	for phto in photos 
	{ 
		result = result || hasPhoto(phto)
	}
	return result || (never(inTitle2()) && always_false())					//-Check every item in camera
}

function hasPhoto(id){
	result = unless(byte(photoToBeDeleted) == 0) && once(isTrue(photoMovingNew) && word(_phIdeaOfPhoto) == id) //-&& byte(_phToBeDeleted) == 1)//-Photo 1
	
	for index in range(1, 29){ //-Photo 2 to 30
		result = result || (unless(byte(photoToBeDeleted + index) == 0) && once(isTrue(photoMovingNew) && word(_phIdeaOfPhoto + 24 * index) == id)) 
						//-&& byte(_phToBeDeleted + index) == 1)
	}
	return result
}

function instaPhoto(id){
	result = fromTo(word(_phIdeaOfPhoto), 0, id)
	
	for index in range(1, 29){ //-Photo 2 to 30
		result = result || fromTo(word(_phIdeaOfPhoto + 24 * index), 0, id)
	}
	return result
}

function foundInvention(id) {	
	result = word(_invFirstInvention) == id //-Slot 0
	for index in range(1, 127){ //-Slot 1 to 127
		result = result || word(_invFirstInvention + 4 * index) == id
	}
	return once(result)
}

function isNewInvention(invents){
	result = always_false()
	for inv in invents{
		result = result || inventionToDiscover == inv
	}
	return result || (never(inTitle2()) && always_false())
}

function foundScoop(id) => byte(_sc1stScoopCheck + _dictScoopOrder[id]*4)
function notFoundScoop(id) => prev(foundScoop(id)) == 0
function inFloor(dun, fl) => byte(_dictDunFloorAddress[dun]) == fl
function inFloorArr(arr) => byte(_dictDunFloorAddress[arr[0]]) == arr[1]
function killedInFloor(dun, fl) => prev(floorKillAll(dun, fl)) == 0 && inFloor(dun, fl)
function killedInFloorGrp(grp) => always_true()//--killedInFloor(grp[0], grp[1])

function statFishRaised(st, firstFish, val){
	result = fromTo(word(firstFish + st), val - 1, val)
	
	for index in range(1, 5){ //-Fish 2 to 6
		result = result || fromTo(word(firstFish + st + aquariumFishOffset * index), val - 1, val)
	}
	return result
}

function haveMoodFish(md, firstFish){
	result = (word(firstFish) > 0 && byte(firstFish + fishMoodOffset) == md)
	
	for index in range(1, 5){ //-Fish 2 to 6
		result = result || 
			(word(firstFish + aquariumFishOffset * index) > 0 && 
			byte(firstFish + fishMoodOffset + aquariumFishOffset * index) == md)
	}
	return result
}

function searchEveryMoodInTank(tk, frst) => 
				haveMoodFish(0, frst) &&
				haveMoodFish(1, frst) &&
				haveMoodFish(2, frst) &&
				haveMoodFish(3, frst)
				
function addedFishInTank(firstFish, pos){
	result = (prev(word(firstFish)) == 0 && word(firstFish) > 0)
	
	for index in range(pos + 1, 5){ //-Fish X to 6
		result = result || (prev(word(firstFish + aquariumFishOffset * index)) == 0 
		&& word(firstFish + aquariumFishOffset * index) > 0)
	}
	return result
}

function removedFishInTank(firstFish, pos){
	result = (prev(word(firstFish + aquariumFishOffset * pos)) > 0 && 
			word(firstFish + aquariumFishOffset * pos) == 0)
	
	if (firstFish == firstFishIdBreedTank) return result
	for index in range(pos + 1, last){ //-Fish X to 6
		result = result || (prev(word(firstFish + aquariumFishOffset * index)) > 0 
		&& word(firstFish + aquariumFishOffset * index) == 0)
	}
	return result
}

function haveFishMaxStatus(){
	result = tankLooking == 0 &&
				byte(firstFishIdRecTank + fishBoostOffset) +
				byte(firstFishIdRecTank + fishEndurOffset) +
				byte(firstFishIdRecTank + fishStaminaOffset) +
				byte(firstFishIdRecTank + fishStrOffset) +
				byte(firstFishIdRecTank + fishTenacyOffset) == 400 &&
				prev(byte(firstFishIdRecTank + fishBoostOffset)) +
				prev(byte(firstFishIdRecTank + fishEndurOffset)) +
				prev(byte(firstFishIdRecTank + fishStaminaOffset)) +
				prev(byte(firstFishIdRecTank + fishStrOffset)) +
				prev(byte(firstFishIdRecTank + fishTenacyOffset)) == 399
	
	for index in range(1, 11){ //-Fish 2 to 6
		result = result ||
			tankLooking == index / 6 &&
			byte(firstFishIdRecTank + fishBoostOffset + aquariumFishOffset*index) +
				byte(firstFishIdRecTank + fishEndurOffset + aquariumFishOffset*index) +
				byte(firstFishIdRecTank + fishStaminaOffset + aquariumFishOffset*index) +
				byte(firstFishIdRecTank + fishStrOffset + aquariumFishOffset*index) +
				byte(firstFishIdRecTank + fishTenacyOffset + aquariumFishOffset*index) == 400 &&
				prev(byte(firstFishIdRecTank + fishBoostOffset + aquariumFishOffset*index)) +
				prev(byte(firstFishIdRecTank + fishEndurOffset + aquariumFishOffset*index)) +
				prev(byte(firstFishIdRecTank + fishStaminaOffset + aquariumFishOffset*index)) +
				prev(byte(firstFishIdRecTank + fishStrOffset + aquariumFishOffset*index)) +
				prev(byte(firstFishIdRecTank + fishTenacyOffset + aquariumFishOffset*index)) == 399
				}
	return result
}

function increasedFishStat(firstFish){
	result = byte(firstFish + fishBoostOffset) > prev(byte(firstFish + fishBoostOffset)) ||
			byte(firstFish + fishEndurOffset) > prev(byte(firstFish + fishEndurOffset)) ||
			byte(firstFish + fishStaminaOffset) > prev(byte(firstFish + fishStaminaOffset)) ||
			byte(firstFish + fishStrOffset) > prev(byte(firstFish + fishStrOffset)) ||
			byte(firstFish + fishTenacyOffset) > prev(byte(firstFish + fishTenacyOffset))
	
	//-for index in range(1, 5){ //-Fish 2 to 6
	//-	result = result ||
	//-		byte(firstFish + fishBoostOffset + aquariumFishOffset*index) > prev(byte(firstFish + fishBoostOffset + aquariumFishOffset*index)) ||
	//-		byte(firstFish + fishEndurOffset + aquariumFishOffset*index) > prev(byte(firstFish + fishEndurOffset + aquariumFishOffset*index)) ||
	//-		byte(firstFish + fishStaminaOffset + aquariumFishOffset*index) > prev(byte(firstFish + fishStaminaOffset + aquariumFishOffset*index)) ||
	//-		byte(firstFish + fishStrOffset + aquariumFishOffset*index) > prev(byte(firstFish + fishStrOffset + aquariumFishOffset*index)) ||
	//-		byte(firstFish + fishTenacyOffset + aquariumFishOffset*index) > prev(byte(firstFish + fishTenacyOffset + aquariumFishOffset*index))
	//-			}
	return result
}

function onlyMaxRight() => isFalse(hitItems)
					&& isFalse(hitMaxGun)
					&& isFalse(hitMonicaSword)
					&& isFalse(hitMonicaMagic)
					&& isFalse(hitRidepod)
					&& isFalse(hitMonster)
function onlyMaxRightMon() => isFalse(hitItems)
					&& isFalse(hitMaxGun)
					&& isFalse(hitMonicaSword)
					&& isFalse(hitMonicaMagic)
					&& isFalse(hitRidepod)
function usedMaxRight() => isTrue(hitMaxRight)					
					
function onlyMaxLeft() => isFalse(hitItems)
					&& isFalse(hitMaxRight)
					&& isFalse(hitMonicaSword)
					&& isFalse(hitMonicaMagic)
					&& isFalse(hitRidepod)
					&& isFalse(hitMonster)
function usedMaxLeft() => isTrue(hitMaxGun)
					
function onlyMax() =>  isFalse(hitItems)
					&& isFalse(hitMonicaSword)
					&& isFalse(hitMonicaMagic)
					&& isFalse(hitRidepod)
					&& isFalse(hitMonster)
function usedMax() => hitMaxRight + hitMaxLeft != 0
					
function onlyMonicaSword() => isFalse(hitItems)
					&& isFalse(hitMaxRight) 
					&& isFalse(hitMaxGun)
					&& isFalse(hitMonicaMagic)
					&& isFalse(hitRidepod)
					&& isFalse(hitMonster)
function usedMonicaSword() => isTrue(hitMonicaSword)
					
function onlyMonicaMagic() => isFalse(hitItems)
					&& isFalse(hitMaxRight) 
					&& isFalse(hitMaxGun)
					&& isFalse(hitMonicaSword)
					&& isFalse(hitRidepod)
					&& isFalse(hitMonster)
function usedMonicaMagic() => isTrue(hitMonicaMagic)
					
function onlyMonica() => isFalse(hitItems)
					&& isFalse(hitMaxRight) 
					&& isFalse(hitMaxGun)
					&& isFalse(hitRidepod)
					&& isFalse(hitMonster)
function usedMonica() => hitMonicaRight + hitMonicaLeft != 0
					
function onlyRidepod() => isFalse(hitItems)
					&& isFalse(hitMaxRight) 
					&& isFalse(hitMaxGun)
					&& isFalse(hitMonicaSword)
					&& isFalse(hitMonicaMagic)
					&& isFalse(hitMonster)
function usedRidepod() => isTrue(hitRidepod)
					
function onlyMonster() => isFalse(hitItems)
					&& isFalse(hitMaxRight) 
					&& isFalse(hitMaxGun)
					&& isFalse(hitMonicaSword)
					&& isFalse(hitMonicaMagic)
					&& isFalse(hitRidepod)
function usedMonster() => isTrue(hitMonster)
					
function onlyItems() => isFalse(hitMaxRight) 
					&& isFalse(hitMaxGun)
					&& isFalse(hitMonicaSword)
					&& isFalse(hitMonicaMagic)
					&& isFalse(hitRidepod)
					&& isFalse(hitMonster)
function usedItems() => isTrue(hitItems)
					
function notHealed() => isFalse(hasHealed)
			
//#endregion }

//#region Achievement_Logic {
function chapterAchievement(id, ch, title, points){
	if (ch == _chpPrologue)
		description = "Escape the circus tent."
	else
		description = format("Complete Chapter {0} - {1}", 
				_dictChapterNum[ch], _dictChapter[ch])
	
	trigger = notInTitle()
			&& finishChap(ch)
			
	achievement(title = title, points = points, description = description, trigger = trigger, id = id)
}

function weaponBuildAchievement(id, wpFrom, wpTo, title, points){
	
	itId = itemId(buildUpPointer2)
	itNCh = itemNameChangeFlag(buildUpPointer2)
	
	trigger =  notInTitle()
			&& buildUp2 == 2
			&& buildUpPointer2 != 0
			&& itNCh == 0
			&& itId == wpTo
			//-Old Logic
			//-never(prev(switchWindow) != switchWindow)
			//-&& once(buildUpWindowFlag == 1)
			
			
	if (wpFrom == 0){
		description = format("Build up to the {0}", 
				_dictItems[wpTo])
				
		trigger = trigger && prev(itId) != wpTo
	}
	else{
		description = format("Build up to the {0} from a {1}", 
				_dictItems[wpTo], _dictItems[wpFrom])
				
		trigger = trigger && prev(itId) == wpFrom
	}
	
	achievement(title = title, points = points, description = description, trigger = trigger, id = id)
}

function weaponSynthMaxAchievement(id, wp, title, points){
	
	description = format("Synth a legit {0}	with max stats", _dictItems[wp])
	trigger = notInTitle()
			&& synthPointer != 0
			&& maxStat(wp, synthPointer)
	
	achievement(title = title, points = points, description = description, trigger = trigger, id = id)
}

function floorMedalAchievement(id, dun, fl, title, points){	
	if (title == "") title = _dictFloor[dun][fl]
	description = format("Get every medal at {0} floor in {1}", _dictFloor[dun][fl], _dictDungeon[dun])
	
	medalNum = _dictFloorMedals[dun][fl]
	
	trigger =  notInTitle()
			&& inDungeonV(dun)
			&& inFloor(dun, fl)
			&& isTrue(floorUnlocked(dun, fl))
			&& isTrue(floorFinished(dun, fl))
			&& measured(floorMedal1(dun, fl) 
						+ floorMedal2(dun, fl) 
						+ floorMedal3(dun, fl)
						+ floorMedal4(dun, fl) == medalNum,
						notInTitle())
			&& (floorMedal1(dun, fl) 
				+ floorMedal2(dun, fl) 
				+ floorMedal3(dun, fl)
				+ floorMedal4(dun, fl) < medalNum)
	
	achievement(title = title, points = medalNum, description = description, trigger = trigger, id = id)
}

function floorSphedaPrizeAchievement(id, dun, priz, title, points){		
	prizeName = "main"
	if (priz == 2)
		prizeName = "sub"

	if (title == "") title = format("Spheda {0} {1}", prizeName, _dictDungeon[dun])
	description = format("Get every Spheda {0} prize from {1}", prizeName, _dictDungeon[dun])
	
	grparr = dictDunFloorList(dun, _dictDunFloorSphedaList)
	
	trigger =  never(inTitle2())
			&& inDungeonV(dun)
			
	if (priz == 1)
		trigger = trigger 
			&&  measured(tally_of(grparr, length(grparr), floorEverySphedaMainGrp),
				notInTitle())
			&& any_of(grparr, pfloorEverySphedaMainGrp)
			
	if (priz == 2)
		trigger = trigger 
			&&  measured(tally_of(grparr, length(grparr), floorEverySphedaSubGrp),
				notInTitle())
			&& any_of(grparr, pfloorEverySphedaSubGrp)			
			
	achievement(title = title, points = points, description = description, trigger = trigger, id = id)
}

function dungeonFloorKillAllAchievement(id, dn, title, points){	
	if (title == "") title = "Kill in " +  _dictDungeon[dn]
	description = format("Kill every enemy on every area of {0}", _dictDungeon[dn])
	
	grparr = dictDunFloorList(dn, _dictDunFloorList)
	
	trigger =  inDungeonV(dn)
			&& measured(
				sum_of(grparr, floorKillAllGrp) == length(_dictDunFloorList[dn]),
				notInTitle()
			)
			&& sum_of(grparr, pfloorKillAllGrp) == length(_dictDunFloorList[dn]) - 1
			&& any_of(grparr, inFloorArr)
	
	achievement(title = title, points = points, description = description, trigger = trigger, id = id)
}

function dungeonFloorGeostoneAllAchievement(id, dn, title, points){
	if (title == "") title = "Geostone in " +  _dictDungeon[dn]
	description = format("Get every Geostone from {0}", _dictDungeon[dn])
	
	grparr = dictDunFloorList(dn, _dictDunFloorGeostoneList)
	
	trigger =  inDungeonV(dn)
			&& measured(
				sum_of(grparr, floorGeostoneAllGrp) == length(_dictDunFloorGeostoneList[dn]),
				notInTitle()) 
			&& sum_of(grparr, floorGeostoneAllGrp) == length(_dictDunFloorGeostoneList[dn]) - 1
			&& any_of(grparr, inFloorArr)			
	
	achievement(title = title, points = points, description = description, trigger = trigger, id = id)
}


function dungeonFloorEveryMonsterAchievement(id, dn, title, points){	
	if (title == "") title = "Monsters in " +  _dictDungeon[dn]
	description = format("Defeat one of every monster in {0}", _dictDungeon[dn])
	
	grparr = _dictDunMonsterList[dn]//-dictDunFloorList(dn, _dictDunMonsterList)
	flrarr = dictDunFloorList(dn, _dictDunFloorList)
	
	trigger =  never(inTitle2())
			&& inDungeonV(dn)
			&& measured(tally_of(grparr, length(grparr), floorEveryMonsterGrp),
				notInTitle())
			&& any_of(grparr, pfloorEveryMonsterGrp)
			//-&& any_of(flrarr, inFloorArr)
	
	achievement(title = title, points = points, description = description, trigger = trigger, id = id)
}

function dungeonFloorEveryMimicAchievement(id, title, points){	
	if (title == "") title = "Mimics"
	description = "Defeat every type of Mimic"
	
	grparr = _dictMimicList
	
	trigger = never(inTitle2())
			&& inDungeon()
			&& measured(tally_of(grparr, length(grparr), floorEveryMonsterGrp),
				notInTitle())
			&& any_of(grparr, pfloorEveryMonsterGrp)
			
	achievement(title = title, points = points, description = description, trigger = trigger, id = id)
}

function ideaAchievement(id, chp, title, desc, points){
	
	description = format("Get every photo Idea obtainable {0} (open Idea Book)", desc)

	trigger =  measured(tally_of(_dictChapterIdeas[chp], length(_dictChapterIdeas[chp]), foundIdea2), notInTitle() && inPhotoAlbum()) 
			&& hadPhotos(_dictChapterIdeas[chp])
				//-(always_false() ||
				//-	trigger_when(0 == 1))
	
	achievement(title = title, points = points, description = description, trigger = trigger, id = id)
}

function inventionAchievement(id, chp, title, points){
	
	description = format("Find every invention available since chapter {0}", _dictChapterNum[chp])

	trigger =  measured(tally_of(_dictChapterInventions[chp], 
						length(_dictChapterInventions[chp]), foundInvention), notInTitle()) &&
				turnOff(inventingFlag) && 
				isNewInvention(_dictChapterInventions[chp])
	
	achievement(title = title, points = points, description = description, trigger = trigger, id = id)
}

function instaPhotoAchievement(id, pht, title, points){
	
	description = format("Get the {0}", _dictInstaPhoto[pht])

	trigger =  notInTitle()
				&& photoMode == 4 
				&& instaPhoto(pht)
	
	achievement(title = title, points = points, description = description, trigger = trigger, id = id)
}

function scoopAchievement(id, chp, title, points){
	
	description = format("Report every scoop for chapter {0}", _dictChapterNum[chp])

	trigger =  measured(sum_of(_dictChapterScoops[chp], foundScoop) == length(_dictChapterScoops[chp]), 
				notInTitle()) 
				&& any_of(_dictChapterScoops[chp], notFoundScoop) 
				//-&& turnOff(talkingFlag)
	
	achievement(title = title, points = points, description = description, trigger = trigger, id = id)
}

function georama100Achievement(id, mp, title, points){
	if (title == "") title = format("Georama 100% {0}",  _dictMap[mp])
	
	dictGeo = _dictGeoramaChecks[mp]
	reward = _dictGeoramaRewards[mp]
	
	description = format("Get 100% Georama on the {0} region and receive the {1}",
						_dictMap[mp], 
						_dictItems[reward[0]])
						
	
	
	trigger =  measured(sum_of(dictGeo, getByte) == length(dictGeo), 
				notInTitle(), "percent") 
			//--&&	sum_of(dictGeo, getPByte) < length(dictGeo) 
			&& notDungeon()
			&& notIntoItems()
			//-Replacing Georama map for Reward map
			//--&&	mapId == mp
			&& never(mapId != reward[1])
			&& finishedCutscene()
			//-not gotItem because cutscene can be skipped		
			&& onceGotItemInventory(reward[0])
			
	if (mp == _mpMoonFlowerPalace){
		description = format("Get 100% Georama on the {0} region and receive the {1}",
						_dictMap[mp], 
						"Sun and Moon Stones")
		trigger =  measured(sum_of(dictGeo, getByte) == length(dictGeo), 
				notInTitle(), "percent") 
			&& notDungeon()
			&& notIntoItems()
			&& never(mapId != reward[1] && mapId != _mpMFPCutscene)
			&& once(turnOn(bit4(0x01e0186d)))
			&& finishedCutscene()
	}
	
	achievement(title = title, points = points, description = description, trigger = trigger, id = id)
}

function miracleChestAchievement(id, ch, title, points){
	if (ch < 100){
		if (title == "") title = format("Chests ch {0}",  _dictChapter[ch])
		description = format("Open every miracle chest available at chapter {0}", _dictChapter[ch])
	}
	else{
		if (title == "") title = format("Powerups {0}",  _dictItems[ch])
		description = format("Find every {0}", _dictItems[ch])
	}	

	dictChest = _dictChestsChapter[ch]
	trigger =  measured(sum_of(dictChest, getBit) == length(dictChest), 
				notInTitle()) 
			&&	sum_of(dictChest, getPBit) == length(dictChest) - 1
			&&	notDungeon()
	
	achievement(title = title, points = points, description = description, trigger = trigger, id = id)
}

function caughtFishAchievement(id, fsh, title, points){
	if (title == "") title = _dictFishName[fsh]
	description = format("Catch a {0}", _dictFishName[fsh])

	trigger =  notInTitle()
			&& isFishing() 
			&& successfulFishing() 
			&& gotItem(fsh)
	
	achievement(title = title, points = points, description = description, trigger = trigger, id = id)
}

function fishStatAchievement(id, st, title, points){
	if (title == "") title = _dictFishStatName[st]
	description = format("Raise a fish to 100 {0}", _dictFishStatName[st])
	
	currentTank = 0 //-REC Tank
	currTankFirstFish = firstFishIdRecTank
	
	if (st == fishStrOffset){
		currentTank = 1 //-Battle Tank
		currTankFirstFish = firstFishIdBattleTank
	}

	trigger =  notInTitle() 
			&& tankLooking == currentTank 
			&& statFishRaised(st, currTankFirstFish, 100)
	
	achievement(title = title, points = points, description = description, trigger = trigger, id = id)
}

function fishMoodAchievement(id, title, points){
	description = "Have a Moody, Sore Loser, Reckless and Clownish fish in the Rec Tank"
	
	//-addedFishInTank(firstFishIdRecTank, 3) && //-Added fish on the 4th slot
	trigger =  notInTitle()
			&& searchEveryMoodInTank(0, firstFishIdRecTank)
	
	achievement(title = title, points = points, description = description, trigger = trigger, id = id)
}

function perfectFishAchievement(id, title, points){
	description = "Raise a fish to MAX status"
	
	trigger = notInTitle() 
			&& haveFishMaxStatus()
	
	achievement(title = title, points = points, description = description, trigger = trigger, id = id)
}

function breedFishAchievement(id, title, points){
	description = "Breed a pair of fish"
	
	trigger =  notInTitle() 
			&& tankLooking == 2 //-Breed Tank
			&& never(breedTankCounter != prev(breedTankCounter))
			&& once(removedFishInTank(firstFishIdBreedTank, 1))
			&& once(increasedFishStat(firstFishIdBreedTank))
	
	achievement(title = title, points = points, description = description, trigger = trigger, id = id)
}

function recruitAchievement(id, ch, title, points){	
	description = format("Recruit {0}", _dictRecruitables[ch])
	if (title == "") title = description

	trigger = notInTitle()
			&& charRequestDone(ch)
	
	achievement(title = title, points = points, description = description, trigger = trigger, id = id)
}

function monsterBadgeAchievement(id, bg, title, points){	
	if (title == "") title = format("{0} Badge", _dictMonsterBadges[bg])
	description = format("Get the {0} Badge", _dictMonsterBadges[bg])
	
	trigger = notInTitle()
			&& turnOn(getBadgeGotten(bg))			
			
	if (bg != _mbSun && bg != _mbMoon){
		monsters = _dictMonsterBadgesGrp[bg]
		
		trigger = trigger 
			&& fromTo(getBadgeMonId(bg), 0, monsters[0])
	}
	
	achievement(title = title, points = points, description = description, trigger = trigger, id = id)
}

function evolveMonsterAchievement(id, bg, fromMon, toMon, title, points){
	if (title == "") title = format("Evolve {0} to {1}", 
					_dictMonsterBadgesNames[fromMon], 
					_dictMonsterBadgesNames[toMon])
	description = format("Change class from a {0} to a {1}", 
					_dictMonsterBadgesNames[fromMon], 
					_dictMonsterBadgesNames[toMon])
	
	fromTier = _dictMonsterBadgesTiers[fromMon]
	toTier = _dictMonsterBadgesTiers[toMon]
	
	trigger = notInTitle()
			&& isTrue(getBadgeGotten(bg))
			&& fromTo(getBadgeMonId(bg), fromMon, toMon)
			&& fromTo(getBadgeEvol(bg), fromTier, toTier)
			&& getBadgeLevel(bg) >= toTier * 25
	
	achievement(title = title, points = points, description = description, trigger = trigger, id = id)
}

function evolveAnyMonsterAchievement(id, title, points){
	if (title == "") title = "Evolve Any"
	description = "Make any monster change class"
	
	trigger = notInTitle() 
			&& ( always_false() ||
				(isTrue(getBadgeGotten(_mbBeast))
				&& getBadgeEvol(_mbBeast) == prev(getBadgeEvol(_mbBeast)) + 1)
			|| (isTrue(getBadgeGotten(_mbWindup))
				&& getBadgeEvol(_mbWindup) == prev(getBadgeEvol(_mbWindup)) + 1)
			|| (isTrue(getBadgeGotten(_mbAcuatic))
				&& getBadgeEvol(_mbAcuatic) == prev(getBadgeEvol(_mbAcuatic)) + 1)
			|| (isTrue(getBadgeGotten(_mbFlora))
				&& getBadgeEvol(_mbFlora) == prev(getBadgeEvol(_mbFlora)) + 1)
			|| (isTrue(getBadgeGotten(_mbMagical))
				&& getBadgeEvol(_mbMagical) == prev(getBadgeEvol(_mbMagical)) + 1)
			|| (isTrue(getBadgeGotten(_mbDarkling))
				&& getBadgeEvol(_mbDarkling) == prev(getBadgeEvol(_mbDarkling)) + 1)
			|| (isTrue(getBadgeGotten(_mbReptile))
				&& getBadgeEvol(_mbReptile) == prev(getBadgeEvol(_mbReptile)) + 1)
			|| (isTrue(getBadgeGotten(_mbSpirit))
				&& getBadgeEvol(_mbSpirit) == prev(getBadgeEvol(_mbSpirit)) + 1)
			|| (isTrue(getBadgeGotten(_mbUndead))
				&& getBadgeEvol(_mbUndead) == prev(getBadgeEvol(_mbUndead)) + 1)
			|| (isTrue(getBadgeGotten(_mbCard))
				&& getBadgeEvol(_mbCard) == prev(getBadgeEvol(_mbCard)) + 1)
			)
				
	achievement(title = title, points = points, description = description, trigger = trigger, id = id)
}

function evolveMonsterLevelAchievement(id, tim, title, points){
	if (title == "") title = format("Evolve monster {0}", tim)
	
	dictTimes = {
		1: "once",
		2: "for the 2nd time",
		3: "to its final form"
	}
		
	description = format("Make any monster change class {0}", dictTimes[tim])
	
	trigger = notInTitle() 
			&& ( always_false() ||
				(isTrue(getBadgeGotten(_mbBeast))
				&& getBadgeEvol(_mbBeast) == tim 
				&& prev(getBadgeEvol(_mbBeast)) == tim - 1)
			|| (isTrue(getBadgeGotten(_mbWindup))
				&& getBadgeEvol(_mbWindup) == tim 
				&& prev(getBadgeEvol(_mbWindup)) == tim - 1)
			|| (isTrue(getBadgeGotten(_mbAcuatic))
				&& getBadgeEvol(_mbAcuatic) == tim 
				&& prev(getBadgeEvol(_mbAcuatic)) == tim - 1)
			|| (isTrue(getBadgeGotten(_mbFlora))
				&& getBadgeEvol(_mbFlora) == tim 
				&& prev(getBadgeEvol(_mbFlora)) == tim - 1)
			|| (isTrue(getBadgeGotten(_mbMagical))
				&& getBadgeEvol(_mbMagical) == tim 
				&& prev(getBadgeEvol(_mbMagical)) == tim - 1)
			|| (isTrue(getBadgeGotten(_mbDarkling))
				&& getBadgeEvol(_mbDarkling) == tim 
				&& prev(getBadgeEvol(_mbDarkling)) == tim - 1)
			|| (isTrue(getBadgeGotten(_mbReptile))
				&& getBadgeEvol(_mbReptile) == tim 
				&& prev(getBadgeEvol(_mbReptile)) == tim - 1)
			|| (isTrue(getBadgeGotten(_mbSpirit))
				&& getBadgeEvol(_mbSpirit) == tim 
				&& prev(getBadgeEvol(_mbSpirit)) == tim - 1)
			|| (isTrue(getBadgeGotten(_mbUndead))
				&& getBadgeEvol(_mbUndead) == tim 
				&& prev(getBadgeEvol(_mbUndead)) == tim - 1)
			|| (isTrue(getBadgeGotten(_mbCard))
				&& getBadgeEvol(_mbCard) == tim 
				&& prev(getBadgeEvol(_mbCard)) == tim - 1)
			)
				
	achievement(title = title, points = points, description = description, trigger = trigger, id = id)
}

function levelMonsterAchievement(id, bg, mon, title, points){
	if (title == "") title = format("Lv99 {0}", 
					_dictMonsterBadgesNames[mon])
	description = format("Get a Level 99 {0}", 
					_dictMonsterBadgesNames[mon])
	
	trigger = notInTitle()
			&& isTrue(getBadgeGotten(bg))
			&& getBadgeMonId(bg) == mon
			&& fromTo(getBadgeLevel(bg), 97, 98)
	
	achievement(title = title, points = points, description = description, trigger = trigger, id = id)
}

function floorMonsterAchievement(id, dun, fl, bg, title, points){	
	if (title == "") title = format("Monster Floor {0}", _dictFloor[dun][fl])
	
	description = format("Clear {0} - {1} with a {2} badge monster", 
					_dictDungeon[dun],
					_dictFloor[dun][fl],
					_dictMonsterBadges[bg])
	
	maxLevel = 99
	
	if (dun != _dZMine)
		maxLevel = _dictFloorLevelCap[dun][fl]
	
	if (maxLevel == 99){
		description = format("{0} not higher than LV{1}", description, maxLevel)
	}
	
	trigger =  notInTitle()
			//-&& never(character == _chrRidepod)
			//-&& never(character == _chrMax)
			//-&& never(character == _chrMonica && hasAttacked())
			//-&& once(fromTo(hideHUD, 2, 0) && attackAddress == 0)
			&& inDungeonV(dun)			
			&& onlyMonster()
			&& never(!inDungeon())
			&& once(wasNotDungeon() 
				&& inDungeonV(dun))
			&& inFloor(dun, fl)
			&& character == _chrMonster
			&& any_of(_dictMonsterBadgesGrp[bg], isMonsterInGroup)
			&& getBadgeLevel(bg) < maxLevel
			&& never(character == _chrMonster && 
				none_of(_dictMonsterBadgesGrp[bg], isMonsterInGroup))
			&& trigger_when(clearAllFirst(dun, fl) || clearAllDungeon())
	
	achievement(title = title, points = points, description = description, trigger = trigger, id = id)
}

function ridepodPartAchievement(id, it, title, points){
	if (title == "") title = format("Ridepod {0}", 
					_dictItems[it])
	description = format("Get {0} Ridepod parts from I to IV", 
					_dictItems[it])
					
	dictParts = _dictRidepodPartGroups[it]
	
	trigger = notInTitle()
			&& unless(!inventing())
			&&	hasItemInventory(it)
			&&	hasItemInventory(dictParts[0])
			&&	hasItemInventory(dictParts[1])
			&&	hasItemInventory(dictParts[2])
			&& (always_false()
			||	madeInvention(it)				
			||	madeInvention(dictParts[0])
			||	madeInvention(dictParts[1])
			||	madeInvention(dictParts[2]))			
	
	achievement(title = title, points = points, description = description, trigger = trigger, id = id)
}

function makeInventionAchievement(id, it, ch, title, points){
	if (title == "") title = format("Make {0}", 
					_dictItems[it])
					
	description = format("Make the {0}", 
					_dictItems[it])
	
	trigger = notInTitle()
			&&	madeInvention(it)
				
	if (ch != 0){
		description = format("{0} at chapter {1}", 
							description, 
							_dictChapterNum[ch])
							
		trigger = trigger
				&& chapter == ch
	}
	
	achievement(title = title, points = points, description = description, trigger = trigger, id = id)
}

function ridepodSamuraiAchievement(id, title, points){
	if (title == "") title = "Samurai Ridepod"
	description = format("Equip Steve with the {0}, {1} and {2}", 
					_dictItems[_ivSamuraiBody], 
					_dictItems[_ivSamuraiArm],
					_dictItems[_ivMultiFeet])
	
	trigger = notInTitle()
			&& steveBody == _ivSamuraiBody
			&& steveFoot == _ivMultiFeet
			&& (steveArm == _ivSamuraiArm ||
				steveArm == _ivSamuraiArmII ||
				steveArm == _ivSamuraiArmIII ||
				steveArm == _ivSamuraiArmIV)
			&& (always_false()
			||	prev(steveBody) != _ivSamuraiBody
			||	prev(steveFoot) != _ivMultiFeet
			||	(steveArm == _ivSamuraiArm 
				&& prev(steveArm) != _ivSamuraiArm)
			||	(steveArm == _ivSamuraiArmII 
				&& prev(steveArm) != _ivSamuraiArmII)
			||	(steveArm == _ivSamuraiArmIII 
				&& prev(steveArm) != _ivSamuraiArmIII)
			||	(steveArm == _ivSamuraiArmIV 
				&& prev(steveArm) != _ivSamuraiArmIV)
			)
	
	achievement(title = title, points = points, description = description, trigger = trigger, id = id)
}

function ridepodMilkAchievement(id, title, points){
	if (title == "") title = "Milk Ridepod"
	description = format("Equip Steve with the {0}, {1} and {2}",
					_dictItems[_ivMilkCanBody], 
					_dictItems[_ivBucketLeg],
					_dictItems[_ivEnergyPack])
	
	trigger = notInTitle()
			&& steveBody == _ivMilkCanBody
			&& steveEnergyPk == _ivEnergyPack
			&& steveFoot == _ivBucketLeg
			&& (always_false()
			||	prev(steveBody) != _ivMilkCanBody
			||	prev(steveEnergyPk) != _ivEnergyPack
			||	prev(steveFoot) != _ivBucketLeg)
	
	achievement(title = title, points = points, description = description, trigger = trigger, id = id)
}

function clownCostumesAchievement(id, title, points){
	if (title == "") title = "Clown Mode"
	description = "Have Max and Steve in full Clown mode"
	
	trigger = notInTitle()
			&& maxHead == _ioClownHat
			&& maxBody == _ioClownSuit
			&& maxShoes == _ioClownShoes
			&& steveBody == _ivClownBody
			&& steveFoot == _ivClownBody
			&& (steveArm == _ivClownHand ||
				steveArm == _ivClownHandII ||
				steveArm == _ivClownHandIII ||
				steveArm == _ivClownHandIV)
			&& (always_false()
			||	prev(steveBody) != _ivClownBody
			||	prev(steveFoot) != _ivClownFoot
			|| 	prev(maxHead) != _ioClownHat
			|| 	prev(maxBody) != _ioClownSuit
			|| 	prev(maxShoes) != _ioClownShoes
			||	(steveArm == _ivClownHand
				&& prev(steveArm) != _ivClownHand)
			||	(steveArm == _ivClownHandII
				&& prev(steveArm) != _ivClownHandII)
			||	(steveArm == _ivClownHandIII
				&& prev(steveArm) != _ivClownHandIII)
			||	(steveArm == _ivClownHandIV
				&& prev(steveArm) != _ivClownHandIV)
			)
	
	achievement(title = title, points = points, description = description, trigger = trigger, id = id)
}

function maxOutfitAchievement(id, outf, title, points){
	if (title == "") title = format("{0} Monica", _dictOutfits[outf])
	description = format("Equip Monica with the {0} outfit", _dictOutfits[outf])
	
	trigger = notInTitle()
			&& monicaHead == _ioPrincessOrb
			&& monicaBody == _ioPrincessDress
			&& monicaShoes == _ioPrincessBoots
			&& (always_false()			
			|| 	prev(monicaHead) != _ioPrincessOrb
			|| 	prev(monicaBody) != _ioPrincessDress
			|| 	prev(monicaShoes) != _ioPrincessBoots
			)
	
	achievement(title = title, points = points, description = description, trigger = trigger, id = id)
}

function monicaOutfitAchievement(id, outf, title, points){
	if (title == "") title = format("{0} Monica", _dictOutfits[outf])
	description = format("Equip Monica with the {0} outfit", _dictOutfits[outf])
	
	trigger = notInTitle()
			&& monicaHead == _ioPrincessOrb
			&& monicaBody == _ioPrincessDress
			&& monicaShoes == _ioPrincessBoots
			&& (always_false()			
			|| 	prev(monicaHead) != _ioPrincessOrb
			|| 	prev(monicaBody) != _ioPrincessDress
			|| 	prev(monicaShoes) != _ioPrincessBoots
			)
	
	achievement(title = title, points = points, description = description, trigger = trigger, id = id)
}

function voiceUnitAchievement(id, title, points){
	if (title == "") title = "Voice Unit"
	description = "Get the Voice Unit for Steve"
	
	trigger = notInTitle()
			&& turnOn(voiceUnit)
	
	achievement(title = title, points = points, description = description, trigger = trigger, id = id)
}

function shieldKitAchievement(id, title, points){
	if (title == "") title = "Shield Kit"
	description = "Upgrade Steve's Core to MAX defense with every Shield Kit"
	
	trigger = notInTitle()
			&& measured(shieldKits == 21)
			&& prev(shieldKits) == 20
	
	achievement(title = title, points = points, description = description, trigger = trigger, id = id)
}

function bestCoreAchievement(id, title, points){
	if (title == "") title = "Master Core"
	description = "Get the Master Core for Steve"
	
	trigger = notInTitle()
			&& (always_false() 
			|| bestCoreInventory())
	
	achievement(title = title, points = points, description = description, trigger = trigger, id = id)
}

function fishContestAchievement(id, title, points){
	if (title == "") title = "Fish Contest"
	description = "Win the Fishing Contest"
	
	trigger = notInTitle()
			&& notDungeon() 
			&& mapId == _mpFishContest
			&& prev(fishContestResult) > 1
			&& prev(fishContestResult) < 0xffff
			&& fishContestResult == 1
	
	achievement(title = title, points = points, description = description, trigger = trigger, id = id)
}

function fishFrenzyAchievement(id, fsh, title, points){
	if (title == "") title = format("Fish Frenzy {0}", _dictFishFrenzy[fsh])
	description = format("Win the Fish Frenzy {0} Class on 1st place", _dictFishFrenzy[fsh])
	
	trigger = notInTitle()
			&& notDungeon()
			&& mapId == _mpFishFrenzy
			&& turnOn(fishContestResult)
			&& turnOn(itemGottenCount)
			&& fishFrenzyLevel == fsh
	
	achievement(title = title, points = points, description = description, trigger = trigger, id = id)
}

function sphedaHoleOneAchievement(id, title, points){
	if (title == "") title = "Hole in One"
	description = "Complete any spheda course (except tutorial) with only one shot"
	
	trigger = notInTitle()
			&& inDungeon()
			&& never(inDungeonV(_dSCanyon) && inFloor(_dSCanyon, _fBargasValley))
			&& never(!inDungeon())
			&& once(prev(sphedaPointer) == 0 
				&& sphedaPointer != 0)
			&& never(sphedaPointer != 0 && sphedaShots < prev(sphedaShots))
			&& trigger_when(turnOff(sphedaFlag))
	
	achievement(title = title, points = points, description = description, trigger = trigger, id = id)
}

function rodBuildUp(id, stat, title, points){
	statAdd = _dictRodStat[stat][0]
	statName = _dictRodStat[stat][1]
	statVal = _dictRodStat[stat][2]
	
	if (title == "") title = format("Rod {0}", statName)
	description = format("Get any rod {0} up to {1}", statName, statVal) 	
	
	trigger = notInTitle()
			&& never(notBuildingFish())
			&& once(startFishBuildUp() && word(statAdd) < statVal)
			&& word(statAdd) >= statVal
			&& finishedFishBuildUp()
	
	achievement(title = title, points = points, description = description, trigger = trigger, id = id)
}

function rodBuildUp2(id, stat, title, points){
	statAdd = dictRodStat(stat, buildUpPointer2)
	statName = _dictRodStat[stat][1]
	statVal = _dictRodStat[stat][2]
	
	if (title == "") title = format("Rod {0}", statName)
	description = format("Get any rod {0} up to {1}", statName, statVal) 	
	
	trigger = notInTitle()
			&& never(notBuildingFish())
			&& once(startFishBuildUp() && statAdd < statVal)
			&& statAdd >= statVal
			&& finishedFishBuildUp()
	
	achievement(title = title, points = points, description = description, trigger = trigger, id = id)
}

function rodBuildUp3(id, rod, title, points){
	statFlight = dictRodStat(_rodFlight, buildUpPointer2)
	statStrength = dictRodStat(_rodStrength, buildUpPointer2)
	statResilience = dictRodStat(_rodResilience, buildUpPointer2)
	statGrip = dictRodStat(_rodGrip, buildUpPointer2)
	statLuck = dictRodStat(_rodLuck, buildUpPointer2)	
	statVal = 25
		
	if (title == "") title = format("Rod {0}", _dictItems[rod])
	if (rod == _ivLureRod) statVal = 50 
	
	description = format("Make a {0} with every stat at {1}", _dictItems[rod], statVal) 	
	
	trigger = notInTitle()
			&& never(notBuildingFish())
			&& never (itemId(buildUpPointer2) != rod)
			&& once(startFishBuildUp() && 
				(statFlight < statVal 
				|| statStrength < statVal
				|| statResilience < statVal
				|| statGrip < statVal
				|| statLuck < statVal))
			&& statFlight >= statVal 
			&& statStrength >= statVal
			&& statResilience >= statVal
			&& statGrip >= statVal
			&& statLuck >= statVal
			&& finishedFishBuildUp()
	
	achievement(title = title, points = points, description = description, trigger = trigger, id = id)
}

function gotItemAchievement(id, it, title, points){	
	if (title == "") title = format("Get {0}", _dictItems[it])
	description = format("Get the {0}", _dictItems[it]) 	
	
	trigger = notInTitle()
			&& gotItemInventory(it)
			&& notIntoItems()
	
	achievement(title = title, points = points, description = description, trigger = trigger, id = id)
}

function gotItemCutsceneAchievement(id, it, dun, fl, title, points){	
	if (title == "") title = format("Get {0}", _dictItems[it])
	description = format("Get the {0}", _dictItems[it]) 	
	
	trigger = notInTitle()
			&& never(!inFloor(dun, fl))
			&& finishedCutscene()
			&& onceGotItemInventory(it)
			&& notIntoItems()
	
	achievement(title = title, points = points, description = description, trigger = trigger, id = id)
}

function gotSwanAchievement(id, title, points){	
	if (title == "") title = "Swan [m]"
	description = "Clear the distortion in Barga's Valley by yourself" 	
	
	trigger = notInTitle()
			&& inDungeonV(_dSCanyon)
			&& inFloor(_dSCanyon, _fBargasValley)
			&& chapter == _chp3
			&& gotItemInventory(_isSwan)
	
	achievement(title = title, points = points, description = description, trigger = trigger, id = id)
}

function sphedaPracticeAchievement(id, title, points){	
	if (title == "") title = "Spheda Practice"
	description = "Repair every distortion in Spheda Practice Area"	
	
	trigger = notInTitle()
			&& sphedaExtras()
			&& sphedaPracticeCourseScore(0) != 0
			&& sphedaPracticeCourseScore(1) != 0
			&& sphedaPracticeCourseScore(2) != 0
			&& sphedaPracticeCourseScore(3) != 0
			&& sphedaPracticeCourseScore(4) != 0
			&& sphedaPracticeCourseScore(5) != 0
			&& sphedaPracticeCourseScore(6) != 0
			&& sphedaPracticeCourseScore(7) != 0
			&& sphedaPracticeCourseScore(8) != 0
			&& sphedaPracticeHole == 8
			&& prev(sphedaPracticeCourseScore(8)) == 0
	
	achievement(title = title, points = points, description = description, trigger = trigger, id = id)
}

function cultureAchievement(id, cp, title, points){	
	if (title == "") title = format("Get {0} CP", cp)
	description = format("Get {0} culture points at any georama", cp) 	
	
	trigger = notInTitle()
			&& (always_false()
			|| (mapId == _mpSindain
				&& prev(word(_dictCP[_mpSindain])) < cp
				&& word(_dictCP[_mpSindain]) >= cp)
			|| (mapId == _mpBalanceValley
				&& prev(word(_dictCP[_mpBalanceValley])) < cp
				&& word(_dictCP[_mpBalanceValley]) >= cp)
			|| (mapId == _mpVeniccio
				&& prev(word(_dictCP[_mpVeniccio])) < cp
				&& word(_dictCP[_mpVeniccio]) >= cp)
			|| (mapId == _mpHeimRada
				&& prev(word(_dictCP[_mpHeimRada])) < cp
				&& word(_dictCP[_mpHeimRada]) >= cp))
	
	achievement(title = title, points = points, description = description, trigger = trigger, id = id)
}

function lindaLoseAchievement(id, title, points){	
	if (title == "") title = "Linda Lose"
	description = "While using the Ridepod, lose the battle against Linda"
	
	trigger = notInTitle()
			&& never(wasNotDungeon())
			&& once(inDungeonV(_dUChannel) 
				&& UCfloorId == _fChanPumpRoom 
				&& character == _chrRidepod
				&& prev(steveHP) > 0
				&& steveHP == 0)
			&& wasDungeon()
			&& notDungeon()
	
	achievement(title = title, points = points, description = description, trigger = trigger, id = id)
}

function bossAchievement(id, dun, fl, conf, title, points){
	//-Configuration
	healess = conf[0]
	damageless = conf[1]
	oItems = conf[2]
	oMonster = conf[3]
	oMonicaMagic = conf[4]
	oMonicaSword = conf[5]
	oMaxWrench = conf[6]
	oRidepod = conf[7]
	oMaxGun = conf[8]
	
	if (title == "") title = format("Boss {0}", _dictBosses[dun][fl])
	description = format("Defeat {0}", _dictBosses[dun][fl])
	
	trigger = notInTitle()
			&& never(wasNotDungeon())
			&& once(inDungeonV(dun) 
				&& inFloor(dun, fl)
				&& turnOn(bossAppeared))
	
	usedTrigger = always_true()
	
	if (isFalse(damageless) && isTrue(healess)) {
		description = description + " without healing"
		trigger = trigger && notHealed()
	}
	
	//-if (isTrue(damageless)) {
	//-	description = description + " without getting hit"
	//-	//-Implement for all 4 characters?
	//-}
	
	if (isTrue(oMonster)) {
		if (fl == _fMountGundorMouth) //-Check story flag for demon Gaspard
		{
			description = format("Defeat Ultimate {0}", _dictBosses[dun][fl])
			trigger = trigger && isTrue(fightUltimateGaspard)
		}
			
		description = description + " only using Monster Transformation"
		trigger = trigger && onlyMonster()
		usedTrigger = usedTrigger && usedMonster()
	}
	
	if (isTrue(oItems)) {
		description = description + " only using items"
		trigger = trigger && onlyItems()
		usedTrigger = usedTrigger && usedItems()
	}
	
	if (oMonicaMagic > 0) {
		trigger = trigger && onlyMonicaMagic()
		usedTrigger = usedTrigger && usedMonicaMagic()
		
		if (oMonicaMagic == 1){
			description = description + " only using Monica's magic"
		}
		else{
			description = format("{0} only using Monica's {1}", description, _dictItems[oMonicaMagic])
			trigger = trigger && never(usedMonicaMagic() && monicaLeftWeaponId != oMonicaMagic)
		}
	}
	
	if (oMonicaSword > 0) {
		trigger = trigger && onlyMonicaSword()
		usedTrigger = usedTrigger && usedMonicaSword()
		
		if (oMonicaSword > 0){
			description = description + " only using Monica's sword"
		}
		else{
			description = format("{0} only using Monica's {1}", description, _dictItems[oMonicaSword])
			trigger = trigger && never(usedMonicaSword() && monicaRightWeaponId != oMonicaSword)
		}
	}
	
	if (oMaxWrench > 0) {
		if (fl == _fShiguraVillage) //-Shiguras count as monster attack
			trigger = trigger && onlyMaxRightMon()
		else
			trigger = trigger && onlyMaxRight()
			
		usedTrigger = usedTrigger && usedMaxRight()
		
		if (oMaxWrench == 1){
			description = description + " only using Max's close range weapon"
		}
		else{
			description = format("{0} only using Max's {1}", description, _dictItems[oMaxWrench])
			trigger = trigger && never(usedMaxRight() && maxRightWeaponId != oMaxWrench)
		}
	}
	
	if (oRidepod > 0) {
		trigger = trigger && onlyRidepod()
		
		if (fl == _fMountGundorMouth) //-Check story flag for normal Gaspard
			trigger = trigger && isFalse(fightUltimateGaspard)
			
		usedTrigger = usedTrigger && usedRidepod()
		
		if (oMaxWrench == 1){
			description = description + " only using the Ridepod"
		}
		else{
			description = format("{0} only using the Ridepod's {1}", description, _dictItems[oRidepod])
			trigger = trigger && never(usedRidepod() && steveArm != oRidepod)
		}
	}
	
	if (oMaxGun > 0) {
		trigger = trigger && onlyMaxLeft()
		usedTrigger = usedTrigger && usedMaxLeft()
		
		if (oMaxGun == 1){
			description = description + " only using Max's gun"
		}
		else{
			description = format("{0} only using Max's {1}", description, _dictItems[oMaxGun])
			trigger = trigger && never(usedMaxLeft() && maxLeftWeaponId != oMaxGun)
		}
	}
	
	trigger = trigger 
		&& trigger_when(usedTrigger) 
		&& trigger_when(turnOn(bossDefeated) || turnOff(bossAppeared))
	
	achievement(title = title, points = points, description = description, trigger = trigger, id = id)
}

function bossTimeAchievement(id, dun, fl, secs, title, points){
		
	if (title == "") title = format("Boss Time {0}", _dictBosses[dun][fl])
	description = format("Defeat {0} in {1} secs or less", _dictBosses[dun][fl], secs)
	
	trigger = never(inTitle2())
			&& never(wasNotDungeon())
			&& once(inDungeonV(dun) 
				&& inFloor(dun, fl)
				&& turnOn(bossAppeared))
			&& never(once(inDungeonV(dun) 
				&& inFloor(dun, fl)
				&& turnOn(bossAppeared)) 
				&& tally((secs + 1) * 30, hour != prev(hour)))	
			&& trigger_when(turnOn(bossDefeated) || turnOff(bossAppeared))
	
	achievement(title = title, points = points, description = description, trigger = trigger, id = id)
}

function trainAchievement(id, title, points){	
	if (title == "") title = "Armed ATV"
	description = "Destroy the P-3000 without getting your train's health lower than 80%"
	
	trigger = notInTitle()
			&& never(prev(mapId) != _mpForestTunnel)
			&& never(trainHP < 0.8)
			&& once(notDungeon()
				&& mapId == _mpForestTunnel
				&& trainHP == 1.0)
			&& trigger_when(prev(mapId) == _mpForestTunnel
					&& mapId == _mpSindainStation)
	
	achievement(title = title, points = points, description = description, trigger = trigger, id = id)
}

function saveLinAchievement(id, title, points){	
	if (title == "") title = "Save Lin"
	description = "Save Lin"
	
	trigger = notInTitle()			
			&& never(mapId != _mpLinHouse)
			&& once(turnOn(savedLin))
			&& finishedCutscene()
	
	achievement(title = title, points = points, description = description, trigger = trigger, id = id)
}

function saveShingalaAchievement(id, title, points){	
	if (title == "") title = "Save Shingala"
	description = "Save Shingala"
	description = "Save Shingala"
	
	trigger = notInTitle()			
			&& never(!inDungeonV(_dORCave))
			&& never(!inFloor(_dORCave, _fCaveAncientMurals))
			&& once(turnOn(savedShingala))
			&& finishedCutscene()
	
	achievement(title = title, points = points, description = description, trigger = trigger, id = id)
}

function testAchievement(id){	
	title = "test"
	description = "Testing"
	
	trigger = onlyMaxRight()	
			&& notHealed()
			&& trigger_when(usedMaxRight())
	
	achievement(title = title, points = 0, description = description, trigger = trigger, id = id)
}
//#endregion }

//#region Leaderboard Logic {
function levelLeaderboard(id, dun, fl){
	
	title = _dictFloor[dun][fl]
	description = format("Clear {0} - {1} as fast as you can", 
				_dictDungeon[dun], _dictFloor[dun][fl])
	
	value = playtime - floorStartTime //-floorBestTime(dun, fl)
	
    start = notInTitle()
			&& inDungeonV(dun)
			&& inFloor(dun, fl)
			&& clearAllDungeon()
			//-&& ((prev(value) == 0 && value > 0)
			//-|| (prev(value) > value))
	
    cancel = always_false()
	
    submit = always_true()
	
    leaderboard(title, description, start, cancel, submit, value, "FRAMES", lower_is_better=true, id = id)    
}

function sphedaPracticeLeaderboard(id){
	
	title = "Spheda Practice Area"
	description = "Clear Spheda Practice Area with the highest score"
	
	value = sphedaPracticeCourseScore(0)
			+ sphedaPracticeCourseScore(1)
			+ sphedaPracticeCourseScore(2)
			+ sphedaPracticeCourseScore(3)
			+ sphedaPracticeCourseScore(4)
			+ sphedaPracticeCourseScore(5)
			+ sphedaPracticeCourseScore(6)
			+ sphedaPracticeCourseScore(7)
			+ sphedaPracticeCourseScore(8)
	
    start = sphedaExtras()
			&& sphedaPracticeHole == 8
			&& prev(titleFlag) == 0xa
			&& inTitle2()
	
    cancel = always_false()
	
    submit = always_true()
	
    leaderboard(title, description, start, cancel, submit, value, "SCORE", lower_is_better=false, id = id)
}

function levelMonsterLeaderboard(id, dun, fl, bg){
	
	title = format("[{0}] {1}", _dictMonsterBadges[bg], _dictFloor[dun][fl])
	description = format("Clear {0} - {1} with a {2} monster as fast as you can",
				_dictDungeon[dun], _dictFloor[dun][fl], _dictMonsterBadges[bg])
	
	maxLevel = 99
	
	if (dun != _dZMine)
	{
		maxLevel = _dictFloorLevelCap[dun][fl]
		description = format("Clear {0} - {1} with a {2} monster up to Lv{3} as fast as you can", 
				_dictDungeon[dun], _dictFloor[dun][fl], _dictMonsterBadges[bg], maxLevel)
	}
	
	value = playtime - floorStartTime //-floorBestTime(dun, fl)
	
    start = notInTitle()
			&& never(!inDungeon())
			&& once(wasNotDungeon() 
				&& inDungeonV(dun))
			&& onlyMonster()
			&& inFloor(dun, fl)
			&& character == _chrMonster
			&& any_of(_dictMonsterBadgesGrp[bg], isMonsterInGroup)
			&& getBadgeLevel(bg) < maxLevel
			&& never(character == _chrMonster && 
				none_of(_dictMonsterBadgesGrp[bg], isMonsterInGroup))
			&& clearAllDungeon()
	
    cancel = always_false()
	
    submit = always_true()
	
    leaderboard(title, description, start, cancel, submit, value, "FRAMES", lower_is_better=true, id = id)    
}

function fishLeaderboard(id, fsh){
	
	title = _dictFishName[fsh]
	description = format("Catch the biggest {0} (cm)", 
				_dictFishName[fsh])
	
    start = notInTitle()
			&& isFishing() 
			&& successfulFishing() 
			&& gotItem(fsh)
	
    cancel = always_false()
	
    submit = always_true()
	
	value = fishCaughtSize
	
    leaderboard(title, description, start, cancel, submit, value, "VALUE", lower_is_better=false, id = id)
}

function sherifLeaderboard(id){ //-INCOMPLETE
	//-Sherif time = 0x01ece600
	//-Can't find something to diferentiate Finish from Failure
	title = _dictFishName[fsh]
	description = format("Catch the biggest {0} (cm)", 
				_dictFishName[fsh])
	
    start = notInTitle()
			&& notDungeon() 
			&& mapId == _mpPalmBrinks 			
	
    cancel = always_false()
	
    submit = always_true()
	
	value = fishCaughtSize
	
    leaderboard(title, description, start, cancel, submit, value, "VALUE", lower_is_better=false, id = id)
}

function warningLeaderboard(id){ //-For CH3 CH6 glitch chest
	//-Sherif time = 0x01ece600
	//-Can't find something to diferentiate Finish from Failure
	title = "DON'T GET THAT CHEST UNTIL CH6"
	description = "The chest is glitched and will prevent you to get other chests, please reload your latest save"
	
    start = notInTitle()
			&& notDungeon() 
			&& mapId == _mpStarlightTemple
			&& chapter < _chp6
			&& turnOn(bit(_mcFETemple6[0], _mcFETemple6[1]))
	
    cancel = mapId != _mpStarlightTemple
	
    submit = always_false()
	
	value = bit(_mcFETemple6[0], _mcFETemple6[1])
	
    leaderboard(title, description, start, cancel, submit, value, "VALUE", lower_is_better=false, id = id)
}

function fishContestLeaderboard(id){
	title = "Fishing Contest"
	description = "Get the biggest catch on the Fishing Contest"
	
    start = notInTitle()
			&& notDungeon() 
			&& mapId == _mpFishContest
			&& prev(fishContestResult) > 1
			&& prev(fishContestResult) < 0xffff
			&& fishContestResult <= 3
			&& fishContestWeight > 1
	
    cancel = always_false()
	
    submit = always_true()
	
	value = fishContestWeight
	
    leaderboard(title, description, start, cancel, submit, value, "VALUE", lower_is_better=false, id = id)
}

function fishFrenzyLeaderboard(id){
	title = "Fish Frenzy"
	description = "Finish a race of Fish Frenzy as fast as possible"
	
	addrs = dword(0x00378638)
	lastLap = byte(0x01f5a12c)
	
    start = notInTitle()
			&& notDungeon() 
			&& mapId == _mpFishFrenzyRace
			&& prev(fishFrenzyTime) == 0
			&& fishFrenzyTime != 0
	
    cancel = always_false()
	
    submit = fromTo(lastLap, 1, 3)
	
	value = fishFrenzyTime * 33.243035906467 //-tally(0, playtime != prev(playtime))
	
    leaderboard(title, description, start, cancel, submit, value, "MILLISECS", lower_is_better=true, id = id)
}

//#endregion }

//#region Achievements {

if (subsetMonster == 0) {
//------Total: 386 Achievements, ???? Points------
//-********* function StoryAchievements()*********** (9)
//- Freak Show - Escape the circus tent. (3) //-Use story flag
chapterAchievement(0, _chpPrologue, "Freak Show", 3) //-(B)
//- To the Outside World - Complete Chapter One (10) //-From here, use Chapter values
chapterAchievement(0, _chp1, "To the Outside World", 10) //-(B)
//- Resurrection of the Great Elder - Complete Chapter Two (10)
chapterAchievement(0, _chp2, "Resurrection of the Great Elder", 10) //-(B)
//- Save Lin
saveLinAchievement(0, "Master Crest's Apprentice", 5)
//- The Sage of the Stars - Complete Chapter Three. (10)
chapterAchievement(0, _chp3, "The Sage of the Stars", 10) //-(B)
//-Save Shingala
saveShingalaAchievement(0, "Puppet Shingala No More", 5)
//- Good-Bye Shingala - Complete Chapter Four. (10) 
chapterAchievement(0, _chp4, "Good-Bye Shingala", 10) //-(B)
//- Conflict of the Past and Future - Complete Chapter Five. (10)
chapterAchievement(0, _chp5, "Conflict of the Past and Future", 10) //-(B)
//- When Two Eras Collide - Complete Chapter Six (10)
chapterAchievement(0, _chp6, "When Two Eras Collide", 10) //-(B)
//-  - Complete Chapter Seven/Finish the game (25)
chapterAchievement(0, _chp7, "Palace of Flowers", 25) //-(B)
//- The Forgotten Adventure - Complete Chapter Eight (25)
chapterAchievement(0, _chp8, "The Forgotten Adventure", 25) //-(B)

//-********* function WeaponAchievements()*********** (42)
//-Beware of the Change Name glitch, make sure everything is built
//-The idea is for the player to get every weapon at some point
gotItemCutsceneAchievement(0, _itEarthGem, _dRBWoods, _fChamberSleepEarthGem, "Earth!", 2) //-(B)
gotItemCutsceneAchievement(0, _itFireGem, _dMGundore, _fChamberBlazingFireGem, "Fire!", 2) //-(B)
gotItemCutsceneAchievement(0, _itWindGem, _dSCanyon, _fChamberDefendingWindGem, "Wind!", 2) //-(B)
gotItemCutsceneAchievement(0, _itWaterGem, _dORCave, _fChamberSleepingWaterGem, "Water!", 2) //-(B)

//-------------Max Right---------------
//-Build up to the Stinger Wrench (5)
weaponBuildAchievement(0, 0, _imaxrStingerWrench, "Sting n' Steal", 5) //-(B)
//-Build up to the Cubic Hammer (5)
weaponBuildAchievement(0, 0, _imaxrCubicHammer, "Damage Cubed", 5) //-(B)
//-Build up to the Frozen Tuna (3)
weaponBuildAchievement(0, 0, _imaxrFrozenTuna, "Eat Fish!", 5) //-(B)
//-Build up to the Big Bucks Hammer from a Kubera's Hand (5)
weaponBuildAchievement(0, _imaxrKuberaHand, _imaxrBigBucksHammer, "Path of the Politician", 5) //-(B)
//-Build up to the Grade Zero (10)
weaponBuildAchievement(0, 0, _imaxrGradeZero, "Back to Zero", 10) //-(B)
//-Build up to the Legend (10)
weaponBuildAchievement(0, 0, _imaxrLegend, "I am Legend", 10) //-(B)
//-Synth a legit Legend with max stats (25)
weaponSynthMaxAchievement(0, _imaxrLegend, "Legenday Mechanic", 25) //-(B)

//-------------Max Left---------------
//-Build up to the Dark Viper (5)
weaponBuildAchievement(0, 0, _imaxlDarkViper, "Black Mamba", 5) //-(B)
//-Build up to the Soul Breaker from a Magic Gun (5)
weaponBuildAchievement(0, 0, _imaxlSoulBreaker, "A Soul for a soul", 5) //-(B)
//-Build up to the Sexy Panther (5)
weaponBuildAchievement(0, 0, _imaxlSexyPanther, "My Little Pussycat", 5) //-(B)
//-Build up to the Question Shooter from a Jurak Gun (5)
weaponBuildAchievement(0, _imaxlJurakGun, _imaxlQuestionShooter, "What is a Gun?", 5) //-(B)
//-Build up to the Supernova (10)
weaponBuildAchievement(0, 0, _imaxlSupernova, "A Star Was", 10) //-(B)
//-Build up to the Last Resort (10)
weaponBuildAchievement(0, 0, _imaxlLastResort, "Prepare to be Vanished", 10) //-(B)
//-Build up to the Sigma Bazooka (10)
weaponBuildAchievement(0, 0, _imaxlSigmaBazooka, "I got you, Sigma!", 10) //-(B)
//-Synth a legit Supernova with max stats (25)
weaponSynthMaxAchievement(0, _imaxlSupernova, "Star Destroyer", 25) //-(B)

//-------------Monica Right---------------
//-Build up to the Shamshir (3)
weaponBuildAchievement(0, 0, _imonrShamshir, "Sashimi Maker", 3) //-(B)
//-Build up to the Halloween Blade (5)
weaponBuildAchievement(0, 0, _imonrHalloweenBlade, "This is HalloBlade", 5) //-(B)
//-Build up to the Big Bang (5)
weaponBuildAchievement(0, 0, _imonrBigBang, "In a Hot, Dense State", 5) //-(B)
//-Build up to the Claymore (5)
weaponBuildAchievement(0, 0, _imonrClaymore, "Yoma Hunter", 5) //-(B)
//-Build up to the Ruler's Sword (5)
weaponBuildAchievement(0, 0, _imonrRulersSword, "Aga's Treasure", 5) //-(B)
//-Build up to the Tsukikage (5)
weaponBuildAchievement(0, 0, _imonrTsukikage, "Moonlight Power", 5) //-(B)
//-Build up to the Lamb's Sword (5)
weaponBuildAchievement(0, 0, _imonrLambsSword, "Wolf In Sheep's Clothing", 5) //-(B)
//-Build up to the Maneater (5)
weaponBuildAchievement(0, 0, _imonrManeater, "She's a Maneater", 5) //-(B)
//-Build up to the Sword of Zeus (10)
weaponBuildAchievement(0, 0, _imonrSwordOfZeus, "Lighting at Mt. Olympus", 10) //-(B)
//-Build up to the 7th Heaven (10)
weaponBuildAchievement(0, 0, _imonr7thHeaven, "Road to Paradise", 10) //-(B)
//-Build up to the Griffon Fork from a Dark Excalibur (10)
weaponBuildAchievement(0, _imonrDarkExcalibur, _imonrGriffonFork, "Path of Darkness", 10) //-(B)
//-Build up to the Chronicle 2 (10)
weaponBuildAchievement(0, 0, _imonrChronicle2, "A Dark Chronicle", 10) //-(B)
//-Build up to the 7 Branch Sword (10)
weaponBuildAchievement(0, 0, _imonr7BranchSword, _dictItems[_imonr7BranchSword], 10) //-(B)
//-Build up to the Atlamillia Sword (10)
weaponBuildAchievement(0, 0, _imonrAtlamilliaSword, _dictItems[_imonrAtlamilliaSword], 10) //-(B)
//-Build up to the Muramasa (10)
weaponBuildAchievement(0, 0, _imonrMuramasa, "Now to find Masamune", 10) //-(B)
//-Build up to the Dark Cloud (10)
weaponBuildAchievement(0, 0, _imonrDarkCloud, _dictItems[_imonrDarkCloud], 10) //-(B)
//-Build up to the Mardanan Garayan (10)
weaponBuildAchievement(0, 0, _imonrMardanGarayan, _dictItems[_imonrMardanGarayan], 10) //-(B)
//-Build up to the Island King (10)
weaponBuildAchievement(0, 0, _imonrIslandKing, "Our Island Queen", 10) //-(B)
//-Synth a legit Island King with max stats (25)
weaponSynthMaxAchievement(0, _imonrIslandKing, "Ruler of the Continent", 25) //-(B)


//-------------Monica Left---------------
//-Build up to the Pocklekul from the Thorn Armlet (5)
weaponBuildAchievement(0, _imonlThornArmlet, _imonlPocklekul, _dictItems[_imonlPocklekul], 5) //-(B)
//-Build up to the Mobious Bangle (5)
weaponBuildAchievement(0, 0, _imonlMobiusBangle, _dictItems[_imonlMobiusBangle], 5) //-(B)
//-Build up to the Angel Shooter (5)
weaponBuildAchievement(0, 0, _imonlAngelShooter, _dictItems[_imonlAngelShooter], 5) //-(B)
//-Build up to the Satan Brassard (5)
weaponBuildAchievement(0, 0, _imonlSatanBrassard, _dictItems[_imonlSatanBrassard], 5) //-(B)
//-Build up to the Star Armlet (5)
weaponBuildAchievement(0, 0, _imonlStarArmlet, _dictItems[_imonlStarArmlet], 5) //-(B)
//-Build up to the Five-Star Armlet (10)
weaponBuildAchievement(0, 0, _imonlFiveStarArmlet, "Excellent Service", 10) //-(B)
//-Build up to the Love (10)
weaponBuildAchievement(0, 0, _imonlLove, _dictItems[_imonlLove], 10) //-(B)
//-Synth a legit Five-Star Armlet with max stats (25)
weaponSynthMaxAchievement(0, _imonlFiveStarArmlet, "Highest Rated Witch", 25) //-(B)

//-********* function PhotoAchievements() *********** (45) 
//-Get every photo Idea obtainable in Chapter 1
//-		ideaAchievement(0, _chp1, "Palm Brinks Photos", 10)
ideaAchievement(0, _iaCedricShop, "Feels Like Home", "around Cedric's Maintenance Shop", 3)//-(B)
ideaAchievement(0, _iaPollyBakery, "Sweetest Aunt in Town", "around Polly's Bakery Shop", 3)//-(B)
ideaAchievement(0, _iaMortonSundries, "Mr. Pumpkin", "around Morton's Sundries", 3)//-(B)
ideaAchievement(0, _iaWeaponShop, "Biggest Weapons in Town", "around the Weapon Shop", 3)//-(B)
ideaAchievement(0, _iaPoliceHQ, "Can't Arrest Clowns", "around the Police Station", 3)//-(B)
ideaAchievement(0, _iaBar, "Too young to be here", "around Palm Brinks Bar", 3)//-(B)
ideaAchievement(0, _iaStation, "At the Train Station", "around the Train Station", 3)//-(B)
ideaAchievement(0, _iaPalmBrinks, "Friendly Face", "around Palm Brinks", 3)//-(B)
ideaAchievement(0, _iaSunMoon, "Better Zoom than a Telescope", "from the Sun and Moon", 3)//-(B)
ideaAchievement(0, _iaTrain, "Steam Engine", "inside the train", 1)//-(B)
ideaAchievement(0, _iaCityHall, "Visiting the Mayor", "around City Hall", 2)//-(B)
ideaAchievement(0, _iaChurch, "Place of Reflection", "inside the Church", 1) //-(B)
ideaAchievement(0, _iaParn, "Magical Artist", "around Parn's Studio", 3)//-(B)
ideaAchievement(0, _iaMortonHouse, "Pumpkin Girl", "inside Morton's House", 1)//-(B)
ideaAchievement(0, _iaMansion, "Serving Young Master", "at Max's home", 3)//-(B)
ideaAchievement(0, _iaDrDell, "Dr. Duckyll", "inside Dr. Dell's clinic", 2)//-(B)
	
//-scoopAchievement(0, 99, "Testing Train", 0)
//-Get every photo Scoop obtainable in Chapter 1
scoopAchievement(0, _chp1a, "Sewer Paparazzi", 4)//-(B)
//-Invent everything that can be invented from Chapter 1 "From Palm Brinks to the world"
inventionAchievement(0, _chp1a, "Little Town Inventor", 5)//-(B)

//-Get every photo Idea obtainable in Chapter 2
ideaAchievement(0, _iaSindain, "My Firbits Friends", "at Sindain", 4)//-(B)
ideaAchievement(0, _iaJurakMall, "Shopping Days", "around Jurak's Mall", 2)//-(B)

//-Get every photo Scoop obtainable in Chapter 2 
scoopAchievement(0, _chp2, "Nature's Close-up", 10)//-(B)
//-Invent everything that can be invented from Chapter 2 
inventionAchievement(0, _chp2, "Ecological Innovator", 10)//-(B)

//-Get every photo Idea obtainable in Chapter 3
ideaAchievement(0, _iaBalanceValley, "Harmony in the Valley", "at Balance Valley", 4)
ideaAchievement(0, _iaStarlighCanyon, "Starlit Ravines", "at the Starlight Canyon", 1) //-1 photo
ideaAchievement(0, _iaStarlightTemple, "Under the Eternal Night", "at the Starlight Temple", 4)

//-Get every photo Scoop obtainable in Chapter 3 
scoopAchievement(0, _chp3, "Canyon Stardust", 10)//-(B)
//-Invent everything that can be invented from Chapter 3 
inventionAchievement(0, _chp3, "Stellar Visionary", 5)//-(B)
inventionAchievement(0, _chp3a, "Eclipse of Imagination", 5)//-(B)

//-Get every photo Idea obtainable in Chapter 4
ideaAchievement(0, _iaVeniccio, "Veniccio", "at Veniccio", 4)
ideaAchievement(0, _iaLunaLabs, "Luna Labs", "at Luna Labs", 3)
//-Get every photo Scoop obtainable in Chapter 4
scoopAchievement(0, _chp4, "Scoop CH4", 5) //-(B)
//-Invent everything that can be invented from Chapter 4 
inventionAchievement(0, _chp4, "Invent CH4", 10)//-(B)

//-Get every photo Idea obtainable in Chapter 5
ideaAchievement(0, _iaHeimRada, "Heim Rada [m]", "at Heim Rada", 3)
ideaAchievement(0, _iaGundoradaWorkshop, "Gundorada Workshop", "at Gundorada Workshop", 3)
//-Get every photo Scoop obtainable in Chapter 5 
scoopAchievement(0, _chp5, "Scoop CH5", 10) //-(B)
//-Invent everything that can be invented from Chapter 5 
inventionAchievement(0, _chp5, "Invent CH5", 10)//-(B)

//-Get every photo Idea obtainable in Chapter 6
ideaAchievement(0, _iaMoonFlowerEntrance, "Moon Flower Palace (Entrance) [m]", "at the entrance of the Moon Flower Palace", 2)
ideaAchievement(0, _iaKazarov, "Kazarov Stonehenge", "at Kazarov Stonehenge", 2)
//-Get every photo Scoop obtainable in Chapter 6
scoopAchievement(0, _chp6, "Scoop CH6", 10) //-(B)
//-Invent everything that can be invented from Chapter 6 
inventionAchievement(0, _chp6, "Invent CH6", 5)//-(B)

//-Get every photo Idea obtainable in Chapter 7
ideaAchievement(0, _iaMoonFlowerPalace, "Moon Flower Palace", "at the Moon Flower Palace", 5)
ideaAchievement(0, _iaMoonFlowerPalaceExtra, "Moon Flower Palace Extra", "at the Moon Flower Palace 2", 3)

//-Get every photo Scoop obtainable in Chapter 7
scoopAchievement(0, _chp7, "Scoop CH7", 3) //-(B)
//-Invent everything that can be invented from Chapter 7 
inventionAchievement(0, _chp7, "Invent CH7", 5)//-(B)

//-Get every photo Idea obtainable in Chapter 8
ideaAchievement(0, _chp8, "Zelmite Mine", "at Zelmite Mine", 2)

//-Get every photo Scoop obtainable in Chapter 8 (Only missable Flotsam Revived!)
//-Invent everything that can be invented from Chapter 8
inventionAchievement(0, _chp8, "Invent CH8", 2)//-(B)

//-Get the Brave Little Linda scoop		(1) _scBraveLLinda
instaPhotoAchievement(0, _scBraveLLinda, "Brave Little Big One", 1) //-(B)
//-Get the Cinders photo                (1) _idCinders
instaPhotoAchievement(0, _idCinders, "Toasted", 1) //-(B)
//-Get the Clown Robo's Attack scoop    (1) _scClownRoboAtt
instaPhotoAchievement(0, _scClownRoboAtt, "Clown Robo's Attack", 1)//-(B)
//-Get the Dead Tree photo              (1) _idDeadTree
instaPhotoAchievement(0, _idDeadTree, "Looks So Gloomy", 1) //-(B)
//-Get the Doctor Janing scoop          (1) _scDrJaming
instaPhotoAchievement(0, _scDrJaming, "Doctor Jaming", 1) //-(B)
//-Get the Fire Squall scoop            (1)	_scFireSquall
instaPhotoAchievement(0, _scFireSquall, "Squall Fireheart", 1) //-(B)
//-Get the Flying Battleship scoop      (1) _scFlyBattle
instaPhotoAchievement(0, _scFlyBattle, "Flying Battleship", 1) //-(B)
//-Get the Griphon's Real Face scoop    (1) _scGriffonRFace
instaPhotoAchievement(0, _scGriffonRFace, "Wild Eyes", 1) //-(B)
//-Get the King Mardan scoop            (1) _scKingMardan //-WHAT?! You're a guy?!
instaPhotoAchievement(0, _scKingMardan, "The Holy One", 1) //-(B)
//-Get the Legend of the Moon scoop     (1) _scLegendMoon
instaPhotoAchievement(0, _scLegendMoon, "Moonlight Densetsu", 1) //-(B)
//-Get the Phantom Memo Eater scoop     (1) _scPhantoMemo
instaPhotoAchievement(0, _scPhantoMemo, "Phantom Drowzee", 1) //-(B)
//-Get the Puppet Shingala scoop        (1) _scPuppedShin
instaPhotoAchievement(0, _scPuppedShin, "Puppet Shingala", 1) //-(B)
//-Get the R. Buttlerfly Reunited scoop (1) _scRButterUnite
instaPhotoAchievement(0, _scRButterUnite, "Colors of the Rainbow", 1) //-(B)
//-Get the The Ultimate Gaspard scoop   (1) _scTheUltGasp
instaPhotoAchievement(0, _scTheUltGasp, "The Ultimate Gaspard", 1) //-(B)
//-Get the Flotsam Revived! scoop   (1) _scFloatsRevive
instaPhotoAchievement(0, _scFloatsRevive, "Flotsam Revived!", 1)//-(B)

//-************ function Fishing()************** (31)
//-Catch a Baku Baku
caughtFishAchievement(0, _itBakuBaku, "Slow Eater", 2)//-(B)
//-Catch a Baron Garayan
caughtFishAchievement(0, _itBaronGarayan, "Floatsam's Favorite", 10)//-(B)
//-Catch a Bobo
caughtFishAchievement(0, _itBobo, "Not So Bright", 2)//-(B)
//-Catch a Bon
caughtFishAchievement(0, _itBon, "Bon-o-bon", 2)//-(B)
//-Catch a Den
caughtFishAchievement(0, _itDen, "Den Xiaofish", 3)//-(B)
//-Catch a Gobbler
caughtFishAchievement(0, _itGobbler, "Nibbler", 2)//-(B)
//-Catch a Gummy
caughtFishAchievement(0, _itGummy, "Not Sweet At All", 1)//-(B)
//-Catch a Hama Hama
caughtFishAchievement(0, _itHamaHama, "It's Hama Time!", 3)//-(B)
//-Catch a Heela
caughtFishAchievement(0, _itHeela, "Not Useful for Healing", 2)//-(B)
//-Catch a Kaji
caughtFishAchievement(0, _itKaji, "The Gambling Enguarde", 5)//-(B)
//-Catch a Mardan Garayan
caughtFishAchievement(0, _itMadamGarayan, "Those Eyelashes, Such Glamour!", 10)//-(B)
//-Catch a Negie
caughtFishAchievement(0, _itNegie, "Fish Bone", 3)//-(B)
//-Catch a Niler
caughtFishAchievement(0, _itNiler, "Drowsy Piranha", 2)//-(B)
//-Catch a Nonky
caughtFishAchievement(0, _itNonky, "Dissapointingly Golden", 2)//-(B)
//-Catch a Picolly
caughtFishAchievement(0, _itPiccoly, "Piccolita", 3)//-(B)
//-Catch a Priscleen
caughtFishAchievement(0, _itPriscleen, "Kissy Kissy", 1)//-(B)
//-Catch a Tarton
caughtFishAchievement(0, _itTarton, "Turtle Fish", 2)//-(B)
//-Catch a Umadakara
caughtFishAchievement(0, _itUmadakara, "eMule", 5) //-(B)

//-Have a fish with X Boost - How fast it is.
fishStatAchievement(0, fishBoostOffset, "Fast and Fishy", 5) //-(B)
//-Have a fish with X Endurance - How long the fish can push itself.
fishStatAchievement(0, fishEndurOffset, "Persistent Perch", 5) //-(B)
//-Have a fish with X Strength - How hard the fish will bump another fish.
fishStatAchievement(0, fishStrOffset, "Mighty Mackerel", 5) //-(B)
//-Have a fish with X Tenacity - How Quickly the fish will bump other fish.
fishStatAchievement(0, fishTenacyOffset, "Stubborn Swordfish", 5) //-(B)
//-Have a fish with X Stamina - How long the fish can take a bump.
fishStatAchievement(0, fishStaminaOffset, "Tireless Tilapia", 5) //-(B)
//-Have a fish with X Mood - It determines the fish's personality.
fishMoodAchievement(0, "Aquatic Councelling", 3) //-(B)

//-Have a fish with a total of 400 stats points
perfectFishAchievement(0, "Supreme Swimmer", 25) //-(B)
//-Breed a pair of fish
breedFishAchievement(0, "Birds and the Bees", 2) //-(B)

//-Win the Fishing contest on 1st place
fishContestAchievement(0, "Big Catch", 10) //-(B)

//-Win the Fish Frenzie, Junior on 1st place (3)
fishFrenzyAchievement(0, 0, "Fishy Used Splash", 3) //-(B)

//-Win the Fish Frenzie, Junior on 1st place (5)
fishFrenzyAchievement(0, 1, "Swift Finley", 5) //-(B)

//-Win the Fish Frenzie, Senior on 1st place (10)
fishFrenzyAchievement(0, 2, "Like my Backyard Pond", 10) //-(B)

//-Win the Fish Frenzie, Master on 1st place (25)
fishFrenzyAchievement(0, 3, "Master Of Fishes", 25) //-(B)

//-Max Fishing Rod status
//-Max Lure Rod status

//-******** function RecruitCharacters()*********** (21)
//-Recruit Adel			(give Sturdy Cloth, Thick Hide, & Hunk of Copper)	 (5)-
recruitAchievement(0, _rcAdel, "Dreaming, I Was Dreaming", 2) //-(B) The Unconfident Tailor
//-Recruit Claire       (show Lafrescia Stem picture)     (5)-
recruitAchievement(0, _rcClaire, "Curiosity", 2) //-(B)
//-Recruit Corinne       (find her upstairs in Corrine's house, then in Max's room)    (5)-
recruitAchievement(0, _rcCorrine, "Corrine's Hide-and-Seek", 2) //-(B)
//-Recruit Doctor Dell       (5)-Required to go from Ch2 to Ch3
//-Recruit Donny          (give a Dark and Indestructible Coin)   (5)-
recruitAchievement(0, _rcDonny, "The Mark of Business", 3) //-(B)
//-Recruit Fabio        (catch 60cm+ Nonky)     (5)-
recruitAchievement(0, _rcFabio, "Catch Up, Then Pass Me", 5) //-(B)
//-Recruit Ferdinand    (give Roasted Chestnut)     (5)-
recruitAchievement(0, _rcFerdinand, "Castagnaccio", 1) //-(B)
//-Recruit Gordon      (give Holy Water)      (5)
recruitAchievement(0, _rcGordon, "Gordon's Worries", 1) //-(B) The Monk Gardener
//-Recruit Mayor Need    (give him his safe's password; 1221)    (5)-
recruitAchievement(0, _rcMayor, "The Impossible Safe", 1) //-(B)
//-Recruit Gerald, Max's Dad    (show Bell Trigger)     (5)-
recruitAchievement(0, _rcGerald, "Getting Father's Approval", 2) //-(B)
//-Recruit Milane       (show Sand Breaker or Chopper)     (5)-
recruitAchievement(0, _rcMilane, "Milane Shows Her Stuff", 5) //-(B) The Swordmaster's Apprentice
//-Recruit Mina        (get 10 medals for Spheda after talking to her)      (5)-
recruitAchievement(0, _rcMina, "The Spheda Challenge", 5) //-(B)
//-Recruit Olivie      (win Beginner Class Finny Frenzy)      (5)-
recruitAchievement(0, _rcOlivie, "In the Winner's Circle", 2) //-(B)
//-Recruit Parn & Julia         (give Parn Gold Paint)    (5)-
recruitAchievement(0, _rcParn, "Portrait of a Bride", 2) //-(B)
//-Recruit Pau         (give him a Carrot)      (5)-
recruitAchievement(0, _rcPau, "Beautiful Orange Food", 1) //-(B)
//-Recruit Polly        (deliver Crunchy Bread as ordered)     (5)-
recruitAchievement(0, _rcPolly, "Polly's Maid", 1) //-(B)
//-Recruit Priest Bruno  (put out all candles in cathedral)    (5)-
recruitAchievement(0, _rcPriest, "A Priest Ordeal", 1) //-(B)
//-Recruit Rosa         (say "Let's go together.")     (5)-
recruitAchievement(0, _rcRosa, "Mind to Mind", 1) //-(B)
//-Recruit Rufio        (show The Moon picture)     (5)-
recruitAchievement(0, _rcRufio, "The Non-Setting Moon", 1) //-(B)
//-Recruit Sheriff Blinkhorn (run to boat and back in less than 2 min 1 sec) (5)-
recruitAchievement(0, _rcSheriff, "Palm Brinks: Mad Dash!", 3) //-(B)
//-Recruit Stewart       (Give 2000 gilda)    (5)-
recruitAchievement(0, _rcStewart, "The Auction", 2) //-(B)

//--******** function AllMonstersKilled() *********** (7)
//-Defeat all monsters on every floor of Underground Channel (10)
dungeonFloorKillAllAchievement(0, _dUChannel, "Pipe Cleaner", 5) //-(B)
//-Defeat all monsters on every floor of Rainbow Butterfly Forest (10)
dungeonFloorKillAllAchievement(0, _dRBWoods, "Forest Pruner", 10) //-(B)
//-Defeat all monsters on every floor of Starlight Canyon (10)
dungeonFloorKillAllAchievement(0, _dSCanyon, "Unnatural Eroder", 10) //-(B)
//-Defeat all monsters on every floor of Ocean's Roar Cave (10)
dungeonFloorKillAllAchievement(0, _dORCave, "", 10) //-(B)
//-Defeat all monsters on every floor of Mount Gundore (25)
dungeonFloorKillAllAchievement(0, _dMGundore, "", 25) //-(B)
//-Defeat all monsters on every floor of Moon Flower Palace (25)
dungeonFloorKillAllAchievement(0, _dMFPalace, "", 25)
//-Defeat all monsters on every floor of Zelmite Mine (25)
dungeonFloorKillAllAchievement(0, _dZMine, "", 25) //-(B)

//-********* function Medals()********************* (127)
//-------Chapter 1-----------//-(B)
//-To the Outside World
floorMedalAchievement(0, _dUChannel, _fOutsideWorld, "To The Outside World!", 3)
//-Battle with Rats
floorMedalAchievement(0, _dUChannel, _fBattleRats, "", 3)
//-Ghost in the Channel
floorMedalAchievement(0, _dUChannel, _fGhostChannel, "", 3)
//-Steve's Battle
floorMedalAchievement(0, _dUChannel, _fStevesBattle, "", 3)
//-Sweet, Scary Treasure Chest
floorMedalAchievement(0, _dUChannel, _fSTreasureChest, "", 3)

//-------Chapter 2-----------//-(B)
//-Frightening Forest
floorMedalAchievement(0, _dRBWoods, _fFrightForest, "", 3)
//-Strange Tree
floorMedalAchievement(0, _dRBWoods, _fStrangeTree, "", 3)
//-Rolling Shells
floorMedalAchievement(0, _dRBWoods, _fRollingShells, "", 3)
//-This is a Geostone?
floorMedalAchievement(0, _dRBWoods, _fThisIsGeostone, "", 3)
//-Noise in the Forest
floorMedalAchievement(0, _dRBWoods, _fNoiseInForest, "", 3)
//-I'm a Pixie
floorMedalAchievement(0, _dRBWoods, _fImPixie, "", 3)
//-Legendary Killer Snake
floorMedalAchievement(0, _dRBWoods, _fLegendKillSnake, "", 3)
//-Grotesque Spider Lady
floorMedalAchievement(0, _dRBWoods, _fGrotSpiderLady, "", 3)
//-Rainbow Falls Entrance
floorMedalAchievement(0, _dRBWoods, _fRainbowFallsEntrance, "", 3)

//-------Chapter 3-----------//-(B)
//-Headlong Dash
floorMedalAchievement(0, _dSCanyon, _fHeadlongDash, "", 3)
//-Fire and Ice Don't Mix
floorMedalAchievement(0, _dSCanyon, _fFireIceMix, "", 3)
//-Earth-Shaking Demon
floorMedalAchievement(0, _dSCanyon, _fEarthShakingDemon, "", 3)
//-Powerful Yo-Yo Robot
floorMedalAchievement(0, _dSCanyon, _fPowerfulYoYoRobot, "", 3)
//-Elephant Army in Valley
floorMedalAchievement(0, _dSCanyon, _fElephantArmyValley, "", 3)
//-Dangerous Treasure Chest
floorMedalAchievement(0, _dSCanyon, _fDangerousTreasureChest, "", 3)
//-Little Dragon Counterattack
floorMedalAchievement(0, _dSCanyon, _fLittleDragonCounter, "", 3)
//-Warrior in Stalight Canyon
floorMedalAchievement(0, _dSCanyon, _fWarriorStarCanyon, "", 3)
//-Smiling Fairy Village
floorMedalAchievement(0, _dSCanyon, _fSmilingFairyVillage, "", 3)
//-Cursed Mask
floorMedalAchievement(0, _dSCanyon, _fCursedMask, "", 3)
//-We're the Roly Poly Brothers
floorMedalAchievement(0, _dSCanyon, _fWeRolyPolyBrothers, "", 3)
//-Dragon Slayer
floorMedalAchievement(0, _dSCanyon, _fDragonSlayer, "", 3)
//-Rama Priests Like Cheese
floorMedalAchievement(0, _dSCanyon, _fRamaPriestsLikeCheese, "", 3)
//-Nature's Threat
floorMedalAchievement(0, _dSCanyon, _fNaturesThreat, "", 3)
//-Moon Baron
floorMedalAchievement(0, _dSCanyon, _fMoonBaron, "", 3)
//-Lighthouse Appears
floorMedalAchievement(0, _dSCanyon, _fLighthouseAppears, "", 3)

//-------Chapter 4-----------//-(B)
//-Pirates!
floorMedalAchievement(0, _dORCave, _fPirates, "", 3)
//-Tons of Fish
floorMedalAchievement(0, _dORCave, _fTonsFish, "", 3)
//-Tank and Boss
floorMedalAchievement(0, _dORCave, _fTankBoss, "", 3)
//-Water Monster
floorMedalAchievement(0, _dORCave, _fWaterMonster, "", 3)
//-Scary Auntie Medusa
floorMedalAchievement(0, _dORCave, _fScaryAuntieMedusa, "", 3)
//-Sand Molers
floorMedalAchievement(0, _dORCave, _fSandMolers, "", 3)
//-Bat Den
floorMedalAchievement(0, _dORCave, _fBatDen, "", 3)
//-Pirate's Hideout
floorMedalAchievement(0, _dORCave, _fPiratesHideout, "", 3)
//-Wandering Zappy
floorMedalAchievement(0, _dORCave, _fWanderingZappy, "", 3)
//-Banquet of the Dead
floorMedalAchievement(0, _dORCave, _fBanquetDead, "", 3)
//-Improvements
floorMedalAchievement(0, _dORCave, _fImprovements, "", 3)
//-Return of the Serpent
floorMedalAchievement(0, _dORCave, _fReturnSerpent, "", 3)
//-Cursed Sea
floorMedalAchievement(0, _dORCave, _fCursedSea, "", 3)
//-Sea of Atrocity
floorMedalAchievement(0, _dORCave, _fSeaAtrocity, "", 3)

//-------Chapter 5-----------//-(B)
//-Battle with Griffon's Army
floorMedalAchievement(0, _dMGundore, _fBattleGriffonArmy, "", 3)
//-Mt. Gundor Wind
floorMedalAchievement(0, _dMGundore, _fMtGundorWind, "", 3)
//-Little Dragons on the Mountain
floorMedalAchievement(0, _dMGundore, _fLittleDragonsMountain, "", 3)
//-Steam Goyone
floorMedalAchievement(0, _dMGundore, _fSteamGoyone, "", 3)
//-Mountain Baddie Appears
floorMedalAchievement(0, _dMGundore, _fMountainBaddieAppears, "", 3)
//-Magmanoff
floorMedalAchievement(0, _dMGundore, _fMagmanoff, "", 3)
//-Danger Zone
floorMedalAchievement(0, _dMGundore, _fDangerZone, "", 3)
//-Secret of Fire Mountain
floorMedalAchievement(0, _dMGundore, _fSecretFireMountain, "", 3)
//-Deathtrap
floorMedalAchievement(0, _dMGundore, _fDeathtrap, "", 3)
//-Desperation on the Mountain
floorMedalAchievement(0, _dMGundore, _fDesperationMountain, "", 3)
//-Pains in the Neck
floorMedalAchievement(0, _dMGundore, _fPainsNeck, "", 3)
//-Walking the Path of Flames
floorMedalAchievement(0, _dMGundore, _fWalkingPathFlames, "", 3)
//-Burning Undead
floorMedalAchievement(0, _dMGundore, _fBurningUndead, "", 3)
//-Fire Dragon
floorMedalAchievement(0, _dMGundore, _fFireDragon, "", 3)
//-Treasure Chest Danger Zone
floorMedalAchievement(0, _dMGundore, _fTreasureChestDangerZone, "", 3)
//-Road to the River of Flames
floorMedalAchievement(0, _dMGundore, _fRoadRiverFlames, "", 3)

//-------Chapter 6-----------//-(B)
//-Looking for the Earth Gem
floorMedalAchievement(0, _dRBWoods, _fLookingEarthGem, "", 3)
//-Something Rare Here!
floorMedalAchievement(0, _dRBWoods, _fSomethingRareHere, "", 3)
//-Scary Tree
floorMedalAchievement(0, _dRBWoods, _fScaryTree, "", 3)

//-Looking for the Wind Gem
floorMedalAchievement(0, _dSCanyon, _fLookingWindGem, "", 3)
//-Evil Spirit in the Valley
floorMedalAchievement(0, _dSCanyon, _fEvilSpiritValley, "", 3)
//-Brave Warriors in the Valley
floorMedalAchievement(0, _dSCanyon, _fBraveWarriorsValley, "", 3)

//-Looking for the Water Gem
floorMedalAchievement(0, _dORCave, _fLookingWaterGem, "", 3)
//-Pirates' Revenge
floorMedalAchievement(0, _dORCave, _fPiratesRevenge, "", 3)
//-Death Ocean
floorMedalAchievement(0, _dORCave, _fDeathOcean, "", 3)

//-Looking for the Fire Gem
floorMedalAchievement(0, _dMGundore, _fLookingFireGem, "", 3)
//-Explosive Hot Spring
floorMedalAchievement(0, _dMGundore, _fExplosiveHotSpring, "", 3)
//-Crazy Mountain
floorMedalAchievement(0, _dMGundore, _fCrazyMountain, "", 3)

//-------Chapter 7-----------//-(B)
//-Ancient Wind
floorMedalAchievement(0, _dMFPalace, _fAncientWind, "", 3)
//-Card Warriors Gather
floorMedalAchievement(0, _dMFPalace, _fCardWarriorsGather, "", 3)
//-Dangerous Treasure
floorMedalAchievement(0, _dMFPalace, _fDangerousTreasure, "", 3)
//-Zombie Zone
floorMedalAchievement(0, _dMFPalace, _fZombieZone, "", 3)
//-Feeling Out of Place
floorMedalAchievement(0, _dMFPalace, _fFeelingOutofPlace, "", 3)
//-Living Statue
floorMedalAchievement(0, _dMFPalace, _fLivingStatue, "", 3)
//-Danger Zone
floorMedalAchievement(0, _dMFPalace, _fDangerZoneM, "", 3)
//-Scary Women
floorMedalAchievement(0, _dMFPalace, _fScaryWomen, "", 3)
//-Hell Elephant
floorMedalAchievement(0, _dMFPalace, _fHellElephant, "", 3)
//-Crush the Undead
floorMedalAchievement(0, _dMFPalace, _fCrushtheUndead, "", 3)
//-Missing Gem Dealer
floorMedalAchievement(0, _dMFPalace, _fMissingGemDealer, "", 3)
//-Max's Longest Day
floorMedalAchievement(0, _dMFPalace, _fMaxLongestDay, "", 3)
//-Hell's Corridor
floorMedalAchievement(0, _dMFPalace, _fHellCorridor, "", 3)
//-Monica All Alone
floorMedalAchievement(0, _dMFPalace, _fMonicaAllAlone, "", 3)
//-Raging Spirits
floorMedalAchievement(0, _dMFPalace, _fRagingSpirits, "", 3)
//-Lonely Machine
floorMedalAchievement(0, _dMFPalace, _fLonelyMachine, "", 3)
//-Nobility
floorMedalAchievement(0, _dMFPalace, _fNobility, "", 3)
//-Palace Watchdog
floorMedalAchievement(0, _dMFPalace, _fPalaceWatchdog, "", 3)
//-Road to Memories
floorMedalAchievement(0, _dMFPalace, _fRoadtoMemories, "", 3)
//-Final Trump Card
floorMedalAchievement(0, _dMFPalace, _fFinalTrumpCard, "", 3)
//-Elemental Party
floorMedalAchievement(0, _dMFPalace, _fElementalParty, "", 3)
//-Warndering Knight's Soul
floorMedalAchievement(0, _dMFPalace, _fWarnderingKnightSoul, "", 3)
//-Beware Carelessness
floorMedalAchievement(0, _dMFPalace, _fBewareCarelessness, "", 3)
//-Final Battle
floorMedalAchievement(0, _dMFPalace, _fFinalBattle, "", 3)

//-------Chapter 8----------- (B)
//-Get the Zelmite!
floorMedalAchievement(0, _dZMine, _fGetZelmite, "", 3)
//-Moon Mole
floorMedalAchievement(0, _dZMine, _fMoonMole, "", 3)
//-Powerful Frog
floorMedalAchievement(0, _dZMine, _fPowerfulFrog, "", 3)
//-Evil Bat Invasion
floorMedalAchievement(0, _dZMine, _fEvilBatInvasion, "", 3)
//-Crossroads of Destiny
floorMedalAchievement(0, _dZMine, _fCrossroadsDestiny, "", 3)
//-Scary Face
floorMedalAchievement(0, _dZMine, _fScaryFace, "", 3)
//-Powerful Wild Boar
floorMedalAchievement(0, _dZMine, _fPowerfulWildBoar, "", 3)
//-Murderous Tank
floorMedalAchievement(0, _dZMine, _fMurderousTank, "", 3)
//-Which One?
floorMedalAchievement(0, _dZMine, _fWhichOne, "", 3)
//-The Old Woman Saw It
floorMedalAchievement(0, _dZMine, _fOldWomanSawIt, "", 3)
//-A Giant Snake!
floorMedalAchievement(0, _dZMine, _fGiantSnake, "", 3)
//-Undaunted Soldiers
floorMedalAchievement(0, _dZMine, _fUndauntedSoldiers, "", 3)
//-Hell, Ward 1
floorMedalAchievement(0, _dZMine, _fHellWard1, "", 3)
//-Road to Truth
floorMedalAchievement(0, _dZMine, _fRoadTruth, "", 3)
//-Crossroads
floorMedalAchievement(0, _dZMine, _fCrossroads, "", 3)
//-Lost Road
floorMedalAchievement(0, _dZMine, _fLostRoad, "", 3)
//-Indecision
floorMedalAchievement(0, _dZMine, _fIndecision, "", 3)
//-Little Dragon Army
floorMedalAchievement(0, _dZMine, _fLittleDragonArmy, "", 3)
//-Captain Returns
floorMedalAchievement(0, _dZMine, _fCaptainReturns, "", 3)
//-Hell's Turning Point
floorMedalAchievement(0, _dZMine, _fHellsTurningPoint, "", 3)
//-Mummy Heaven
floorMedalAchievement(0, _dZMine, _fMummyHeaven, "", 3)
//-Ward 3 Entrance
floorMedalAchievement(0, _dZMine, _fWard3Entrance, "", 3)
//-Flotsam's Broken Army
floorMedalAchievement(0, _dZMine, _fFlotsamBrokenArmy, "", 3)
//-Hell, Ward 3-Wellside Gossip
floorMedalAchievement(0, _dZMine, _fHellWard3WellsideGossip, "", 3)
//-Devil Elemental
floorMedalAchievement(0, _dZMine, _fDevilElemental, "", 3)
//-Mariner
floorMedalAchievement(0, _dZMine, _fMariner, "", 3)
//-Ultimate Snake
floorMedalAchievement(0, _dZMine, _fUltimateSnake, "", 3)
//-Omen
floorMedalAchievement(0, _dZMine, _fOmen, "", 3)
//-Anxiety
floorMedalAchievement(0, _dZMine, _fAnxiety, "", 3)
//-Firm Belief
floorMedalAchievement(0, _dZMine, _fFirmBelieve, "", 3)
//-Seeping Light
floorMedalAchievement(0, _dZMine, _fSleepingLight, "", 3)

//-*********** functions Monsterpedia()********* (8)
//-Get all the Monster entries from UC
dungeonFloorEveryMonsterAchievement(0, _dUChannel, "Underground Dweller of Palm Brinks", 5) //-(B)
//-Get all the Monster entries from RBW
dungeonFloorEveryMonsterAchievement(0, _dRBWoods, "Botanical Adventurer", 10) //-(B)
//-Get all the Monster entries from SC
dungeonFloorEveryMonsterAchievement(0, _dSCanyon, "Deep Canyon Explorer", 10) //-(B)
//-Get all the Monster entries from ORC
dungeonFloorEveryMonsterAchievement(0, _dORCave, "", 10) //-(B)
//-Get all the Monster entries from MG
dungeonFloorEveryMonsterAchievement(0, _dMGundore, "", 10) //-(B)
//-Get all the Monster entries from MFP
dungeonFloorEveryMonsterAchievement(0, _dMFPalace, "", 10) //-(B)
//-Get all the Monster entries from ZM
dungeonFloorEveryMonsterAchievement(0, _dZMine, "", 25) //-(B)
//-Get all the Mimic entries from everywhere
dungeonFloorEveryMimicAchievement(0, "", 10) //-(B)

//-******** function MonsterTransform()******** (57)
monsterBadgeAchievement(0, _mbBeast, "", 3) 	//-(B)
monsterBadgeAchievement(0, _mbWindup, "", 3) 	//-(B)
monsterBadgeAchievement(0, _mbAcuatic, "", 3)	//-(B)
monsterBadgeAchievement(0, _mbFlora, "", 1)     //-(B)
monsterBadgeAchievement(0, _mbMagical, "", 3)   //-(B)
monsterBadgeAchievement(0, _mbDarkling, "", 5)  //-(B)
monsterBadgeAchievement(0, _mbReptile, "", 3)   //-(B)
monsterBadgeAchievement(0, _mbSpirit, "", 3)    //-(B)
monsterBadgeAchievement(0, _mbUndead, "", 2)    //-(B)
monsterBadgeAchievement(0, _mbCard, "", 3)      //-(B)

//-Get the Sun Badge from Donny
monsterBadgeAchievement(0, _mbSun, "Badgemon Sun", 5) //-(B)
//-Get the Moon Badge from Donny
monsterBadgeAchievement(0, _mbMoon, "Badgemon Moon", 5) //-(B)

//-evolveAnyMonsterAchievement(0, "The Mysteries of Palette Swapping", 5)

evolveMonsterLevelAchievement(0, 1, "The Mysteries of Palette Swapping", 5) //-(B)
evolveMonsterLevelAchievement(0, 2, "A Lifechanging Decision", 10) //-(B)
evolveMonsterLevelAchievement(0, 3, "This Is My Final Form", 25) //-(B)



//--************ function Spheda()************** (9)
//-Clear the distortion in Barga's Valley and get the Swan Club (5)
gotSwanAchievement(0, "Wow, you're good! [m]", 5) //-(B)
//-Build up to the Albatross (10)
weaponBuildAchievement(0, 0, _isAlbatross, "A Perfect Flight", 10) //-(B)

//-Get every Spheda main prize from Underground Channel (5)
floorSphedaPrizeAchievement(0, _dUChannel, 1, "Soaked Spheda", 5) //-(B)
//-Get every Spheda sub prize from Underground Channel (5)
floorSphedaPrizeAchievement(0, _dUChannel, 2, "Water Resources Engineer", 10) //-(B)
//-Get every Spheda main prize from Rainbow Butterfly Forest (10)
floorSphedaPrizeAchievement(0, _dRBWoods, 1, "The Nut Hitter", 10)//-(B)
//-Get every Spheda sub prize from Rainbow Butterfly Forest (10)
floorSphedaPrizeAchievement(0, _dRBWoods, 2, "Silviculture Specialist", 25)//-(B)
//-Get every Spheda main prize from Starlight Canyon (25)
floorSphedaPrizeAchievement(0, _dSCanyon, 1, "Cleaning for Mrs Condor", 25)//-(B)
//-Get every Spheda sub prize from Starlight Canyon (25)
floorSphedaPrizeAchievement(0, _dSCanyon, 2, "Nature Preservator", 25)//-(B)
//-Get every Spheda main prize from Ocean's Roar Cave (10)
floorSphedaPrizeAchievement(0, _dORCave, 1, "", 10)//-(B)
//-Get every Spheda sub prize from Ocean's Roar Cave (10)
floorSphedaPrizeAchievement(0, _dORCave, 2, "", 25)//-(B)
//-Get every Spheda main prize from Mount Gundore (25)
floorSphedaPrizeAchievement(0, _dMGundore, 1, "", 25)//-(B)
//-Get every Spheda sub prize from Mount Gundore (25)
floorSphedaPrizeAchievement(0, _dMGundore, 2, "", 25)//-(B)
//-Get every Spheda main prize from Moon Flower Palace (25)
floorSphedaPrizeAchievement(0, _dMFPalace, 1, "", 25)//-(B)
//-Get every Spheda sub prize from Moon Flower Palace (25)
floorSphedaPrizeAchievement(0, _dMFPalace, 2, "", 25)//-(B)
//-Get every Spheda main prize from Zelmite Mine (25)
floorSphedaPrizeAchievement(0, _dZMine, 1, "", 25)//-(B)
//-Get every Spheda sub prize from Zelmite Mine (25)
floorSphedaPrizeAchievement(0, _dZMine, 2, "", 25)//-(B)

sphedaHoleOneAchievement(0, "Nice Shot!", 10)//-(B)
sphedaPracticeAchievement(0, "Enthusiast of Time & Space", 10)//-(B)

//--************ function Georama()************** (11)
//-Get all Geostones from Rainbow Butterfly Woods 
dungeonFloorGeostoneAllAchievement(0, _dRBWoods, "", 5)//-(B)
//-Get all Geostones from Starlight Canyon
dungeonFloorGeostoneAllAchievement(0, _dSCanyon, "", 10)//-(B)
//-Get all Geostones from Ocean's Roar Cave
dungeonFloorGeostoneAllAchievement(0, _dORCave, "", 10)//-(B)
//-Get all Geostones from Mount Gundore
dungeonFloorGeostoneAllAchievement(0, _dMGundore, "", 10)//-(B)
//-Get all Geostones from Moon Flower Palace
dungeonFloorGeostoneAllAchievement(0, _dMFPalace, "", 10)//-(B)

cultureAchievement(0, 100, "The Straw Builder", 5)//-(B)
cultureAchievement(0, 200, "The Wooden Builder", 10)//-(B)
cultureAchievement(0, 300, "The Brick & Mortar Builder", 25)//-(B)

//-TODO: Find prizes for remaining regions
//-Get 100% Georama on the Sindain region			(25)
georama100Achievement(0, _mpSindain, "Master Landlord", 10) //-(B)
//-Get 100% Georama on the Balance Valley region    (25)
georama100Achievement(0, _mpBalanceValley, "Sage of the Stars", 10) //-(B)
//-Get 100% Georama on the Veniccio region         (25)
georama100Achievement(0, _mpVeniccio, "Paradise Researcher", 10) //-(B)
//-Get 100% Georama on the Heim Rada region         (25)
georama100Achievement(0, _mpHeimRada, "Herited Courage", 10) //-(B)
//-Get 100% Georama on the Moon Flower Palace       (25)
georama100Achievement(0, _mpMoonFlowerPalace, "Memories of a Distant Past", 10) //-(B)

//--************ function Ridepod() ************** (16)
//-Get every/max Cannonball Arm (5)
ridepodPartAchievement(0, _ivCannonballArm, "", 5) //-(B)
//-Get every/max Clown Hand (5)
ridepodPartAchievement(0, _ivClownHand, "", 5) //-(B)
//-Get every/max Samurai Arm (5)
ridepodPartAchievement(0, _ivSamuraiArm, "", 5) //-(B)
//-Get every/max Hammer Arm (5)
ridepodPartAchievement(0, _ivHammerArm, "", 5) //-(B)
//-Get every/max Drill Arm (5)
ridepodPartAchievement(0, _ivDrillArm, "", 5) //-(B)
//-Get every/max Barrel Cannon (5)
ridepodPartAchievement(0, _ivBarrelCannon, "", 5) //-(B)
//-Get every/max Machine Gun Arm (5)
ridepodPartAchievement(0, _ivMachineGunArm, "", 5) //-(B)
//-Get every/max Missile Pod Arm (5)
ridepodPartAchievement(0, _ivMissilePodArm, "", 5) //-(B)
//-Get every/max Nova Cannon (5)
ridepodPartAchievement(0, _ivNovaCannon, "", 5) //-(B)
//-Get every/max Laser Arm (5)
ridepodPartAchievement(0, _ivLaserArm, "", 5) //-(B)

//-Make SunMoon armor
makeInventionAchievement(0, _ivSunandMoonArmour, 0, "", 3) //-(B)
//-Get every Body part (10)
//-TODO: Check if this is worth it

//-Equip Buggy
//-Make Jet Hover part
makeInventionAchievement(0, _ivJetHover, 0, "", 3) //-(B)
//-Get every Lower part (10)
//-TODO: Check if this is worth it

makeInventionAchievement(0, _ivAquarium, 0, "Ichthyologist", 1) //-(B)
//-Make Energy Pack
makeInventionAchievement(0, _ivEnergyPack, _chp1a, "Not Powered by Milk", 1) //-(B)
//-Make Energy Pack (Barrel) at Chapter 1
makeInventionAchievement(0, _ivEnergyPackBarrel, _chp1a, "Aged in Oak Barrels", 3) //-(B)
//-Make Bucket Pack at Chapter 3
makeInventionAchievement(0, _ivBucketPack, _chp3, "Good ol' Fossil Fuel", 3) //-(B)
//-Make Cleaner Pack at Chapter 4
makeInventionAchievement(0, _ivCleanerPack, _chp4, "The Robot Maid", 3) //-(B)
//-Make Energy Pack (Urn) at Chapter 5
makeInventionAchievement(0, _ivEnergyPackUrn, _chp5, "Spiritual Energy from the Beyond", 3) //-(B)
//-Make Triple Urn Pack
makeInventionAchievement(0, _ivTripleUrnPack, 0, "Thrice the Poltergeist", 5) //-(B)

//-Get the best core (10)
bestCoreAchievement(0, "Best Heart Experience Can Buy", 10) //-(B) //-(B)

//-Upgrade to the best Shield Kit (10)
shieldKitAchievement(0, "The Best Defense is a Good Shield Kit", 10) //-(B) //-(B)

//-Get the Voice Unit (1)
voiceUnitAchievement(0, "Get Off Your Lazy Behind!", 1) //-(B)

//-Equip Samurai arms and Body (2)
ridepodSamuraiAchievement(0, "Made in Japan", 3) //-(B)
//-Equip Milk Can Body and Bucket Legs (2)
ridepodMilkAchievement(0, "Here comes the Milkbot", 2) //-(B)
//-Have Max and Steve full clown costumes (10) (Clown Foot, Clown Body, Clown Arm, Clown Hat, Clown Suit, Clown Shoes)
clownCostumesAchievement(0, "The Circus is in Town", 10) //-(B)
//-Equip Max with the Explorer outfit
maxOutfitAchievement(0, _ioExplorer, "Indiana Max", 5) //-(B)
//-Equip Monica with the Princess outfit (Princess Orb, Princess Dress, Princess Boots) (5)
monicaOutfitAchievement(0, _ioPrincess, "The Perfect Princess!", 5) //-(B)
//-Equip Monica with the Panther outfit (Kitty Bell, Panther Ensemble, Panther Boots) (5)
monicaOutfitAchievement(0, _ioPanther, "Elegant, Sexy Lady", 5) //-(B)

//--************ function Powerups() ************** (10)

//-Get every miracle chest from Chapter 1
miracleChestAchievement(0, _chp1, "A Small Appetizer", 3) //-(B)
//-Get every miracle chest and treasure from Chapter 2
miracleChestAchievement(0, _chp2, "Thank You Gift from Jurak", 10) //-(B)
//-Get every miracle chest and treasure from Chapter 3
miracleChestAchievement(0, _chp3, "Crest's Nightly Treasure", 10) //-(B)
//-Get every miracle chest and treasure from Chapter 4
miracleChestAchievement(0, _chp4, "", 10) //-(B)
//-Get every miracle chest from Chapter 5
miracleChestAchievement(0, _chp5, "", 10) //-(B)
//-Get every miracle chest and treasure from Chapter 6
miracleChestAchievement(0, _chp6, "", 10) //-(B)
//-Get every miracle chest from Chapter 7
miracleChestAchievement(0, _chp7, "Royal Patissiere", 10) //-(B)

//-Get every Fruit of Eden
miracleChestAchievement(0, _itFruitEden, "The Forbidden Fruit", 10) //-(B)
//-Get every Potato Pie
miracleChestAchievement(0, _itPotatoPie, "Max's Sweet Spot", 10) //-(B)
//-Get every Witch Parfait
miracleChestAchievement(0, _itWitchParfait, "Monica's Sweet Side", 10) //-(B)

//-Fishing Rods
gotItemAchievement(0, _itFishingRod, "Will Fish my Mind Away", 2) //-(B)
gotItemAchievement(0, _ivLureRod, "", 5) //-(B)
//-Get X Flight - How far you can cast the line, in meters. (useless)
rodBuildUp2(0, _rodFlight, "", 3) //-(B)
//-Get X Strength - How big a fish you can handle.
rodBuildUp2(0, _rodStrength, "", 5) //-(B)
//-Get X Resillience - How strong the line is.
rodBuildUp2(0, _rodResilience, "", 5) //-(B)
//-Get X Grip - How much the controller vibrates when getting a bite. (useless)
rodBuildUp2(0, _rodGrip, "", 2) //-(B)
//-Get X Luck - Odds of fish type and size, as well as bite rate.
rodBuildUp2(0, _rodLuck, "", 5) //-(B)
//-Fishing rod at 25
rodBuildUp3(0, _itFishingRod, "", 10) //-(B)
//-Lure rod at 50
rodBuildUp3(0, _ivLureRod, "", 25) //-(B)

//--************ function BossesAchievements()**************
//-Brave Little Linda - lose
lindaLoseAchievement(0, "Your Toy Robot is Such a Joke", 1)
//-Halloween - Only Items //-Windup Performer
bossAchievement(0, _dUChannel, _fChanReservoir, [1, 0, 1, 0, 0, 0, 0, 0, 0], "Got My Own Bombs", 10)
//-P-3000 - Train more than 80% Armed ATV
trainAchievement(0, "Get Off My Train", 10)
//-Rainbow Butterfly - Monster transformation only //-Legendary Creature
bossAchievement(0, _dRBWoods, _fRainbowFalls, [1, 0, 0, 1, 0, 0, 0, 0, 0], "I Was a Monster Too", 10)
//-Phantom Memo Eater - Monica Magic only //-Devourer of Memories
bossAchievement(0, _dSCanyon, _fYordasValley, [1, 0, 0, 0, 1, 0, 0, 0, 0], "I'm No Sage", 5)
//-Gaspard - Dark Assasin 
bossAchievement(0, _dSCanyon, _fLighthouseCape, [1, 0, 0, 0, 0, 1, 0, 0, 0], "Don't Play with Fire", 10)
//-Dr. Jaming - Tragic Figure
bossAchievement(0, _dORCave, _fShiguraVillage, [1, 0, 0, 0, 0, 0, _imaxrFrozenTuna, 0, 0], "Fish & Jamming", 10)
//-Death Ark
bossTimeAchievement(0, _dMGundore, _fMountGundorPeak, 20, "Heavy Weaponry", 10)
//-Gaspard 2
bossAchievement(0, _dMGundore, _fMountGundorMouth, [1, 0, 0, 0, 0, 0, 0, _ivSamuraiArm, 0], "A Fair Swordfight", 5)
//-Ultimate Gaspard
bossAchievement(0, _dMGundore, _fMountGundorMouth, [1, 0, 0, 1, 0, 0, 0, 0, 0], "The Strongest Monster", 10)
//-Rabbit Griffon
bossAchievement(0, _dMFPalace, _fAncientWind, [1, 0, 0, 0, 0, 0, 1, 0, 0], "Wack-a-Rabbit", 10)
//-Trentos
bossAchievement(0, _dRBWoods, _fChamberSleepEarthGem, [1, 0, 0, 0, _imonlPocklekul, 0, 0, 0, 0], "The Power of the Forest Dwarves", 5)
//-Lapis Garter
bossAchievement(0, _dSCanyon, _fChamberDefendingWindGem, [1, 0, 0, 0, 0, 0, _imaxrBigBucksHammer, 0, 0], "Expensive Looking Robot", 5)
//-Sea Dragon
bossAchievement(0, _dORCave, _fChamberSleepingWaterGem, [1, 0, 0, 0, 0, _imonrSerpentSlicer, 0, 0, 0], "I Sea Food", 5)
//-Inferno
bossAchievement(0, _dMGundore, _fChamberBlazingFireGem, [1, 0, 0, 0, 0, 0, 0, 0, _imaxlSoulBreaker], "Burning Dead", 5)



//-TBD
//-Discarded Ideas
//-Get the Diamond from Donny
//-Get the Bandit Coin from Donny
//-Win a battle in the Battle Tank (Discarded because u need this to raise strength)
//- Have a fish that is equal or bigger than X Length - How long it is.
//- Discarded, used to recruit characters and medals
//- Have a fish that is equal or heavier than X Weight - How Big it is
//- Discarded, used to win the Fish Contest


//-Discarded, either too simple or got lazy
//-Build a Straw House		(2)
//-Build a Wooden House     (2)
//-Build a Brick House      (2)
//-Build an Iron House      (2)
//-Build a Church           (2)
//-Get every assignable person into a house (10)
}

if (subsetMonster == 1){
//-Move all these to a subset, just keep the first badge of every type and one evolution
//-Get the Beast Badge / Sewer rat (BASE)
	//-Beach rat
	evolveMonsterAchievement(0, _mbBeast, _mtSewerRat, _mtBeachRat, "", 5)
		//-Castle Eater
		evolveMonsterAchievement(0, _mbBeast, _mtBeachRat, _mtCastleEater, "", 10)
			//-Death Mouse		Branch 0
			evolveMonsterAchievement(0, _mbBeast, _mtCastleEater, _mtDeathMouse, "", 25)
			levelMonsterAchievement(0, _mbBeast, _mtDeathMouse, "", 25)
	//-Ram
	evolveMonsterAchievement(0, _mbBeast, _mtSewerRat, _mtRam, "", 5)
		//-Rifle Wolf
		evolveMonsterAchievement(0, _mbBeast, _mtRam, _mtRifleWolf, "", 10)
			//-Smiling Wolf		Branch 1
			evolveMonsterAchievement(0, _mbBeast, _mtRifleWolf, _mtSmilingWolf, "", 25)
			levelMonsterAchievement(0, _mbBeast, _mtSmilingWolf, "", 25)
		//-Savage Ram
		evolveMonsterAchievement(0, _mbBeast, _mtRam, _mtSavageRam, "", 10)
			//-Bandou			Branch 2
			evolveMonsterAchievement(0, _mbBeast, _mtSavageRam, _mtBandou, "", 25)
			levelMonsterAchievement(0, _mbBeast, _mtBandou, "", 25)
			
//-Get the Windup Badge / Bomberhead (BASE)
	//-Triple Cracker
	evolveMonsterAchievement(0, _mbWindup, _mtBomberHead, _mtTripleCracker, "", 5)
		//-Danger Bomb
		evolveMonsterAchievement(0, _mbWindup, _mtTripleCracker, _mtDangerBomb, "", 10)
			//-Sweet Dynamite	Branch 3
			evolveMonsterAchievement(0, _mbWindup, _mtDangerBomb, _mtSweetDynamite, "", 25)
			levelMonsterAchievement(0, _mbWindup, _mtSweetDynamite, "", 25)
			
//-Get the Aquatic Badge / Froggy (BASE)
	//-Geron
	evolveMonsterAchievement(0, _mbAcuatic, _mtFroggy, _mtGeron, "", 5)
		//-Gamal
		evolveMonsterAchievement(0, _mbAcuatic, _mtGeron, _mtGamal, "", 10)
			//-Putos			Branch 6
			evolveMonsterAchievement(0, _mbAcuatic, _mtGamal, _mtPutos, "", 25)
			levelMonsterAchievement(0, _mbAcuatic, _mtPutos, "", 25)
		//-Moon Goyone
		evolveMonsterAchievement(0, _mbAcuatic, _mtGeron, _mtMoonGoyone, "", 10)
			//-Mariner			Branch 7
			evolveMonsterAchievement(0, _mbAcuatic, _mtMoonGoyone, _mtMariner, "", 25)
			levelMonsterAchievement(0, _mbAcuatic, _mtMariner, "", 25)
			
//-Get the Flora Badge / Himara (BASE)
	//-Balalla
	evolveMonsterAchievement(0, _mbFlora, _mtHimarra, _mtBalalla, "", 5)
		//-Stormflower
		evolveMonsterAchievement(0, _mbFlora, _mtBalalla, _mtStormflower, "", 10)
			//-Mandora			Branch 4
			evolveMonsterAchievement(0, _mbFlora, _mtStormflower, _mtMandora, "", 25)
			levelMonsterAchievement(0, _mbFlora, _mtMandora, "", 25)
		//-Mallone
		evolveMonsterAchievement(0, _mbFlora, _mtBalalla, _mtMallone, "", 10)
			//-Scarecrow		Branch 5
			evolveMonsterAchievement(0, _mbFlora, _mtMallone, _mtScarecrow, "", 25)
			levelMonsterAchievement(0, _mbFlora, _mtScarecrow, "", 25)
			
//-Get the Magical Badge / Baron Balloon (BASE)
	//-Flotsam Ballon
	evolveMonsterAchievement(0, _mbMagical, _mtBaronBalloon, _mtFlotsamBalloon, "", 5)
		//-Count Ballon
		evolveMonsterAchievement(0, _mbMagical, _mtFlotsamBalloon, _mtCountBalloon, "", 10)
			//-Duke Ballon		Branch 14
			evolveMonsterAchievement(0, _mbMagical, _mtCountBalloon, _mtDukeBalloon, "", 25)
			levelMonsterAchievement(0, _mbMagical, _mtDukeBalloon, "", 25)
		//-Guardia
		evolveMonsterAchievement(0, _mbMagical, _mtFlotsamBalloon, _mtGuardia, "", 10)
			//-Dark Keeper		Branch 15
			evolveMonsterAchievement(0, _mbMagical, _mtGuardia, _mtDarkKeeper, "", 25)
			levelMonsterAchievement(0, _mbMagical, _mtDarkKeeper, "", 25)

//-Get the Darkling Badge / Spider Lady (BASE)
	//-Shiva
	evolveMonsterAchievement(0, _mbDarkling, _mtSpiderLady, _mtShiva, "", 5)
		//-Spider Woman
		evolveMonsterAchievement(0, _mbDarkling, _mtShiva, _mtSpiderWoman, "", 10)
			//-Bambamchoo		Branch 12
			evolveMonsterAchievement(0, _mbDarkling, _mtSpiderWoman, _mtBambamchoo, "", 25)
			levelMonsterAchievement(0, _mbDarkling, _mtBambamchoo, "", 25)
		//-Miss Gourgon
		evolveMonsterAchievement(0, _mbDarkling, _mtShiva, _mtMissGourgon, "", 10)
			//-Mrs. Gourgon		Branch 13
			evolveMonsterAchievement(0, _mbDarkling, _mtMissGourgon, _mtMrsGourgon, "", 25)
			levelMonsterAchievement(0, _mbMagical, _mtMrsGourgon, "", 25)

//-Get the Reptile Badge / Wind Gemron (BASE)
	//-Ice Gemron
	evolveMonsterAchievement(0, _mbReptile, _mtWindGemron, _mtIceGemrom, "", 5)
		//-Thunder Gemron
		evolveMonsterAchievement(0, _mbReptile, _mtIceGemrom, _mtThunderGemron, "", 10)
			//-Fire Gemron
			evolveMonsterAchievement(0, _mbReptile, _mtThunderGemron, _mtFireGemron, "", 10)
			levelMonsterAchievement(0, _mbReptile, _mtFireGemron, "", 25)
			//-Holy Gemron		Branch 16
			evolveMonsterAchievement(0, _mbReptile, _mtThunderGemron, _mtHolyGemron, "", 10)
			levelMonsterAchievement(0, _mbReptile, _mtHolyGemron, "", 25)

//-Get the Spirit Badge / Pixie (BASE)
	//-Sylph
	evolveMonsterAchievement(0, _mbSpirit, _mtPixie, _mtSylph, "", 5)
		//-Faerie
		evolveMonsterAchievement(0, _mbSpirit, _mtSylph, _mtFaerie, "", 10)
			//-Imp					Branch 8
			evolveMonsterAchievement(0, _mbSpirit, _mtFaerie, _mtImp, "", 25)
			levelMonsterAchievement(0, _mbSpirit, _mtFaerie, "", 25)
		
//-Get the Undead Badge / Skeletal Knight (BASE)
	//-Hornhead
	evolveMonsterAchievement(0, _mbUndead, _mtSkeletonSoldier, _mtHornhead, "", 5)
		//-Master Jacket
		evolveMonsterAchievement(0, _mbUndead, _mtHornhead, _mtMasterJacket, "", 10)		
			//-Rare Jacket		Branch 10
			evolveMonsterAchievement(0, _mbUndead, _mtMasterJacket, _mtRareJacket, "", 25)
			levelMonsterAchievement(0, _mbUndead, _mtMasterJacket, "", 25)
		//-Whitebeard
		evolveMonsterAchievement(0, _mbUndead, _mtHornhead, _mtWhitebeard, "", 10)
			//-Oyakata			Branch 11
			evolveMonsterAchievement(0, _mbUndead, _mtWhitebeard, _mtOyakata, "", 25)
			levelMonsterAchievement(0, _mbUndead, _mtOyakata, "", 25)
			
//-Get the Card Badge / Club (BASE)
	//-Diamond
	evolveMonsterAchievement(0, _mbCard, _mtClub, _mtDiamond, "", 5)
		//-Heart
		evolveMonsterAchievement(0, _mbCard, _mtDiamond, _mtHeart, "", 10)
			//-Spade
			evolveMonsterAchievement(0, _mbCard, _mtHeart, _mtSpade, "", 10)
			levelMonsterAchievement(0, _mbCard, _mtSpade, "", 25)
			//-Joker			Branch 9
			evolveMonsterAchievement(0, _mbCard, _mtHeart, _mtJoker, "", 10)
			levelMonsterAchievement(0, _mbCard, _mtJoker, "", 25)
			
//-Other ideas for monster subset
//-Defeat X monsters with Y transformation
//-Clear dungeons in UC with a monster lv12 max
//-Clear dungeons in RBW with a monster lv24 max
//-Clear dungeons in SC with a monster lv36 max
//-Clear dungeons in ORC with a monster lv48 max
//-Clear dungeons in MG with a monster lv60 max
//-Clear dungeons in StarPath with a monster lv72 max
//-Clear dungeons in MFP with a monster lv84 max
//-Clear dungeons in ZM with a monster up to lv99
//-Defeat X monsters at RBW with a transformation level 25 max
//-Defeat X monsters at SC with a transformation level 50 max
//-Defeat X monsters at ORC with a transformation level 75 max
//-Defeat X monsters at MG with a transformation

floorMonsterAchievement(0, _dUChannel, _fOutsideWorld, _mbFlora, "", 1)
//-TODO: Complete the list
}

//#endregion }

//#region Leaderboards {

if (subsetMonster == 0){
fishLeaderboard(0, _itPriscleen)
fishLeaderboard(0, _itBobo)
fishLeaderboard(0, _itGobbler)
fishLeaderboard(0, _itNonky)
fishLeaderboard(0, _itKaji)
fishLeaderboard(0, _itBakuBaku)
fishLeaderboard(0, _itMadamGarayan)
fishLeaderboard(0, _itGummy)
fishLeaderboard(0, _itNiler)
fishLeaderboard(0, _itUmadakara)
fishLeaderboard(0, _itTarton)
fishLeaderboard(0, _itPiccoly)
fishLeaderboard(0, _itBon)
fishLeaderboard(0, _itHamaHama)
fishLeaderboard(0, _itNegie)
fishLeaderboard(0, _itDen)
fishLeaderboard(0, _itHeela)
fishLeaderboard(0, _itBaronGarayan)

fishContestLeaderboard(0)
fishFrenzyLeaderboard(0)

levelLeaderboard(0, _dUChannel, _fOutsideWorld)
levelLeaderboard(0, _dUChannel, _fBattleRats)
levelLeaderboard(0, _dUChannel, _fGhostChannel)
levelLeaderboard(0, _dUChannel, _fStevesBattle)
levelLeaderboard(0, _dUChannel, _fSTreasureChest)

levelLeaderboard(0, _dRBWoods, _fFrightForest)
levelLeaderboard(0, _dRBWoods, _fStrangeTree)
levelLeaderboard(0, _dRBWoods, _fRollingShells)
levelLeaderboard(0, _dRBWoods, _fThisIsGeostone)
levelLeaderboard(0, _dRBWoods, _fNoiseInForest)
levelLeaderboard(0, _dRBWoods, _fImPixie)
levelLeaderboard(0, _dRBWoods, _fLegendKillSnake)
levelLeaderboard(0, _dRBWoods, _fGrotSpiderLady)
levelLeaderboard(0, _dRBWoods, _fRainbowFallsEntrance)

levelLeaderboard(0, _dRBWoods, _fLookingEarthGem)
levelLeaderboard(0, _dRBWoods, _fSomethingRareHere)
levelLeaderboard(0, _dRBWoods, _fScaryTree)

levelLeaderboard(0, _dSCanyon, _fHeadlongDash)
levelLeaderboard(0, _dSCanyon, _fFireIceMix)
levelLeaderboard(0, _dSCanyon, _fEarthShakingDemon)
levelLeaderboard(0, _dSCanyon, _fPowerfulYoYoRobot)
levelLeaderboard(0, _dSCanyon, _fElephantArmyValley)
levelLeaderboard(0, _dSCanyon, _fDangerousTreasureChest)
levelLeaderboard(0, _dSCanyon, _fLittleDragonCounter)
levelLeaderboard(0, _dSCanyon, _fWarriorStarCanyon)
levelLeaderboard(0, _dSCanyon, _fSmilingFairyVillage)
levelLeaderboard(0, _dSCanyon, _fCursedMask)
levelLeaderboard(0, _dSCanyon, _fWeRolyPolyBrothers)
levelLeaderboard(0, _dSCanyon, _fDragonSlayer)
levelLeaderboard(0, _dSCanyon, _fRamaPriestsLikeCheese)
levelLeaderboard(0, _dSCanyon, _fNaturesThreat)
levelLeaderboard(0, _dSCanyon, _fMoonBaron)
levelLeaderboard(0, _dSCanyon, _fLighthouseAppears)

levelLeaderboard(0, _dSCanyon, _fLookingWindGem)
levelLeaderboard(0, _dSCanyon, _fEvilSpiritValley)
levelLeaderboard(0, _dSCanyon, _fBraveWarriorsValley)

levelLeaderboard(0, _dORCave, _fPirates)
levelLeaderboard(0, _dORCave, _fTonsFish)
levelLeaderboard(0, _dORCave, _fTankBoss)
levelLeaderboard(0, _dORCave, _fWaterMonster)
levelLeaderboard(0, _dORCave, _fScaryAuntieMedusa)
levelLeaderboard(0, _dORCave, _fSandMolers)
levelLeaderboard(0, _dORCave, _fBatDen)
levelLeaderboard(0, _dORCave, _fPiratesHideout)
levelLeaderboard(0, _dORCave, _fWanderingZappy)
levelLeaderboard(0, _dORCave, _fBanquetDead)
levelLeaderboard(0, _dORCave, _fImprovements)
levelLeaderboard(0, _dORCave, _fReturnSerpent)
levelLeaderboard(0, _dORCave, _fCursedSea)
levelLeaderboard(0, _dORCave, _fSeaAtrocity)

levelLeaderboard(0, _dORCave, _fLookingWaterGem)
levelLeaderboard(0, _dORCave, _fPiratesRevenge)
levelLeaderboard(0, _dORCave, _fDeathOcean)

levelLeaderboard(0, _dMGundore, _fBattleGriffonArmy)
levelLeaderboard(0, _dMGundore, _fMtGundorWind)
levelLeaderboard(0, _dMGundore, _fLittleDragonsMountain)
levelLeaderboard(0, _dMGundore, _fSteamGoyone)
levelLeaderboard(0, _dMGundore, _fMountainBaddieAppears)
levelLeaderboard(0, _dMGundore, _fMagmanoff)
levelLeaderboard(0, _dMGundore, _fDangerZone)
levelLeaderboard(0, _dMGundore, _fSecretFireMountain)
levelLeaderboard(0, _dMGundore, _fDeathtrap)
levelLeaderboard(0, _dMGundore, _fDesperationMountain)
levelLeaderboard(0, _dMGundore, _fPainsNeck)
levelLeaderboard(0, _dMGundore, _fWalkingPathFlames)
levelLeaderboard(0, _dMGundore, _fBurningUndead)
levelLeaderboard(0, _dMGundore, _fFireDragon)
levelLeaderboard(0, _dMGundore, _fTreasureChestDangerZone)
levelLeaderboard(0, _dMGundore, _fRoadRiverFlames)

levelLeaderboard(0, _dMGundore, _fLookingFireGem)
levelLeaderboard(0, _dMGundore, _fExplosiveHotSpring)
levelLeaderboard(0, _dMGundore, _fCrazyMountain)

levelLeaderboard(0, _dMFPalace, _fAncientWind)
levelLeaderboard(0, _dMFPalace, _fCardWarriorsGather)
levelLeaderboard(0, _dMFPalace, _fDangerousTreasure)
levelLeaderboard(0, _dMFPalace, _fZombieZone)
levelLeaderboard(0, _dMFPalace, _fFeelingOutofPlace)
levelLeaderboard(0, _dMFPalace, _fLivingStatue)
levelLeaderboard(0, _dMFPalace, _fDangerZoneM)
levelLeaderboard(0, _dMFPalace, _fScaryWomen)
levelLeaderboard(0, _dMFPalace, _fHellElephant)
levelLeaderboard(0, _dMFPalace, _fCrushtheUndead)
levelLeaderboard(0, _dMFPalace, _fMissingGemDealer)
levelLeaderboard(0, _dMFPalace, _fMaxLongestDay)
levelLeaderboard(0, _dMFPalace, _fHellCorridor)
levelLeaderboard(0, _dMFPalace, _fMonicaAllAlone)
levelLeaderboard(0, _dMFPalace, _fRagingSpirits)
levelLeaderboard(0, _dMFPalace, _fLonelyMachine)
levelLeaderboard(0, _dMFPalace, _fNobility)
levelLeaderboard(0, _dMFPalace, _fPalaceWatchdog)
levelLeaderboard(0, _dMFPalace, _fRoadtoMemories)
levelLeaderboard(0, _dMFPalace, _fFinalTrumpCard)
levelLeaderboard(0, _dMFPalace, _fElementalParty)
levelLeaderboard(0, _dMFPalace, _fWarnderingKnightSoul)
levelLeaderboard(0, _dMFPalace, _fBewareCarelessness)
levelLeaderboard(0, _dMFPalace, _fFinalBattle)

levelLeaderboard(0, _dZMine, _fGetZelmite)
levelLeaderboard(0, _dZMine, _fMoonMole)
levelLeaderboard(0, _dZMine, _fPowerfulFrog)
levelLeaderboard(0, _dZMine, _fEvilBatInvasion)
levelLeaderboard(0, _dZMine, _fCrossroadsDestiny)
levelLeaderboard(0, _dZMine, _fScaryFace)
levelLeaderboard(0, _dZMine, _fPowerfulWildBoar)
levelLeaderboard(0, _dZMine, _fMurderousTank)
levelLeaderboard(0, _dZMine, _fWhichOne)
levelLeaderboard(0, _dZMine, _fOldWomanSawIt)
levelLeaderboard(0, _dZMine, _fGiantSnake)
levelLeaderboard(0, _dZMine, _fUndauntedSoldiers)
levelLeaderboard(0, _dZMine, _fHellWard1)
levelLeaderboard(0, _dZMine, _fRoadTruth)
levelLeaderboard(0, _dZMine, _fCrossroads)
levelLeaderboard(0, _dZMine, _fLostRoad)
levelLeaderboard(0, _dZMine, _fIndecision)
levelLeaderboard(0, _dZMine, _fLittleDragonArmy)
levelLeaderboard(0, _dZMine, _fCaptainReturns)
levelLeaderboard(0, _dZMine, _fHellsTurningPoint)
levelLeaderboard(0, _dZMine, _fMummyHeaven)
levelLeaderboard(0, _dZMine, _fWard3Entrance)
levelLeaderboard(0, _dZMine, _fFlotsamBrokenArmy)
levelLeaderboard(0, _dZMine, _fHellWard3WellsideGossip)
levelLeaderboard(0, _dZMine, _fDevilElemental)
levelLeaderboard(0, _dZMine, _fMariner)
levelLeaderboard(0, _dZMine, _fUltimateSnake)
levelLeaderboard(0, _dZMine, _fOmen)
levelLeaderboard(0, _dZMine, _fAnxiety)
levelLeaderboard(0, _dZMine, _fFirmBelieve)
levelLeaderboard(0, _dZMine, _fSleepingLight)
sphedaPracticeLeaderboard(0)
warningLeaderboard(0)
}
else
{
	levelMonsterLeaderboard(0, _dUChannel, _fOutsideWorld, _mbFlora)
}
//#endregion }

//#region Rich Presence {
rich_presence_conditional_display(inTitle2(), 
			"In the Title Screen")
			
rich_presence_conditional_display(fishExtras(), "Free Races")

rich_presence_conditional_display(sphedaExtras(), "Spheda Practice - Hole No {0}",
			rich_presence_value("val", sphedaPracticeHole + 1))
			
rich_presence_conditional_display(inDungeon() && chapter == _chpPrologue,
			"[{0}] - {1} is in {2} [📆:{5} 🕰️: {3}] [💰: {4}]",
			rich_presence_lookup("chp", chapter, _dictChapterRP, ""),
			rich_presence_lookup("char", character, _dictChar, "Max"),
			rich_presence_lookup("dunumUC", UCfloorId, _dictFloor[_dUChannel], "???"),	
			rich_presence_value("ttime", playtime, "FRAMES"),
			rich_presence_value("val", gilda),
			rich_presence_value("val", day + 1))
			
rich_presence_conditional_display(inDungeon() && currentDungeon == _dUChannel, 
			"[{0}] - {1} is in {2} - {3} [📆:{6} 🕰️: {4}] [💰: {5}]",
			rich_presence_lookup("chp", chapter, _dictChapterRP, ""),
			rich_presence_lookup("char", character, _dictChar, "Max"),
			rich_presence_lookup("dunUC", currentDungeon, _dictDungeon, "Underground Channel"),
			rich_presence_lookup("dunumUC", UCfloorId, _dictFloor[_dUChannel], "???"),
			rich_presence_value("ttime", playtime, "FRAMES"),
			rich_presence_value("val", gilda),
			rich_presence_value("val", day + 1))
			
rich_presence_conditional_display(inDungeon() && currentDungeon == _dRBWoods, 
			"[{0}] - {1} is in {2} - {3} [📆:{6} 🕰️: {4}] [💰: {5}]",
			rich_presence_lookup("chp", chapter, _dictChapterRP, ""),
			rich_presence_lookup("char", character, _dictChar, "Max"),
			rich_presence_lookup("dunRBW", currentDungeon, _dictDungeon, "Rainbow Butterfly Woods"),
			rich_presence_lookup("dunumRBW", RBWfloorId, _dictFloor[_dRBWoods], "???"),
			rich_presence_value("ttime", playtime, "FRAMES"),
			rich_presence_value("val", gilda),
			rich_presence_value("val", day + 1))
			
rich_presence_conditional_display(inDungeon() && currentDungeon == _dSCanyon, 
			"[{0}] - {1} is in {2} - {3} [📆:{6} 🕰️: {4}] [💰: {5}]",
			rich_presence_lookup("chp", chapter, _dictChapterRP, ""),
			rich_presence_lookup("char", character, _dictChar, "Max"),
			rich_presence_lookup("dunSC", currentDungeon, _dictDungeon, "Starlight Canyon"),
			rich_presence_lookup("dunumSC", SCfloorId, _dictFloor[_dSCanyon], "???"),
			rich_presence_value("ttime", playtime, "FRAMES"),
			rich_presence_value("val", gilda),
			rich_presence_value("val", day + 1))
			
rich_presence_conditional_display(inDungeon() && currentDungeon == _dORCave, 
			"[{0}] - {1} is in {2} - {3} [📆:{6} 🕰️: {4}] [💰: {5}]",
			rich_presence_lookup("chp", chapter, _dictChapterRP, ""),
			rich_presence_lookup("char", character, _dictChar, "Max"),
			rich_presence_lookup("dunORC", currentDungeon, _dictDungeon, "Ocean Roar Cave"),
			rich_presence_lookup("dunumORC", ORCfloorId, _dictFloor[_dORCave], "???"),
			rich_presence_value("ttime", playtime, "FRAMES"),
			rich_presence_value("val", gilda),
			rich_presence_value("val", day + 1))
			
rich_presence_conditional_display(inDungeon() && currentDungeon == _dMGundore, 
			"[{0}] - {1} is in {2} - {3} [📆:{6} 🕰️: {4}] [💰: {5}]",
			rich_presence_lookup("chp", chapter, _dictChapterRP, ""),
			rich_presence_lookup("char", character, _dictChar, "Max"),
			rich_presence_lookup("dunMG", currentDungeon, _dictDungeon, "Mount Gundore"),
			rich_presence_lookup("dunumMG", MGfloorId, _dictFloor[_dMGundore], "???"),
			rich_presence_value("ttime", playtime, "FRAMES"),
			rich_presence_value("val", gilda),
			rich_presence_value("val", day + 1))
			
rich_presence_conditional_display(inDungeon() && currentDungeon == _dMFPalace, 
			"[{0}] - {1} is in {2} - {3} [📆:{6} 🕰️: {4}] [💰: {5}]",
			rich_presence_lookup("chp", chapter, _dictChapterRP, ""),
			rich_presence_lookup("char", character, _dictChar, "Max"),
			rich_presence_lookup("dunMFP", currentDungeon, _dictDungeon, "Moon Flower Palace"),
			rich_presence_lookup("dunumMFP", MFPfloorId, _dictFloor[_dMFPalace], "???"),
			rich_presence_value("ttime", playtime, "FRAMES"),
			rich_presence_value("val", gilda),
			rich_presence_value("val", day + 1))
			
rich_presence_conditional_display(inDungeon() && currentDungeon == _dZMine, 
			"[{0}] - {1} is in {2} - {3} [📆:{6} 🕰️: {4}] [💰: {5}]",
			rich_presence_lookup("chp", chapter, _dictChapterRP, ""),
			rich_presence_lookup("char", character, _dictChar, "Max"),
			rich_presence_lookup("dunZM", currentDungeon, _dictDungeon, "Zelmite Mine"),
			rich_presence_lookup("dunumZM", ZMfloorId, _dictFloor[_dZMine], "???"),
			rich_presence_value("ttime", playtime, "FRAMES"),
			rich_presence_value("val", gilda),
			rich_presence_value("val", day + 1))
			
rich_presence_conditional_display(notDungeon(),
			"[{0}] - {1} is in {2} [📆:{5} 🕰️: {3}] [💰: {4}]",
			rich_presence_lookup("chp", chapter, _dictChapterRP, ""),
			rich_presence_lookup("char", character, _dictChar, "Max"),
			rich_presence_lookup("map", mapId, _dictMap, "Sindain"),			
			rich_presence_value("ttime", playtime, "FRAMES"),
			rich_presence_value("val", gilda),
			rich_presence_value("val", day + 1))

rich_presence_display("Playing Dark Cloud 2")
//#endregion }
