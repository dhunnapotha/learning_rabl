namespace :populator do
  task :run => :environment do
    (1..5).to_a.each do |u|
      user = User.create name: "user_#{u}"
      (1..5).to_a.each do |a|
        user.articles.create! name: "#{u}.#{a}"
      end
    end
  end
end