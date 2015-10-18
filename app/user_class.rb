class User
	attr_accessor :name, :email, :status

	def initialize(attributes ={})
		@name = attributes[:name]
		@email = attributes[:email]
		#@id = attributes[:uId]
		@status = attributes[:status]
	end

	def