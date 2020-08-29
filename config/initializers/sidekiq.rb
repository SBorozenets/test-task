# frozen_string_literal: true

schedule_file = 'config/schedule.yml'
schedule = {}

if File.exist?(schedule_file) && Sidekiq.server?
  schedule = ::YAML.load_file(schedule_file)
end
::Sidekiq::Cron::Job.load_from_hash(schedule)

# ref: https://github.com/ondrejbartas/sidekiq-cron#under-the-hood
# ref: https://github.com/ondrejbartas/sidekiq-cron/issues/26
::Sidekiq.options[:poll_interval] = 10
