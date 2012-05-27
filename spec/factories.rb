FactoryGirl.define do
	factory :user do
		name 					"Emile Swarts"
		email 					"test@test.com"
		password 				"foobar"
		password_confirmation 	"foobar"
	end
end
