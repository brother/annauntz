# coding: utf-8
class AnnaUntz < Plugin

   def privmsg(m)
     m.reply "e d fest?"
   end

   def help(plugin, topic="")
     m.reply "e d fest?"
   end

   def message(m)
     anna = m.message.downcase
     if anna == 'e d fest'
       if rand(2) == 0
         m.reply 'får man komma?'
       else
         m.reply 'ska vi hångla?'
       end
     elsif anna == 'får man komma'
       m.reply 'får man ta med sig nån'
     elsif anna == 'får man ta med sig nån'
       m.reply 'hur många?'
     elsif anna == 'ska vi hångla'
       m.reply 'släpp till nu då'
     elsif anna == 'släpp till nu då'
       m.reply 'sluta krångla!'
     elsif anna == 'middagsgull'
       m.reply 'eller partyrull'
     end
   end

end

fest = AnnaUntz.new
fest.register("untz")
