class User
  attr_accessor :first_name, :last_name, :email
  
  def initialize(first_name:, last_name:, email:)
  	@first_name = first_name
  	@last_name = last_name
  	@email = email
  end
  
  def full_name
    p first_name + ' ' + last_name
  end
  
  def is_valid_email?
    !!/\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
  end

  def errors
    error = []
    error << 'First name cannot be blank.'                   if first_name.empty?
    error << 'First name must be at least three characters.' if first_name.length < 3
    error << 'Last name cannot be blank.'                    if last_name.empty?
    error << 'Last name must be at least three characters.'  if last_name.length < 3
    error << 'Email cannot be blank.'                        if email.empty?
    error << 'Please enter a correct email.'                 if is_valid_email? == false
    error << 'First name must be a string.'                  if first_name != String
    error << 'Last name must be a string.'                   if last_name != String
    error << 'Email must be a string.'                       if email != String
    error    
  end
end

u1 = User.new(first_name: 'John', last_name: 'Snow', email: 'info@johnsnow.com')
puts "First name: #{u1.first_name}"
puts "Last name: #{u1.last_name}"
puts "Email: #{u1.email}"
puts "Full name: #{u1.full_name}"
puts "Valid_email: #{u1.is_valid_email?}" 
puts "errors: #{u1.errors}"
puts ''\
