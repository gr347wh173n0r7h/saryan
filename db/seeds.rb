# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
s = School.create(name:"SJSU", city:"San Jose", state:"CA")

department_list = [
    ["BUS","Business"],
    ["SE", "Software Engineering"],
    ["MATH", "Mathamatics"],
    ["CMPE", "Computer Engineering"],
    ["ENGL", "English"],
    ["PHYS", "Physics"],
    ["ISE", "Industrial Engineering"],
    ["PHYL", "Philosophy"],
    ["ECON", "Economics"],
    ["CS", "Computer Science"],
    ["ENGR", "Engineering"],
    ["COMM", "Communications"],
    ["SCI", "Science"],
    ["BIO", "Biology"],
    ["HIST", "History"],
    ["MUSC", "Music"]
]

department_list.each do |abbrev, name|
  Department.create(abbrev:abbrev, name:name,school_id:s.id)
end

major_list = [

    ["Management Information Systems","MIS", Department.find_by_abbrev("BUS").id],
    ["Software Engineering","BSSE", Department.find_by_abbrev("SE").id],
    ["Computer Engineering","BSCMPE",Department.find_by_abbrev("CMPE").id ],
    ["Mathamatics","MATH", Department.find_by_abbrev("MATH").id],

]

major_list.each do |name, maj_abbrev, department_id|
  Major.create(name:name, maj_abbrev:maj_abbrev, department_id:department_id)
end

c = Catalog.create(cat_yr:15, degree: "MIS" )

super_category_list = [
    ["General Education", 60],
    ["BA: MIS", 120]
]

super_category_list.each do |name, units|
  SuperCat.create(catalog_id:c.id, name:name, units:units)
end

category_list = [

    [SuperCat.find_by_name("BA: MIS").id, "Core Courses", 40],
    [SuperCat.find_by_name("BA: MIS").id, "Concentration Requirements",27],
    [SuperCat.find_by_name("General Education").id, "Lower Division GE", 35],
    [SuperCat.find_by_name("General Education").id, "Upper Division GE"]


]
category_list.each do |id, name, units|
  Category.create(super_cat_id:id, name:name, units:units)
end

sub_category_list = [

    [Category.find_by_name("Core Courses").id,"Lower Division Courses", 13],
    [Category.find_by_name("Core Courses").id,"Upper Division Fundamental Courses", 15],
    [Category.find_by_name("Core Courses").id,"Upper Division Business Integration and Perspectives Courses", 12],
    [Category.find_by_name("Concentration Requirements").id, "Required Courses", 21],
    [Category.find_by_name("Concentration Requirements").id, "Additional Courses", 6],
    [Category.find_by_name("Lower Division GE").id, "A1", 3],
    [Category.find_by_name("Lower Division GE").id, "A2", 3],
    [Category.find_by_name("Lower Division GE").id, "A3", 3],
    [Category.find_by_name("Lower Division GE").id, "B1", 3],
    [Category.find_by_name("Lower Division GE").id, "B2", 3],
    [Category.find_by_name("Lower Division GE").id, "B3", 3],
    [Category.find_by_name("Lower Division GE").id, "B4", 3],
    [Category.find_by_name("Lower Division GE").id, "C1", 3],
    [Category.find_by_name("Lower Division GE").id, "C2", 6],
    [Category.find_by_name("Lower Division GE").id, "D1", 3],
    [Category.find_by_name("Lower Division GE").id, "D2", 3],
    [Category.find_by_name("Lower Division GE").id, "D3", 3],
    [Category.find_by_name("Lower Division GE").id, "E", 3],
    [Category.find_by_name("Lower Division GE").id, "AS", 6],
    [Category.find_by_name("Lower Division GE").id, "PE", 2],
    [Category.find_by_name("Lower Division GE").id, "MP", 17],
    [Category.find_by_name("Upper Division GE").id, "R", 3],
    [Category.find_by_name("Upper Division GE").id, "S", 3],
    [Category.find_by_name("Upper Division GE").id, "V", 3],
    [Category.find_by_name("Upper Division GE").id, "Z", 3],


]

sub_category_list. each do |category_id, name, units|
  SubCategory.create(category_id:category_id, name:name, units:units)
end

mis_catalog = [

    [SubCategory.find_by_name("Lower Division Courses").id, "BUS","BUS3 10","Discovering Business ", 3, "Simulates setting up a small business to explore the many facets of an enterprise (marketing, accounting, finance, management, information systems, etc.). Through self-assessment and readings, directs students toward career paths that best reflect their personal aptitudes and interests. Prerequisite: Highly recommended for SJSU freshman business majors, optional for others."],
    [SubCategory.find_by_name("Lower Division Courses").id, "BUS","BUS1 20","Financial Accounting", 3, "Accounting postulates and principles; application of accounting theory to accumulate and summarize financial data; critical analysis and interpretation of financial statements. Prerequisite: MATH 071"],
    [SubCategory.find_by_name("Lower Division Courses").id, "BUS","BUS1 21","Managerial Accounting", 3, "Uses of accounting data for managerial decision-making. Topics include: cost accumulation for product costing; cost structure for control and motivation; cost-volume-profit relationships; profit planning; standard costing; flexible budgets; and relevant costs for non-routine decisions. Prerequisite: BUS 20 or BUS 20N."],
    [SubCategory.find_by_name("Lower Division Courses").id, "BUS","BUS3 80","Legal Environment of Business", 3, "Understand the judicial system and dispute resolution with emphasis on the role of law in purchasing, contracting and administering a business as it impacts the firm's constituencies and society as a whole. Prerequisite: Sophomore status"],
    [SubCategory.find_by_name("Lower Division Courses").id, "BUS","BUS2 90","Business Statistics", 3, "n terms of theory and application: collection and presentation of data; measures of central values and spread; probability as a measure of uncertainty; sampling and sampling distribution of the sample mean; confidence intervals; hypothesis testing; regression and correlation. Prerequisite: MATH 071. Math Remediation completed or a post baccalaureate."],
    [SubCategory.find_by_name("Lower Division Courses").id, "BUS","BUS4 91L","Business Computer Productivity Tools", 3, "An overview of computer hardware and software concepts and common operating system functions. Instruction in the use of microcomputer-based word processing, presentation graphics and spreadsheet productivity tools. Lab meets for 5 weeks."],

    [SubCategory.find_by_name("Upper Division Fundamental Courses").id, "BUS","BUS2 130","Fundamentals of Marketing", 3, "Analysis of marketing opportunities; planning of marketing programs with emphasis on product, price, promotion and distribution; control of the marketing effort; social and ethical responsibilities of marketing. Prerequisite: Upper division standing. Lower Division Business Pool or Business Minor. Recommended: COMM 100W or ENGL 100WB or LLD 100WB"],
    [SubCategory.find_by_name("Upper Division Fundamental Courses").id, " BUS","BUS5 140","Fundamentals of Operations Management", 3, "Familiarizes students with processes that transform inputs into finished goods and services; helps students understand the importance of operations management and how it interacts with other parts of the organization; develops skills in applying appropriate analytical tools to business operations challenges. Prerequisites: Upper division standing. Lower Division Business Pool or Business Minor."],
    [SubCategory.find_by_name("Upper Division Fundamental Courses").id, "BUS","BUS3 160","Fundamentals of Management and Organization Behavior", 3, "Provides a foundation for major topics in management and organizational behavior by surveying theories and practices relating to managerial roles, organizational cultures, fundamental strategic issues, planning, team building, communication, motivation, leadership, decision-making, control, structure and change. Prerequisites: Upper division standing. Lower Division Business Pool or Business Minor."],
    [SubCategory.find_by_name("Upper Division Fundamental Courses").id, "BUS","BUS1 170","Fundamentals of Finance", 3, "The finance function and its relationship to other decision-making areas in the firm; the study of theory and techniques in acquisition and allocation of financial resources from an internal management perspective. Prerequisite: BUS 21 or BUS 122A, ECON 1A, ECON 1B and BUS 90. Upper division standing. Lower Division Business Pool or Business Minor."],
    [SubCategory.find_by_name("Upper Division Fundamental Courses").id, "BUS","BUS2 190","Quantitative Business Analysis", 3, "Quantitative models and computer software used in business decision-making. Studies of network and transportation models, linear programming, CPM/PERT project analysis, decision analysis, simulation and other techniques used in management science applications. Prerequisite: BUS2 090 and MATH 071. Lower Division Business Pool or Business Minor. Not available to Open University Students."],

    [SubCategory.find_by_name("Upper Division Business Integration and Perspectives Courses").id, "BUS","BUS5 187","Global Dimensions of Business", 3, "An integrative interdisciplinary foundation for more specialized courses and self-directed learning. Provides an overview of economic, social, cultural and political/legal forces and factors influencing crossborder business and an introduction to international dimensions of business functions and operations. Prerequisites: Upper division standing. Lower Division Business Pool or Business Minor."],
    [SubCategory.find_by_name("Upper Division Business Integration and Perspectives Courses").id, "BUS","BUS4 188", "Business Systems and Policy", 3, "Provides system perspective on organizations, using information as an integrating vehicle. Examines how information systems can serve business functions and integrate value chain activities. Prerequisite: COMM 100W or ENGL 100WB or LLD 100WB. Upper division standing. Lower Division Business Pool. Pre/Corequisite: Fundamental courses." ],
    [SubCategory.find_by_name("Upper Division Business Integration and Perspectives Courses").id, "BUS","BUS3 189","Strategic Management", 3, "Integrative capstone seminar analyzing interrelationships of managerial decisions/actions within and between the firm and its environment. Applies multi-disciplinary techniques to diagnose and recommend actions appropriate to specific company situations, using case method. Prerequisite: Any 100W. Restricted to graduating seniors only. Allowed Declared Majors: All Business Majors. Lower Division Business Pool. Graduating Senior Status."],
    [SubCategory.find_by_name("Upper Division Business Integration and Perspectives Courses").id, "PHIL","PHIL 186","Prof. Business Ethics", 3, "Interdisciplinary study of types of ethical problems which arise within the contexts of business occupations and professions. Major ethical theories, critique of economic and criminal justice. Focus is on issues of justice and equality in the U.S. Case studies. GE Area: S Prerequisite: Passage of the Writing Skills Test (WST) or ENGL/LLD 100A with a C or better (C- not accepted), completion of Core General Education and upper division standing are prerequisites to all SJSU studies courses. Completion of, or co-registration in, 100W is strongly recommended."],

    [SubCategory.find_by_name("Required Courses").id, "BUS","BUS4 092","Introduction to Business Programming",3,"Analysis of business problems to design and implement the software component of an information system. Emphasis on structured design and programming. Introduction to visual programming languages. Prerequisite: BUS 91L."],
    [SubCategory.find_by_name("Required Courses").id, "BUS","BUS4 110A","Fundamentals of Management Information Systems", 3, "Prepares students for upper division MIS courses by providing an overview of the strategic and managerial issues involved in the design, implementation, and maintenance of information systems. Includes an introduction to business application programming. Prerequisite: BUS 92, upper division standing."],
    [SubCategory.find_by_name("Required Courses").id, "BUS","BUS4 110B","Introduction to Systems Analysis and Design", 3, "Introduction to systems development methodologies, techniques and tools. Emphasis on enterprise, process, data and object modeling techniques. Students use UML and prototyping tools to analyze and design an information system. Corequisite: BUS4 092."],
    [SubCategory.find_by_name("Required Courses").id, "BUS","BUS4 111","Introduction to Telecommunications", 3, "Emphasis on the concepts, architectures, components, protocols and standards for message movement within information networks. Uses the network design process to develop understanding of business and information technology perspectives. Prerequisite: Upper Division Standing, Lower Division Business Pool"],
    [SubCategory.find_by_name("Required Courses").id, "BUS","BUS4 112","Introduction to Database Management Systems", 3, "Intermediate database management systems and procedures, stressing the design and development of efficient business information systems. Emphasis on data modeling, data integrity, SQL and implementation of a database application. Prerequisite: A grade of C or better in BUS4 092 . Lower Division Business Pool."],
    [SubCategory.find_by_name("Required Courses").id, "BUS","BUS4 119B","Business Systems & Information Systems", 3, "Analysis of effective use of information systems and technology for competitive advantage by a business organization for enterprise, business-to-business, and E-Commerce computing. Emphasis on integration of information systems and technology with business strategy, financial justification, personnel and organizational considerations. Prerequisite: COMM 100W or ENGL 100WB or LLD 100WB, a grade of C or better in BUS 111 and BUS 112, senior status, taken in last semester before graduation. Lower Division Business Pool."],
    [SubCategory.find_by_name("Required Courses").id, "BUS","BUS4 119A","Practicum in Management Information Systems", 3, "Intermediate database management systems and procedures, stressing the design and development of efficient business information systems. Emphasis on data modeling, data integrity, SQL and implementation of a database application. Prerequisite: A grade of C or better in BUS4 092 . Lower Division Business Pool."],
    [SubCategory.find_by_name("Required Courses").id, "BUS","BUS4 119H","Honors Practicum in Management Information Systems", 3, "Intermediate database management systems and procedures, stressing the design and development of efficient business information systems. Emphasis on data modeling, data integrity, SQL and implementation of a database application. Prerequisite: A grade of C or better in BUS4 092 . Lower Division Business Pool."],

    [SubCategory.find_by_name("Additional Courses").id, "BUS","BUS4 113J","Advanced Business Programming in Java", 3,"Students gain experience with developing complex business application programs in the electronic commerce environment with an emphasis on the integration between structured and object oriented programming. Applications will be built for Unix and Windows platforms using the Java programming language. Prerequisite: COMM 100W or ENGL 100WB or LLD 100WB, a grade of C or better in BUS 111 and BUS 112, senior status. Lower division business pool."],
    [SubCategory.find_by_name("Additional Courses").id, "BUS","BUS4 114","Advanced Systems Analysis and Design", 3, "Advanced topics in systems development, including CASE tools, object technologies, enterprise analysis and project management. Prerequisite: COMM 100W or ENGL 100WB or LLD 100WB, a grade of C or better in BUS 111 and BUS 112, senior status. Lower division business pool."],
    [SubCategory.find_by_name("Additional Courses").id, "BUS","BUS4 115","Business Strategy and Telecommunications", 3, "Integration of telecommunications and database management systems concepts in a distributed information systems environment. Emphasis on information systems architectures, systems integration, open systems and other advanced topics. Prerequisite: BUS4 111. Lower division business pool."],
    [SubCategory.find_by_name("Additional Courses").id, "BUS","BUS4 116","Advanced Database Management Systems", 3, "Advanced topics in database management, including data analysis and design, SQL and client/server database development tools and applications. Prerequisite: BUS4 112. Lower division business pool."],
    [SubCategory.find_by_name("Additional Courses").id, "BUS","BUS4 118B","Topics in MIS: Business Expert Systems", 3, "Investigation of ESS/ES theory and application. Design, development and evaluation of real-world ESS/ES prototype systems in Excel/Visual Basic/etc. Prerequisite: COMM 100W or ENGL 100W or LLD 100W, a grade of C or better in BUS 111 and BUS 112, BUS4 110A and BUS4 110B, Lower Division Business Pool., senior status."],
    [SubCategory.find_by_name("Additional Courses").id, "BUS","BUS4 118C","Topics in MIS: Security Systems & Operating Systems", 3, "Introduces the spectrum of threats and associated best practices for managing information security and assurance in organizations. Covers use of education/training, policy/procedure and technology to balance information confidentiality, integrity and accessibility requirements against associated costs to support organizations' strategic goals. Prerequisite: Lower Division Business Pool. Corequisite: BUS4 111. Note: Offered only occasionally."],
    [SubCategory.find_by_name("Additional Courses").id, "BUS","BUS4 118W","Topics in MIS: Web Based Computing", 3, "Explores Web applications for personal, E-Commerce and corporate computing. Covers essentials of WWW protocols. Students will learn to design and program both client and server-side applications using HTML and extensions, JavaScript, Perl, VBScript, Active Server Pages, database connections, XML, Java. Prerequisite: Grade of C or better in BUS4 110A and BUS4 112. Lower division business pool."],

    [SubCategory.find_by_name("A1").id, "COMM", "COMM 020", "Public Speaking", 3, "Principles of rhetoric applied to oral communication; selecting, analyzing, adapting, organizing and delivering ideas effectively. GE Area: A1"],
    [SubCategory.find_by_name("A1").id, "COMM", "COMM 020N", "Public Speaking for Nonnvative Speakers", 3, "Public speaking for the nonnative speaker. Course content identical to COMM 20 with intercultural emphasis. GE Area: A1"],
    [SubCategory.find_by_name("A1").id, "COMM", "COMM 040", "Argumentation and Advocacy", 3, "Principles of inquiry and advocacy in public discussion and necessary basic skills for intelligent participation in discussion and debate. GE Area: A1"],
    [SubCategory.find_by_name("A1").id, "COMM", "COMM 096PS", "Public Speaking", 3, "Principles of rhetoric applied to oral communication; selecting, analyzing, adapting, organizing and delivering ideas effectively. GE Area: A1"],
    [SubCategory.find_by_name("A1").id, "MAS", "MAS 074", "Public Address", 3, "Techniques of effective oral communication. Principles of rhetoric through analysis and critique of contemporary issues concerning Mexican Americans. GE Area: A1"],

    [SubCategory.find_by_name("A2").id, "ENGL", "ENGL 001A", "First Year Writing", 3, "English 1A is an introductory course that prepares students to join scholarly conversations across the university. Students develop reading skills, rhetorical sophistication, and writing styles that give form and coherence to complex ideas for various audiences, using a variety of genres. GE Area: A2 Prerequisite: English Placement Test."],
    [SubCategory.find_by_name("A2").id, "HA", "HA 096S", "First Year Composition, Stretch II", 3, ""],

    [SubCategory.find_by_name("A3").id, "COMM", "COMM 041", "Critical Decision Making",3, "Critical reasoning and problem solving in group discussion. Examination of the relationship between critical decision-making and group communication. Practice in group problem solving as a means for developing critical thinking skills. GE Area: A3 Prerequisite: English Remediation completed or a post baccalaureate." ],
    [SubCategory.find_by_name("A3").id, "COMM", "COMM 045", "Media and Culture", 3, "Application of critical thinking, writing, and oral communication skills in the analysis of media representations of culture. Practice in reasoning, advocating ideas, researching and evaluating arguments, developing well supported factual conclusions, and engaging in meaningful dialogue on diverse issues. GE Area: A3 Prerequisite: GE Areas A1 (Oral Communication) and A2 (Written Communication I, English 1A) with grades of C or better (C�not accepted)." ],
    [SubCategory.find_by_name("A3").id, "ENGL", "ENGL 002", "Critical Thinking and Writing", 3, "English 2 is a course that focuses on the relationship between language and logic in composing arguments. Students learn various methods of effective reasoning and appropriate rhetorical strategies to help them invent, demonstrate, and express arguments clearly, logically, and persuasively. GE Area: A3 Prerequisite: Completion of GE Areas A1 and A2 with a C or better"],
    [SubCategory.find_by_name("A3").id, "ENGL", "ENGL 007", "Nature and meaning of critical thought, Western and non-Western",3,"Relationship between logic and language. Examination of contrasting arguments on related subjects as a means for developing skill in analysis of prose. GE Area: A3 Prerequisite: ENGL 1A."],
    [SubCategory.find_by_name("A3").id, "HIST", "HIST 050", "Historical Process: Understanding Historic Reasoning", 3, "Modes and skills of practical logic and reasoning through study of historical method. Historical problems examined to that end. GE Area: A3"],
    [SubCategory.find_by_name("A3").id, "LING", "LING 021", "Language and Thinking", 3, "Exploring systems of language and logic in oral and written discourse, with a focus on the role of shared cultural assumptions, language style and the media of presentation in shaping the form and content of argumentation. GE Area: A3"],
    [SubCategory.find_by_name("A3").id, "LING", "LING 024", "Language Variation in Space, Time, & Culture", 3, "Exploring the diverse structural patterns and social functions found in English; analyzing the social, cultural, political, historical, and technological factors underlying language change; developing critical thinking and effective argumentation in writing. GE Area: A3 Or D1"],
    [SubCategory.find_by_name("A3").id, "PHIL", "PHIL 057", "Logic and Critical Reasoning", 3, "Basic concepts of logic; goals and standards of both deductive and inductive reasoning; techniques of argument analysis and assessment; evaluation of evidence; language and definition; fallacies. GE Area: A3"],
    [SubCategory.find_by_name("A3").id, "POLS", "POLS 020", "Controversial Legal Issues", 3,"Basic concepts in critical thinking as demonstrated in legal reasoning and analysis of contemporary legal issues possibly including abortion, drug testing, offensive speech, affirmative action, gender and sexual preference discrimination, school prayer and pornography. GE Area: A3 Prerequisite: English Remediation completed or a post baccalaureate."],

    [SubCategory.find_by_name("B1").id, "ASTR", "ASTR 010", "Descriptive Astronomy", 3, "A generally non-mathematical examination of principles, facts and logic of astronomy, emphasizing arrangement, origin and evolution of the solar system. GE Area: B1"],
    [SubCategory.find_by_name("B1").id, "CHEM", "CHEM 001A", "General Chemistry", 5, "Topics including stoichiometry, reactions, atomic structure, periodicity, bonding, states of matter, energy changes, solutions using organic and inorganic examples. Lab program complements lecture. Prerequisite: Proficiency in high school chemistry or CHEM 010 (with a grade of C or better; C- not accepted) or instructor consent; proficiency in high school algebra and eligibility for MATH 019; eligibility for ENGL 001A. Misc/Lab: Lecture 3 hours/lecture 1 hour/lab 3 hours."],
    [SubCategory.find_by_name("B1").id, "CHEM", "CHEM 001B", "General Chemistry", 5, "Topics including stoichiometry, colligative properties, kinetics, equilibria, thermodynamics and electrochemistry. Lab program complements lecture. Prerequisite: CHEM 001A (with a grade of C or better; C- not accepted). Misc/Lab: Lecture 3 hours/lab"],
    [SubCategory.find_by_name("B1").id, "CHEM", "CHEM 030A", "Introductory Chemistry", 3, "The physical world as seen by a chemist; the ways this world affects humans, other animals and plants used as illustrations of fundamental general chemistry. GE Area: B1 and B3 Misc/Lab: Lecture 2 hours/lab 3 hours. Notes: No credit toward Chemistry major or minor."],
    [SubCategory.find_by_name("B1").id, "ENGR", "ENGR 005", "Science of High Technology", 3, "Scientific principles underlying commonly used high technology devices and systems such as the computer, cell phone, IPODS, cameras, and the Internet. Emphasizes practical applications of scientific principles to contemporary engineering products and services. GE Area: B1"],
    [SubCategory.find_by_name("B1").id, "GEOG", "GEOG 001", "Geography of Natural Enviroments", 3, "Atmospheric, biologic and geologic processes that create the natural environments of the world. Discovery of local, regional and global patterns in the location and distribution of environmental phenomena, and the human modifications of natural environments. GE Area: B1"],
    [SubCategory.find_by_name("B1").id, "GEOG", "GEOG 001L", "Geography of Natural Enviroments", 3, "Supplement to general lecture courses in Earth science or geology. Pre/Corequisite: GEOL 2, GEOL 1, GEOL 6 or GEOL 111. Misc/Lab: Lab 3 hours."],
    [SubCategory.find_by_name("B1").id, "GEOG", "GEOG 003", "Planet Earth", 3, "Origins and processes of Earth's interconnected physical and chemical systems, including aspects of astronomy, geology, meteorology, and oceanography. Impacts of these systems on humans, and of humans on the systems. GE Area: B1"],
    [SubCategory.find_by_name("B1").id, "GEOG", "GEOG 006", "Geology Of California", 3, "California's geology, illustrating physical processes, landscapes, geologic history and resources. California's seismic, volcanic, landslide and flooding hazards, and their impact on society. GE Area: B1 Misc/Lab: Lecture 3 hours/field trips."],
    [SubCategory.find_by_name("B1").id, "GEOG", "GEOG 007", "Earth's geosphere",3, "Processes that act on it and materials that comprise it; how rocks and fossils are used to interpret the history of Earth's geosphere, atmosphere, oceans, and life forms. Misc/Lab: Lecture 3 hours/lab 3 hours."],


]


mis_catalog.each do |sub_category_id, dep,abbrev, name, units, desc|
  co = Course.create(sub_category_id:sub_category_id, dep: dep, abbrev:abbrev, name: name, units: units, desc:desc)
  Plan.create(catalog_id:c.id, course_id:co.id)
end

