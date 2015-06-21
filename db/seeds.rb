# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

patient01 = Patient.create(kipu_account_number: "100011001",
                           admission_date: "20150615071514",
                           first_name: "Abraham",
                           last_name: "Lincoln",
                           middle_initial: "H",
                           gender: "M",
                           marital_status: "M",
                           diagnosis_codes: "301.75",
                           race: "W",
                           ethnicity: "N",
                           ssn: "111112222",
                           dob: "19000424",
                           phone: "3055559999",
                           alt_phone: "9543338888",
                           email: "abe@lincoln.gov")