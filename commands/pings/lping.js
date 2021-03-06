const { Command, Flag } = require("discord-akairo");
const { MessageEmbed, MessageActionRow, MessageButton } = require("discord.js");
const { db } = require("../../models/db");
const { anyUsage } = require("../../utilities/utilities");
const { isTrusted } = require("../../utilities/permissions");

class LPingCommand extends Command {
	constructor() {
		super("lping", {
			aliases: ["lping"],
			category: "ping",
			channel: "guild",
			description: {
				content: "Returns the current general pinglists you are a part of, or pings a pinglist.",
				usage: "lping / lping [listname] [message]",
				examples: [
					"lping", "lping list", "lping chase link", "lping get chase", "lping drop chase", "lping create chase", "lping delete chase",
				],
			},
		});
	}

	*args() {
		const pinglist = yield {
			type: "lowercase",
			default: "",
			unordered: true,
		};

		const method = yield {
			type: [
				["lpingget", "get"],
				["lpingdrop", "drop"],
				["lpinglist", "list"],
				["lpingcreate", "create"],
				["lpingdelete", "delete"],
			],
		};

		if (method) return Flag.continue(method);
		return { pinglist };
	}

	async exec(message, args) {

		const failedEmbed = new MessageEmbed()
			.setColor("RED")
			.setDescription(`Uh oh! Looks like you're not part of any lists.\nYou can set it by typing ${anyUsage(message.guild, message.client, "lping get [name]")}`);

		const embed = new MessageEmbed()
			.setAuthor(message.author.tag, message.author.displayAvatarURL({ dynamic: true, format: "png" }), message.author.displayAvatarURL({ dynamic: true, format: "png" }))
			.setColor("#FF69B4")
			.setTitle("Assigned Pings");

		const row = new MessageActionRow()
			.addComponents(
				new MessageButton()
					.setCustomId("send")
					.setLabel("Send")
					.setStyle("DANGER"),
				new MessageButton()
					.setCustomId("cancel")
					.setLabel("Cancel")
					.setStyle("SECONDARY"),
			);

		async function findPingList() {
			const [result] = await db.promise().query("SELECT `name`, `guildID` FROM Ping WHERE name = ? AND guildID = ?", [args.pinglist, message.guild.id]);
			return result.length !== 0;
		}

		function showPingLists() {
			db.query("SELECT u.userID, p.pingID, p.name FROM User as u INNER JOIN UserPing as up ON u.userID = up.userID INNER JOIN Ping as p ON p.pingID = up.pingID WHERE p.guildID = ? AND up.userID = ?", [message.guild.id, message.author.id], function(err, result) {
				if (err) return;
				if (result.length < 1) return message.channel.send({ embeds: [failedEmbed] });
				const pings = result.map(i => i.name);
				return message.channel.send({ embeds: [embed.setDescription(`\`${pings.join("` | `")}\``)] });
			});
		}

		function ping() {
			db.query("SELECT u.userID FROM User as u INNER JOIN UserPing as up ON u.userID = up.userID INNER JOIN Ping as p ON p.pingID = up.pingID WHERE p.guildID = ? AND p.name = ?", [message.guild.id, args.pinglist], async function(err, result) {
				if (err) return;
				if (result.length < 1) return message.channel.send({ embeds: [failedEmbed.setDescription("It looks like nobody has this pinglist assigned. :confused:")] });
				const users = [`${args.pinglist}`];
				for (const rows of result.values()) {
					await message.guild.members.fetch({ user: rows.userID })
						.then(user => {
							users.push(user.user.toString());
						})
						.catch(() => console.error());
				}
				users.push(`- to join this pinglist, do \`${anyUsage(message.guild, message.client, `lping get ${args.pinglist}`)}\` in bots.`);
				if (users.length < 3) return message.channel.send({ embeds: [failedEmbed.setDescription("It looks like nobody has this pinglist assigned. :confused:")] });
				const sendList = users.join(" ").toString();
				for (let i = 0; i < sendList.length; i += 2040) {
					const toSend = sendList.substring(i, Math.min(sendList.length, i + 2040));
					await message.channel.send(toSend);
				}
			});
		}

		if (args.pinglist === "") {
			showPingLists();
		}
		else if (await findPingList() === true) {
			if (await isTrusted(message.member)) {
				const permsEmbed = new MessageEmbed()
					.setDescription("Sorry, you don't have the correct permissions to ping a pinglist.")
					.setColor("RED");
				return message.channel.send({ embeds: [permsEmbed] });
			}
			const buttonEmbed = new MessageEmbed()
				.setDescription(`${message.author}, Are you sure you want to ping this ping list? ${this.client.user.username} is not responsible for any potential consequences.`)
				.setColor("YELLOW");
			message.channel.send({ embeds: [buttonEmbed], components: [row] })
				.then(interaction => {
					const filter = async i => {
						await i.deferUpdate();
						return i.user.id === message.author.id;
					};
					interaction.awaitMessageComponent({ filter, componentType: "BUTTON", time: 10000 })
						.then(i => {
							if (i.customId === "send") {
								i.deleteReply();
								ping();
							}
							else {
								i.deleteReply();
							}
						})
						.catch(() => interaction.edit({ components: [] }));
				});
		}
		else {
			return message.channel.send({ embeds: [failedEmbed.setDescription(`Uh oh! Looks like this pinglist does not exist.\nYou can can view available pinglists in this server by doing ${anyUsage(message.guild, message.client, "lping list")}`)] });
		}
	}
}

module.exports = LPingCommand;
