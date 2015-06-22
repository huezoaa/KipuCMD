# This file should contain all the record creation needed to seed the database with its
# default values.
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

patient02 = Patient.create(kipu_account_number: "100011002",
                           admission_date: "20150617071514",
                           first_name: "Teddy",
                           last_name: "Roosevelt",
                           middle_initial: "H",
                           gender: "M",
                           marital_status: "M",
                           diagnosis_codes: "302.85",
                           race: "W",
                           ethnicity: "N",
                           ssn: "111113333",
                           dob: "18880425",
                           phone: "3055558888",
                           alt_phone: "9543337778",
                           email: "ted@roosevelt.gov")

patient03 = Patient.create(kipu_account_number: "100011003",
                           admission_date: "20150617073014",
                           first_name: "Ghengis",
                           last_name: "Khan",
                           middle_initial: "H",
                           gender: "M",
                           marital_status: "M",
                           diagnosis_codes: "309.95",
                           race: "O",
                           ethnicity: "N",
                           ssn: "222336666",
                           dob: "11110415",
                           phone: "3056667766",
                           alt_phone: "9546667778",
                           email: "ghengis@khan.mon")

address01 = Address.create(street_1: "111 Main Street",
                           street_2: "Apt 101",
                           city: "Anytown",
                           state: "FL",
                           zipcode: "33999",
                           patient_id: "1")

address02 = Address.create(street_1: "234 Oak Ave",
                           street_2: "Apt 202",
                           city: "Smalltown",
                           state: "FL",
                           zipcode: "44775",
                           patient_id: "2")

address03 = Address.create(street_1: "567 Poplar Street",
                           street_2: "Apt 201",
                           city: "LargeTown",
                           state: "FL",
                           zipcode: "33999",
                           patient_id: "3")

insurance01 = Insurance.create(payment_method: "Insurance",
                               company: "Blue Cross Blue Shield",
                               policy_no: "112233-7766",
                               group_id: "401",
                               patient_id: "1",
                               address_1: "202 Valley Dr.",
                               address_2: "Suites 100-1000",
                               city: "Milledgeville",
                               state: "GA",
                               zipcode: "77689",
                               phone: "9093523321")

insurance02 = Insurance.create(payment_method: "Insurance",
                               company: "Blue Cross Blue Shield",
                               policy_no: "44556-8899",
                               group_id: "301",
                               patient_id: "2",
                               address_1: "5009 Riverdrive Ave.",
                               address_2: "Suites 200-1500",
                               city: "Lawrenceville",
                               state: "AK",
                               zipcode: "55774",
                               phone: "8083964774")

insurance03 = Insurance.create(payment_method: "Insurance",
                               company: "GEICO",
                               policy_no: "44556-2233",
                               group_id: "201",
                               patient_id: "3",
                               address_1: "8008 DelMonte Parkway.",
                               address_2: "Suites 808-8008",
                               city: "Tomate",
                               state: "CA",
                               zipcode: "99978",
                               phone: "9021090210")

subscriber01 = Subscriber.create(insurance_id: "1",
                                 relationship: "self",
                                 first_name: "Abraham",
                                 last_name: "Lincoln",
                                 middle_initial: "H",
                                 dob: "19000424",
                                 address_1: "111 Main Street",
                                 address_2: "Apt 101",
                                 city: "Anytown",
                                 state: "FL",
                                 zipcode: "33999",
                                 gender: "M",
                                 ssn: "111113333",
                                 home_phone: "3055559999")

subscriber02 = Subscriber.create(insurance_id: "2",
                                 relationship: "self",
                                 first_name: "Teddy",
                                 last_name: "Roosevelt",
                                 middle_initial: "H",
                                 dob: "18880425",
                                 address_1: "1234 Oak Ave",
                                 address_2: "Apt 202",
                                 city: "Smalltown",
                                 state: "FL",
                                 zipcode: "44775",
                                 gender: "M",
                                 ssn: "111113333",
                                 home_phone: "3055558888")


subscriber03 = Subscriber.create(insurance_id: "3",
                                 relationship: "self",
                                 first_name: "Ghengis",
                                 last_name: "Khan",
                                 middle_initial: "H",
                                 dob: "11110415",
                                 address_1: "567 Poplar Street",
                                 address_2: "Apt 201",
                                 city: "LargeTown",
                                 state: "FL",
                                 zipcode: "33999",
                                 gender: "M",
                                 ssn: "222336666",
                                 home_phone: "3056667766")

