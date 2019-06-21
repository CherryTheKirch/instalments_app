module DB_CLEANER
  def self.user_cleaner
    users =  User.all
    users.each { |user| user.destroy }
  end
end