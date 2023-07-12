require 'uri'
require 'net/http'
require 'json'
 
class Todo < ApplicationRecord
    after_create_commit :send_to_discord

    def send_to_discord
        if !(ENV['DISCORD_WEBHOOK_URI'] || '').empty? then
            uri = URI(ENV['DISCORD_WEBHOOK_URI'])
            str = JSON.generate({ "content" => "予定が追加されました\n"+self.title+"\n"+self.decription+"\n期限は"+self.deadline.to_json+"です", "username" => "Todo"})
            res = Net::HTTP.post(uri, str, {"content-type"=>'application/json; charset=UTF-8'} )
        end
    end
end
