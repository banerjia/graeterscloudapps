namespace :branch_change do

    desc 'Setup DB for the current branch'
    task :db_setup => :environment do
        Rake::Task['db:drop'].invoke
        Rake::Task['db:create'].invoke
        Rake::Task['db:schema:load'].invoke
        Rake::Task['db:seed'].invoke
    end

end
