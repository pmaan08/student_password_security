require_relative 'crud'

class Student
  include Crud 
  attr_accessor :first_name, :last_name, :email, :username, :password

  def initialize(firstname, lastname, email, username, password )
    @first_name = firstname
    @last_name = lastname
    @email = email
    @username = username
    @password = password
  end

  def to_s
    "First name: #{@first_name}\n, Last name: #{@last_name}\n Username: #{@username}\n Email: #{@email}\n"
  end

end

partul = Student.new("Partul","Maan","pm@gmail.com","pmaan", "p1")

hashed_password = partul.create_hash_digest(partul.password)

puts hashed_password
