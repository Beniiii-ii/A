# Red-Bot
A bot for our Discord server.

I do not guarantee stability when used on any other server, though it should work. It currently will only play music on one server at a time. Fully rewritten using discord.js.

### Requirements
node.js

Discord.js and Eris

ffmpeg for music

mysql for songs and queues

### Usage
Uses mysql for storage of song information and playcount data, as well as recently played songs, and queues.

### Install Music Bot (using Ubuntu)
<<<<<<< HEAD
`npm install Woor/discord.io#gateway_v6`
=======
`npm install discord.js --save`
>>>>>>> 00c09078328ccb05b1d00a4a6854f011e9e0bdd9

`npm install eris mysql node-opus`

`npm install fs`

### Install FFMPEG

`apt-get install ffmpeg`

### Point ffmpeg to PATH
Edit `.bashrc` and add `export PATH="/usr/bin/ffmpeg:$PATH"` assuming ffmpeg was installed in the default location

`source .bashrc` to save PATH

### Running
`node rwNonMusic.js`
`node lhwb-music.js`

### Thanks to:
<<<<<<< HEAD
@FearlessSwiftie, @richmoj3, @Donran and the Discord.io people for all the help!
=======
FS(@swiftlyanerd), Adam (@louistio) for all the help!
>>>>>>> 00c09078328ccb05b1d00a4a6854f011e9e0bdd9
