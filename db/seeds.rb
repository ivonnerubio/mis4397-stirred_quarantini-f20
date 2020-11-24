# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

category_types = ["Cardiology", "Pediatrics", "Radiology", "Gynaecology", "Dermatology", "Oncology", "Neurology", "Psychiatry", "Anesthesiology", "Orthopaedics"]
description = ["Cardiology is a branch of medicine that deals with the disorders of the heart as well as some parts of the circulatory system. The field includes medical diagnosis and treatment of congenital heart defects, coronary artery disease, heart failure, valvular heart disease and electrophysiology.", "Pediatrics is the branch of medicine that involves the medical care of diseases. The American Academy of Pediatrics recommends people be under pediatric care through the age of 21.", "Radiology is the medical discipline that uses medical imaging to diagnose and treat diseases within the bodies of animals, including humans.", "Gynaecology or gynecology is the medical practice dealing with the health of the female reproductive system.", "Dermatology is the branch of medicine dealing with the skin. It is a speciality with both medical and surgical aspects.", "Oncology is a branch of medicine that deals with the prevention, diagnosis, and treatment of cancer.", "Neurology is a branch of medicine dealing with disorders of the nervous system. Neurology deals with the diagnosis and treatment of all categories of conditions and disease involving the central and peripheral nervous systems, including their coverings, blood vessels, and all effector tissue, such as muscle.", "Psychiatry is the medical specialty devoted to the diagnosis, prevention, and treatment of mental disorders. These include various maladaptations related to mood, behaviour, cognition, and perceptions. See glossary of psychiatry.", "Anesthesiology, anaesthesiology, anaesthesia or anaesthetics is the medical speciality concerned with the total perioperative care of patients before, during and after surgery. It encompasses anesthesia, intensive care medicine, critical emergency medicine, and pain medicine.", "Orthopedic surgery or orthopedics, also spelled orthopaedics, is the branch of surgery concerned with conditions involving the musculoskeletal system."]

# Need to figure out how to connect arrays in 1 loop
images = ["https://www.northcountryhospital.org/wp-content/uploads/2019/04/C-Cardiology-newport-vermont-e1554726152791.png","https://www.trinityhealth.org/wp-content/uploads/2018/05/PedsdServices.jpg","https://www.chestercountyhospital.org/-/media/images/chestercounty/major%20service%20line%20uploads/radiology/radiology%201%20main%20graphic%20720%20x%20324.ashx", "https://desunsiliguri.com/images/medical-departments/gynaecology.jpg", "https://kesseldermatology.com/wp-content/uploads/2016/02/banner-physical-1.jpg", "https://www.asco.org/sites/new-www.asco.org/files/styles/featured_tile/public/content-files/tiles_images/homepage-tile-coronavirus.png?itok=_4Un8eUo", "https://www.mcw.edu/departments/-/media/29B8655FD6E04E8496E5B660BDD7029A.ashx?anchor=middlecenter&scale=both&mode=crop", "https://www.nami.org/NAMI/media/NAMI-Media/BlogImageArchive/2019/psychiatrist-blog.jpeg", "https://thedo.osteopathic.org/wp-content/uploads/2017/10/anesthesiology-e1507232660560.jpg", "https://www.bouldermedicalcenter.com/wp-content/uploads/2014/12/Boulder-Medical-Center-Orthopedics.png"]


Specialty.create(category_title: category_types[0], category_description: description[0], text: images[0])
Specialty.create(category_title: category_types[1], category_description: description[1], text: images[1])
Specialty.create(category_title: category_types[2], category_description: description[2], text: images[2])
Specialty.create(category_title: category_types[3], category_description: description[3], text: images[3])
Specialty.create(category_title: category_types[4], category_description: description[4], text: images[4])
Specialty.create(category_title: category_types[5], category_description: description[5], text: images[5])
Specialty.create(category_title: category_types[6], category_description: description[6], text: images[6])
Specialty.create(category_title: category_types[7], category_description: description[7], text: images[7])
Specialty.create(category_title: category_types[8], category_description: description[8], text: images[8])
Specialty.create(category_title: category_types[9], category_description: description[9], text: images[9])


# Blog Page
blog_post_title = ["Blog Post 1", "Blog Post 2", "Blog Post 3", "Blog Post 4", "Blog Post 5"]
blog_post_text = ["Placeholder text for blog post to come.", "Placeholder text for blog post to come.", "Placeholder text for blog post to come.", "Placeholder text for blog post to come.", "Placeholder text for blog post to come."]
blog_author_name = ["Maraiah Carrey", "Joe Smith", "Jane Doe", "Beyonce Knowles", "Selena Gomez"]
blog_post_type = ["Opinion", "News", "Editorial", "Opinion", "Art"]
blog_post_comments = ["Leave a comment", "Leave a comment", "Leave a comment", "Leave a comment", "Leave a comment"]
blog_year = ["October 17,2020", "August 24, 2020", "July 8, 2020", "June 1, 2020", "May 23, 2020"]

Blog.create(post_title: blog_post_title[0], text: blog_post_text[0], author_name: blog_author_name[0], year: blog_year[0], post_type: blog_post_type[0], comment_section: blog_post_comments[0])
Blog.create(post_title: blog_post_title[1], text: blog_post_text[1], author_name: blog_author_name[1], year: blog_year[1], post_type: blog_post_type[1], comment_section: blog_post_comments[1])
Blog.create(post_title: blog_post_title[2], text: blog_post_text[2], author_name: blog_author_name[2], year: blog_year[2], post_type: blog_post_type[2], comment_section: blog_post_comments[2])
Blog.create(post_title: blog_post_title[3], text: blog_post_text[3], author_name: blog_author_name[3], year: blog_year[3], post_type: blog_post_type[3], comment_section: blog_post_comments[3])
Blog.create(post_title: blog_post_title[4], text: blog_post_text[4], author_name: blog_author_name[4], year: blog_year[4], post_type: blog_post_type[4], comment_section: blog_post_comments[4])

Blog.all
5.times do |i|
    Blog.create(
        post_title: blog_post_title[0], 
        text: blog_post_text[0], 
        author_name: blog_author_name[0], 
        year: blog_year[0], 
        post_type: blog_post_type[0], 
        comment_section: blog_post_comments[0])
end

    
# 5.times do |i|
#     Blog.create(
#         post_title: Faker::Company.name, 
#         text: Faker::Company.bs, 
#         author_name: Faker::Name.name, 
#         year: ["October 17,2020", "August 24, 2020", "July 8, 2020", "June 1, 2020", "May 23, 2020"], 
#         post_type: ["Opinion", "News", "Editorial", "Opinion", "Art"].sample, 
#         comment_section: "Leave a comment")
#     end