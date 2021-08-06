const { Command } = require("discord-akairo");

class PauseCommand extends Command {
    constructor() {
        super("pause", {
            aliases: ["pause", "lpause"],
            category: "music",
            channel: "guild",
            ownerOnly: true,
            description: {
                content: "Pauses music on the bot.",
                usage: "pause",
                examples: [
                    "pause"
                ]
            }
        });
    }

    async exec(message, args) {
        const embed = message.client.util
            .embed()
            .setDescription("Music has been paused. :pause_button:")
            .setColor("GREEN")

        if (!message.client.voice.broadcasts[0].dispatcher.paused) {
            message.client.voice.broadcasts[0].dispatcher.pause(true)
            return message.channel.send({ embeds: [embed] })
        }
        else {
            return message.channel.send(
                embed
                    .setDescription("Music is already paused.")
                    .setColor("RED")
            )
        }
    }
}

module.exports = PauseCommand;