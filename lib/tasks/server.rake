namespace :server do
  desc 'Run Rails & Build Vue concurrently'
  task dev: :environment do
    system('foreman start -f Procfile.dev')
  end
end
