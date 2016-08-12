require 'slack-ruby-bot'

class Bot < SlackRubyBot::Bot
  command 'ping' do |client, data, _match|
    client.say(text: 'pong', channel: data.channel)
  end
  command 'I hate this dumb bot' do |client, data, _match|
    client.say(text: 'Guys! Guys! Guys!', channel: data.channel)
  end
  command 'This Sucks' do |client, data, _match|
    client.say(text: 'Watch your language, Mister!', channel: data.channel)
  end
  command 'I am done!' do |client, data, _match|
    client.say(text: 'Look who deserves a beer!', channel: data.channel)
  end
end

Bot.run












# require '/Users/rajdesai/bobo/slack-ruby-bot/examples/minimal/alchemyapi_ruby/alchemyapi.rb'
# require 'slack-ruby-bot'
#
# # require 'version'
# require 'about'
# require 'commands'
# require 'app'


# SlackRubyBot::Client.logger.level = Logger::WARN
# $alchemyapi = AlchemyAPI.new()
# $user_text =[]
#
#
#
#
# class MarketBot < SlackRubyBot::Bot
#   scan(/([\w+])/) do |client, data, text|
#
#
# $response = $alchemyapi.sentiment('text', text)
#
# if $response['status'] == 'OK'
# 	#Make sure score exists (it's not returned for neutral sentiment
#   if $response['docSentiment'].key?('score')
#       client.web_client.chat_postMessage(
#       channel: data.channel,
#       as_user: true,
#       text: ["Guys! Guys! Guys!", "Calm your Tits Man!", "Cool Your Waters..."].sample
#     )
#   	end
#   end


# 	if $response['docSentiment']['score'] < 0
#     client.web_client.chat_postMessage(
#       channel: data.channel,
#       as_user: true,
#       text: ["Guys! Guys! Guys!", "Calm your Tits Man!", "Cool Your Waters..."].sample
#     )
# 	end
# else
# 	puts 'Error in sentiment analysis call: ' + $response['statusInfo']
# end
# end
# end
#
#
#
#
#
#
#
# #     # YahooFinance::Client.new.quotes(stocks, [:name, :symbol, :last_trade_price, :change, :change_in_percent]).each do |quote|
# #       if
# #       client.web_client.chat_postMessage(
# #         channel: data.channel,
# #         as_user: true,
# #         text: "Hello",
# #         attachments: [
# #           {
# #             fallback: "#{quote.name} (#{quote.symbol}): $#{quote.last_trade_price}",
# #             title: "#{quote.name} (#{quote.symbol})",
# #             text: "$#{quote.last_trade_price} (#{quote.change_in_percent})",
# #             color: quote.change.to_f > 0 ? '#00FF00' : '#FF0000'
# #           }
# #         ]
# #       )
# #     end
# #   end
# # end
#
# MarketBot.run
