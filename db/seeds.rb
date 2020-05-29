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
    {title: "WORK"}, 
    {company: "FACEBOOK", job: "RAN MARKETING CAMPAGIN FOR MESSANGER PRODUCT."},
    {company: "TWITTER", job: "COLLABORATED IN DESIGN OF MOBILE APP."},
    {company: "LINKEDIN", job: "DESIGNED ALL GRAPHICS FOR MARKETING MATERIALS."},
    {company: "IBM", job: "DESIGNED UI FOR INTERNAL TOOLING."},
    {company: "AMAZON AWS", job: "COLLABORATED IN THE CREATION OF THEIR S3 OFFERING."}
])
workflow = Workflow.create({title: "WORKFLOW", content: "THESE ARE OUR STEPS TO MAKE SURE WE DELIVER RESULTS"})
contact = Contact.create({title: "CONTACT", content: "VINCENT@VLASS.CO"})