# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :politician do
    first_name "Barack"
    last_name "Obama"
    birthdate "1961-08-04"
    education "Harvard Law School (1988-1991), Columbia University (1983), Occidental College (1979-1981), Punahou School (1979)"
    net_worth "11.8"
    current_position "President Of The United States Of America"
    previous_position "Senator for the State of Illinois"
        factory :romney do 
            first_name "Mitt"
            last_name "Romney"
        	birthdate "1947-03-12"
        	education "Harvard Business School (1975), Harvard Law School (1975), Brigham Young University (1971), Stanford University (1965-1966), Cranbrook Schools"
        	net_worth "200"
        	current_position "Governor of Massachusetts"
        	previous_position "CEO Bain and Company"
    end
  end
end
