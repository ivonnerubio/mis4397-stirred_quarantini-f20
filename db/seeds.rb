# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

print "running"
category_types = ["Cardiology", "Pediatrics", "Radiology", "Gynaecology", "Dermatology", "Oncology", "Neurology", "Psychiatry", "Anesthesiology", "Orthopaedics"]
description = ["Cardiology is a branch of medicine that deals with the disorders of the heart as well as some parts of the circulatory system. The field includes medical diagnosis and treatment of congenital heart defects, coronary artery disease, heart failure, valvular heart disease and electrophysiology.", "Pediatrics is the branch of medicine that involves the medical care of diseases. The American Academy of Pediatrics recommends people be under pediatric care through the age of 21.", "Radiology is the medical discipline that uses medical imaging to diagnose and treat diseases within the bodies of animals, including humans.", "Gynaecology or gynecology is the medical practice dealing with the health of the female reproductive system.", "Dermatology is the branch of medicine dealing with the skin. It is a speciality with both medical and surgical aspects.", "Oncology is a branch of medicine that deals with the prevention, diagnosis, and treatment of cancer.", "Neurology is a branch of medicine dealing with disorders of the nervous system. Neurology deals with the diagnosis and treatment of all categories of conditions and disease involving the central and peripheral nervous systems, including their coverings, blood vessels, and all effector tissue, such as muscle.", "Psychiatry is the medical specialty devoted to the diagnosis, prevention, and treatment of mental disorders. These include various maladaptations related to mood, behaviour, cognition, and perceptions. See glossary of psychiatry.", "Anesthesiology, anaesthesiology, anaesthesia or anaesthetics is the medical speciality concerned with the total perioperative care of patients before, during and after surgery. It encompasses anesthesia, intensive care medicine, critical emergency medicine, and pain medicine.", "Orthopedic surgery or orthopedics, also spelled orthopaedics, is the branch of surgery concerned with conditions involving the musculoskeletal system."]

# Need to figure out how to connect arrays in 1 loop
images = ["https://www.northcountryhospital.org/wp-content/uploads/2019/04/C-Cardiology-newport-vermont-e1554726152791.png","https://www.trinityhealth.org/wp-content/uploads/2018/05/PedsdServices.jpg","https://www.chestercountyhospital.org/-/media/images/chestercounty/major%20service%20line%20uploads/radiology/radiology%201%20main%20graphic%20720%20x%20324.ashx", "https://desunsiliguri.com/images/medical-departments/gynaecology.jpg", "https://kesseldermatology.com/wp-content/uploads/2016/02/banner-physical-1.jpg", "https://www.asco.org/sites/new-www.asco.org/files/styles/featured_tile/public/content-files/tiles_images/homepage-tile-coronavirus.png?itok=_4Un8eUo", "https://www.mcw.edu/departments/-/media/29B8655FD6E04E8496E5B660BDD7029A.ashx?anchor=middlecenter&scale=both&mode=crop", "https://www.nami.org/NAMI/media/NAMI-Media/BlogImageArchive/2019/psychiatrist-blog.jpeg", "https://thedo.osteopathic.org/wp-content/uploads/2017/10/anesthesiology-e1507232660560.jpg", "https://www.bouldermedicalcenter.com/wp-content/uploads/2014/12/Boulder-Medical-Center-Orthopedics.png"]

print "specialty"

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

print "blog"
# Blog Page
blog_titles = ["An Immersive Three Weeks", "Wear a Damn Mask, PLEASE!", "Should Halloween Be Canceled This Year?", "Does the Current Anti-science Crisis Emanate from our Imperious Scientific Journals?", "Medical Journals are Not Just for Docs in Ivory Towers", "A Handless Surgeon? It’s Not as Crazy as it Sounds.", "Hospital Rankings: Can Docs Make the Process Less Stupid?"]
blog_post_text = ["We recently finished our first full block of medical school! Arriving on the first day was nerve-wracking. Pushing open the door to the Siebens building and hoping I was in the right place, both literally and figuratively, the “what if’s” swirled in my mind: What if I fail? What if I’ve forgotten everything from my prerequisites? What if my classmates don’t like me? What if I don’t like them?  What if I decide medical school isn’t for me?
The first three weeks have proven much less worrisome than that. The student support services at Mayo are robust, and the opportunities to find my niche in medicine are enormous. I haven’t forgotten everything and my classmates (and classmates in other years) are interesting, kind, and fun people!", "When Covid first appeared in the US, several Asian physician friends had simple advice for me, “Wear a mask.” Having dealt with various coronaviruses for over a decade, this was the fundamental lesson taken from dealing with and controlling these respiratory viruses. Now, I may only be a dumb neurosurgeon, (said with humility, irony and in jest), but I know a thing or two about masks, having spent 30 years of life wearing them, sometimes for 12 or more hours at a time. There is nothing pleasurable about wearing a mask, but I have experienced first-hand how masks can protect patients and physicians from illness. More broadly I have seen how masks can protect healthcare workers from the worst of infectious diseases, even giving them supernatural-like protection when they must enter the belly of the beast while caring for highly contagious and fatal illnesses like Ebola. Meanwhile, each and every day, healthcare workers all over the world, including my own family members are able to avoid infection while caring for hospitalized Covid patients who are often spewing the virus everywhere. It’s incontrovertible – masks truly work!; they prevent Covid infections.", "With COVID-19 still being a very real danger, many parents have been asking me what we should do about trick-or-treating this year? Do we have to cancel Halloween?", "In many domains of modern public discourse and opinion, there appears to have arisen willful ignorance of science, and perhaps even worse in many situations, outright hostility to scientific knowledge. This is most visible in government inaction towards a number of looming crises, most notably manmade global warming, but it’s also widely felt in the public health arena with vaccinations, drug addiction and over-utilization of antibiotics. Scientists and physicians remain frustrated and puzzled that obvious scientific arguments can be so baldly dismissed in the public arena, and in the face of such great collective peril. At the core of this modern tragic dilemma seems to lie a fundamental mistrust of science.", "Why do we publish? As the editor-in-chief of a medical journal, I struggle a lot with this question. After more than 200 years, peer-reviewed journals have clearly established themselves as medicine’s best arbitrator of truth. They are, or at least ideally should be, at the center of everything we practice in our clinics. Yet somehow we physicians, even those of us in academia, are blind to many of the important roles that journals serve in medicine today.", "During my halcyon college days, long before I knew I would “grow up” to be a surgeon, I was a huge fan of Star Trek. Although the ideas behind warp speed travel and teleportation were mind blowing, I was even more captivated by “Bones” McCoy’s Tricorder. This and other similarly nifty little medical devices could in the hands of the right doctor affect surgical-like cures for most any disease non-invasively and without pain.", "It’s that time of the year. As Halloween decorations give way to Thanksgiving and now Christmas ornamentation, I, like many other American academic physicians, am sent an array of end-of-the-year email reminders from hospital and medical school leadership about sundry matters ranging from holiday parties to Press Ganey Scores. However none of these notifications stands out quite like being urged to update my membership with Doximity and thereby ensure my good standing with the social media network.
    And what lofty academic or clinical function is being served? None other than the academic medical community’s best effort to get out the faculty vote for Doximity’s upcoming and all-important hospital and departmental yearly reputation scoring – a number which ultimately feeds into the even more important, annual hospital rankings among the US News and World Report."]
blog_author_name = ["Jennifer Dens Higano", "John R. Adler, Jr., M.D.", "John R. Adler, Jr., M.D.", "Mikael Dillon", "Owais Cline", "Maraiah Carrey", "Misha Khan"]
blog_images = ["https://media.istockphoto.com/photos/healthcare-professionals-during-a-meeting-at-the-hospital-picture-id1141333760?k=6&m=1141333760&s=612x612&w=0&h=PTTQKSFZxMuBJspsCJY0Q53I-_AJ7Hmt32RKnjT031w=", "https://cureusinc.files.wordpress.com/2020/07/wear-a-damn-mask.png?w=768&h=471&crop=1", "https://images.unsplash.com/photo-1588863746368-508ae44a7917?ixlib=rb-1.2.1&auto=format&fit=crop&w=1932&q=80", "https://cdn.pixabay.com/photo/2020/03/05/19/18/technology-4905258_1280.jpg", "https://media.istockphoto.com/photos/hand-arranging-wood-block-stacking-with-icon-healthcare-medical-for-picture-id917079152?k=6&m=917079152&s=612x612&w=0&h=msjL7EFn84rfAWM0bJWXkd1hNuy5rMVbCHPxbd3wAs0=", "https://media.istockphoto.com/photos/doctor-surgeon-analyzing-patient-brain-testing-result-and-human-on-picture-id962094932?k=6&m=962094932&s=612x612&w=0&h=Yv-BYVsg7FhWEr_Ru72tlQOS-SANyhWN6_-KOLfAK6E=", "https://media.istockphoto.com/photos/nurse-working-with-technology-in-operating-room-picture-id1139849841?k=6&m=1139849841&s=612x612&w=0&h=1r3pE99qhIVB8yCwrF034kSE1EAXTVnB82u65Jkpcr4="]

print "creation"
5.times do |i|
    print "created blog \n"
    Blog.create( title: blog_titles[i], body: blog_post_text[i], author_name: blog_author_name[i], post_type: ["Opinion", "News", "Editorial", "Opinion", "Art"].sample, image_url: blog_images[i])
end
