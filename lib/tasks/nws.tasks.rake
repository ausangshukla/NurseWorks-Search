namespace :nws do
    desc "Create fake users"
    task :create_users => :environment do
        (1..10).each do 
            u = FactoryBot.create(:user)
            u.profile = FactoryBot.create(:profile, user_id: u.id)
            (0..2).each do
                q = FactoryBot.create(:qualification, user_id: u.id) 
                d = FactoryBot.create(:user_doc, user_id: u.id) 
            end
            (0..5).each do 
                w = FactoryBot.create(:work_experience, user_id: u.id)
            end
        end
    end
end