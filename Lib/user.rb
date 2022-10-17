require "pry"

class User
    attr_accessor :email, :age
    @@alluser = []

    def initialize(mail, age)
        @email = mail
        @age = age
        @@alluser << self
    end

    def self.all
        @@alluser
    end

    def self.find_by_email(email)
        @@allusers.each do |user|
          if user.email == email
            return user
          end
        end
        puts "aucun utilisateur n'a cet email"
        return false
      end

    def monage
        return "Voici l'age du User trouvé : #{@age}"
    end
end
binding.pry