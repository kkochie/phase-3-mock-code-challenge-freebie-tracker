#clear out existing data
Freebie.destroy_all
Dev.destroy_all
Company.destroy_all

puts "Creating companies..."
co1 = Company.create(name: "Google", founding_year: 1998)
co2 = Company.create(name: "Facebook", founding_year: 2004)
co3 = Company.create(name: "Dunder Mifflin", founding_year: 2002)
co4 = Company.create(name: "Enron", founding_year: 1995)

puts "Creating devs..."
dev1 = Dev.create(name: "Rick")
dev2 = Dev.create(name: "Morty")
dev3 = Dev.create(name: "Mr. Meseeks")
dev4 = Dev.create(name: "Gazorpazop")

puts "Creating freebies..."

# ***************************************************************
# * TODO: create freebies! Remember, a freebie belongs to a dev *
# * and a freebie belongs to a company.                         *
# ***************************************************************
# Create freebies Here

Freebie.create(item_name: "blerg", value: "8", company_id: co1.id, dev_id: dev4.id)
Freebie.create(item_name: "watch", value: "12", company_id: co1.id, dev_id: dev1.id)
Freebie.create(item_name: "tumbler", value: "24", company_id: co3.id, dev_id: dev2.id)
Freebie.create(item_name: "socks", value: "3", company_id: co2.id, dev_id: dev2.id)


puts "Seeding done!"
