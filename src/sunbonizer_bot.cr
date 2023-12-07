require "tourmaline"
require "sunbonizer"

# TODO: Write documentation for `SunbonizerBot`
class SunbonizerBot < Tourmaline::Client 

  @[Command(["start", "help"])]
  def start_command(ctx)
    ctx.message.reply("х0чэшь===писать как--вэликий певэц пр0р0к=санб0й?==пр0ст0==напиши мнэ=тэкст===и я=прэ0ьразую эг0 для--тэбя")
  end

  def help_command(ctx)
    start_command(ctx)
  end

  @[On(:message)]
  def on_message(update)
    if message = update.message
      message.reply(Sunbonizer.sunbonize(message.text.to_s))
    end
  end

end


bot = SunbonizerBot.new(bot_token: ENV["API_KEY"])

bot.poll
