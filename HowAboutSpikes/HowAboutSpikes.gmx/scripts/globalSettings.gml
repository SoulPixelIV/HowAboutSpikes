global.mode = 0;
global.money = 0;
global.healthVar = 2;

global.playerSpawnLocation = 0;
global.playerSpawnLocationSave = 0;
global.deathCount = 0;
global.spawned = false;

global.hitLever = false;
global.hitLeverBlue = false;
global.hitLeverRed = false;

global.pickedPet = false;
global.pickedRed = false;
global.pickedBlue = false;
global.placedRed = false;
global.placedBlue = false;
global.placedRed2 = false;
global.placedBlue2 = false;
global.pickedTooth = false;
global.pickedGoldchain = false;
global.pickedKey = false;
global.daughterHelped = false;

global.maxUltraSouls = 7;
global.pickedUltraSouls = 0;

global.opDoor = false;
global.gvDoor = false;
global.scbDoor = false;

global.musicVolume = 0.3;
global.soundVolume = 1;

global.brightness = 1;
global.brightnessCount = 0;
global.musicCount = 2;

global.ultraSoul1 = 0;
global.ultraSoul2 = 0;
global.ultraSoul3 = 0;
global.ultraSoul4 = 0;
global.ultraSoul5 = 0;
global.ultraSoul6 = 0;
global.ultraSoul7 = 0;

global.gardenValleyTD[0] = 0;
global.unknownForest1TD[0] = 0;
global.unknownForest2TD[0] = 0;
global.unknownForest3TD[0] = 0;
global.demonsKeep1TD[0] = 0;
global.demonsKeep2TD[0] = 0;
global.demonsKeep3TD[0] = 0;
global.undergroundCity1TD[0] = 0;
global.undergroundCity2TD[0] = 0;
global.undergroundCity3TD[0] = 0;
global.sentinelGraves1TD[0] = 0;
global.sentinelGraves2TD[0] = 0;
global.deepPrisonTD[0] = 0;
global.overcastPeak1TD[0] = 0;
global.overcastPeak2TD[0] = 0;
global.overcastPeak3TD[0] = 0;
global.overcastPeak4TD[0] = 0;
global.overcastPeak5TD[0] = 0;
global.skullcoinBay1TD[0] = 0;
global.skullcoinBay2TD[0] = 0;
global.skullcoinBay3TD[0] = 0;
global.skullcoinBay4TD[0] = 0;

global.gardenValleyTD[1] = 0;
global.unknownForest1TD[1] = 0;
global.unknownForest2TD[1] = 0;
global.unknownForest3TD[1] = 0;
global.demonsKeep1TD[1] = 0;
global.demonsKeep2TD[1] = 0;
global.demonsKeep3TD[1] = 0;
global.undergroundCity1TD[1] = 0;
global.undergroundCity2TD[1] = 0;
global.undergroundCity3TD[1] = 0;
global.sentinelGraves1TD[1] = 0;
global.sentinelGraves2TD[1] = 0;
global.deepPrisonTD[1] = 0;
global.overcastPeak1TD[1] = 0;
global.overcastPeak2TD[1] = 0;
global.overcastPeak3TD[1] = 0;
global.overcastPeak4TD[1] = 0;
global.overcastPeak5TD[1] = 0;
global.skullcoinBay1TD[1] = 0;
global.skullcoinBay2TD[1] = 0;
global.skullcoinBay3TD[1] = 0;
global.skullcoinBay4TD[1] = 0;

global.gardenValleyTD[2] = 0;
global.unknownForest1TD[2] = 0;
global.unknownForest2TD[2] = 0;
global.unknownForest3TD[2] = 0;
global.demonsKeep1TD[2] = 0;
global.demonsKeep2TD[2] = 0;
global.demonsKeep3TD[2] = 0;
global.undergroundCity1TD[2] = 0;
global.undergroundCity2TD[2] = 0;
global.undergroundCity3TD[2] = 0;
global.sentinelGraves1TD[2] = 0;
global.sentinelGraves2TD[2] = 0;
global.deepPrisonTD[2] = 0;
global.overcastPeak1TD[2] = 0;
global.overcastPeak2TD[2] = 0;
global.overcastPeak3TD[2] = 0;
global.overcastPeak4TD[2] = 0;
global.overcastPeak5TD[2] = 0;
global.skullcoinBay1TD[2] = 0;
global.skullcoinBay2TD[2] = 0;
global.skullcoinBay3TD[2] = 0;
global.skullcoinBay4TD[2] = 0;

//Player
global.dmgMult = 1;

//Rings
global.ringInventory[0] = -1;
global.ringInventory[1] = -1;
global.ringInventory[2] = -1;
global.ringInventory[3] = -1;

global.ringVision = false;
global.ringWealth = false;
global.ringPower = false;
global.ringFriendship = false;

//Map
global.map = 0;

//Special
global.level = 0;

//FinalBoss
global.spawnedBottle = false;
global.spawnBoss = true;

//Save
global.checkpointX = 0;
global.checkpointY = 0;
global.checkpointServerX = 0;
global.checkpointServerY = 0;

global.currSave = 0;

//MP
global.mpStatus = -1;
global.mpClientx = 0;
global.mpClienty = 0;
global.playerClientBackx = 0;
global.playerClientBacky = 0;
global.serverSpawned = false;
global.clientSpawned = false;

//Speedrun
global.firstTime = true;
global.speedStatus = -1;
global.speedHours = 0;
global.speedMinutes = 0;
global.speedSeconds = -5;
global.speedMilli = 0;
global.speedScore = 10000;

//Sounds
audio_sound_gain(land_snd, global.soundVolume, 0);
audio_sound_gain(attack_snd, global.soundVolume, 0);
audio_sound_gain(turretAlarm_snd, global.soundVolume, 0);
audio_sound_gain(turretShot_snd, global.soundVolume, 0);
audio_sound_gain(hit_snd, global.soundVolume, 0);
audio_sound_gain(walkGrass_snd, global.soundVolume, 0);
audio_sound_gain(walkSnow_snd, global.soundVolume, 0);
audio_sound_gain(walkStone_snd, global.soundVolume, 0);
audio_sound_gain(chaingun_snd, global.soundVolume, 0);
audio_sound_gain(pop_snd, global.soundVolume, 0);
audio_sound_gain(checkpointActive_snd, global.soundVolume / 1.3, 0);
audio_sound_gain(woodboxDestroy_snd, global.soundVolume * 1.3, 0); 
