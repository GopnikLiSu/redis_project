namespace :subscribe do
  desc "TODO"
  task :redis => :environment do
    $redis.subscribe("home") do |on|
      on.message do |channel, message|
        Rails.logger.info("Broadcast on channel #{channel}: #{message}")
      end
    end
  end
end
