# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

home = Home.create({content: "BREAKING THE GLASS CEILING TO UNLOCK YOUR POTENTIAL"})
about = About.create({title: "HELLO, WE ARE VLASS.", content: "AT VLASS WE WORK ON TRANSFORMING YOUR BUSINESS THROUGH WEB DESIGN, CONTENT CREATION, GRAPHIC DESIGN, AND MARKETING TO PREPARE YOUR BUSINESS FOR THE FUTURE."})
work = Work.create([ 
    {companyname: "FACEBOOK", jobdescription: "RAN MARKETING CAMPAGIN FOR MESSENGER PRODUCT."},
    {companyname: "TWITTER", jobdescription: "COLLABORATED IN DESIGN OF MOBILE APP."},
    {companyname: "LINKEDIN", jobdescription: "DESIGNED ALL GRAPHICS FOR MARKETING MATERIALS."},
    {companyname: "IBM", jobdescription: "DESIGNED UI FOR INTERNAL TOOLING."},
    {companyname: "AMAZON AWS", jobdescription: "COLLABORATED IN THE CREATION OF THEIR S3 OFFERING."}
])
workflow = Workflow.create({title: "WORKFLOW", content: "THESE ARE OUR STEPS TO MAKE SURE WE DELIVER RESULTS"})
contact = Contact.create({title: "CONTACT", content: "VINCENT@VLASS.CO"})