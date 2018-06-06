class UserDataInit < ActiveRecord::Migration[5.1]
  def change
    puts "Enter--->01"
    addField
    puts "Enter--->02"
    initData
  end

  def addField
    add_column(:users, :gender, :string)
    add_column(:users, :avatar, :string)
  end

  def initData
    for i in 1..100
      user = User.new
      user.name = Faker::Name.name
      user.password = "123456"
      user.email = Faker::Internet.email
      user.city = Faker::Address.city
      user.programLanguage = Faker::ProgrammingLanguage.name
      user.team = Faker::Team.name
      user.phone = Faker::PhoneNumber.phone_number
      # user.avatar = Faker::Avatar.image
      user.gender = Faker::Boolean.boolean ? "Male" : "Female"
      user.save
    end
  end
end
