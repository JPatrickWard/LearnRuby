# Program that calculates time and age of user in seconds
# Author: Patrick Ward
# Date: 11/28/2013
# test


puts 'This program displays the hours in a year, minutes in a decade and your age in seconds'

hour_day = 24
yrs_decade = 10
days_year = 365
days_month = 30
hours_year = hour_day * days_year
min_hour = 60
sec_hour = 60
min_day = hour_day * min_hour
seconds_year = min_day * days_year * sec_hour

#minutes_decade = min_day * days_year * yrs_decade
#puts
#puts 'There are ' + hours_year.to_s + ' hours in a year!'
#puts                       '
#puts 'There are ' + minutes_decade.to_s + ' minutes in a decade!'
#puts
#puts "Enter your age, Years:"
#years_old = gets.chomp.to_i
#puts 'Enter the months since your birthday:'
#months_old = gets.chomp.to_i
#puts 'Looking at the current month, how many full weeks have passed:?'
#weeks_month = gets.chomp.to_i
#puts 'Looking at the current week, how many days have passed?'
#week_day = gets.chomp.to_i
#puts 'How many hours have passed since the full day of your birth?'
#hours_since_day = gets.chomp.to_i
#puts 'How many minutes have passed since the full hour of your birth?'
#minutes_since_hour = gets.chomp.to_i
#puts 'How many seconds since the last minute?'
#seconds_since_minute = gets.chomp.to_i
#
#year_age_minutes =  (years_old * hours_year * min_hour * sec_hour)
#months_age_minutes = (months_old * days_month * min_day * sec_hour)
#weeks_age_minutes = (weeks_month * 7 * hour_day * min_hour * sec_hour)
#weeks_day_minutes = (week_day * hour_day * min_hour * sec_hour)
#hours_day_seconds = (hours_since_day * min_hour * sec_hour)
#minutes_into_seconds = (minutes_since_hour * sec_hour)
#
#
#age_seconds = (year_age_minutes + months_age_minutes + weeks_age_minutes + weeks_day_minutes + hours_day_seconds + minutes_into_seconds + seconds_since_minute)
#
#puts 'Calculating your age in seconds....'
#sleep(1.2)
#puts '....'
#sleep(0.5)
#puts '...'
#sleep (0.3)
#puts '..'
#sleep (0.1)
#puts '.'
#puts 'Your age in seconds is ' + age_seconds.to_s
#puts ''

puts 'Now to determine an age from seconds'
puts 'Enter an age in seconds'
# Logic to determine age in seconds
seconds_age = gets.chomp.to_i
a_years = seconds_age.to_i/seconds_year.to_i
age_years = a_years.ceil
age_months = seconds_age.to_f % seconds_year.to_f


# Calculate the months: use the modulus of year division to get remainderm =
puts 'You are ' + age_years.to_s + ' years, ' + age_months.to_s + ' months old.'












