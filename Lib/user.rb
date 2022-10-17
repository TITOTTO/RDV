require "pry"

class User
    attr_accessor :email, :age
    @@alluser = Hash.new

    def initialize(mail, age)
        @email = mail
        @age = age
        @@alluser[mail] = age
    end

    def self.all
        return @@alluser
    end

    # def self.find_by_email(mail)
    #     return true if @@alluser.include?(mail)
    #     return "ta mere"
    # end

    def self.find_by_email(mail)
        @@alluser.each do |x, y|
            if x == mail
                return User.new(x, y)     
            end
            return "Cette utilisateur n'existe pas"
        end
    end

    def monage
        return "Voici l'age du User trouvé : #{@age}"
    end
end