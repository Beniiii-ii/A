const fs = require("fs");
const { db } = require("./models/db");
const config = require("./config.json");
const { log } = require("./utilities");


function searchQueue() {
    return db.promise().query("SELECT name, path, queuedby FROM queue").then(([result]) => {
        if (result.length > 0) {
            log("There is a queue.");
            log(`Path: ${result[0].path} Name: ${result[0].name} Queuedby: ${result[0].queuedby} Grabbed from queue`);
            return { song: result[0].name, path: result[0].path, queuedBy: result[0].queuedby };
        }
        return null;
    });
}

function randomSong() {
    return db.promise().query("SELECT DISTINCT path, name FROM music WHERE type != ? ORDER BY RAND() LIMIT 1",["unreleased"]).then(([result]) => {
        //gets path from the music db, and randomly selects a released track
        if(result != null) {
            const songPath = result[0].path;
            const songName = result[0].name;
            log(`Path: ${songPath} Name: ${songName} is now playing`);
            fs.access(`${config.discord.music_path}${songPath}`, fs.F_OK, async (err) => {
                if (err) {
                    await randomSong()
                }
            })
            return { song: songName, path: songPath, queuedBy: null }
        }
    });    
}

function updateRecent(name, queuedBy) {
    //Adds recently played songs to database
    db.query("SELECT album FROM music WHERE name = ?",[name], function(err,result) {
        if (err) return log(`Error Updating Recent: ${err} Result: ${result}`);
        let currentAlbum = result[0]['album'];
        db.query("INSERT INTO recent (name, album, queuedby) VALUES (?,?,?)", [name, currentAlbum, queuedBy]);
    });

    /* const album = await database.music.findOne({ where: { name: name }})
    await database.recent.create({ name: name, queuedby: queuedBy, album: album.getDataValue("album") }) */
}

function dequeue(name) {
    db.query("DELETE FROM queue WHERE name = ?", [name]);
}

function updatePlayCount(path) {
    db.query("UPDATE music SET playcount = playcount + 1 WHERE path = ?",[path])
}

function autoPlay(result, client) {
    updateRecent(result.song, result.queuedBy);
    const vc = client.channels.cache.get(client.voice.connections.array()[0].channel.id);
    client.user.setActivity(result.song, { type: "LISTENING" });
    const dispatcher = client.voice.broadcasts[0].play(`${config.discord.music_path}${result.path}`, { bitrate: 196000 });
    dispatcher.on("finish", () => {
        if (vc.members.size > 1) {
            updatePlayCount(result.path);
        }
        dequeue(result.song);
        setTimeout(async function () { autoPlay( await searchQueue() || await randomSong(), client) }, 1000);
    })
}

module.exports = { searchQueue, randomSong, dequeue, autoPlay }