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

    ["Core Courses", 40],
    ["Concentration Requirements",27],

]

super_category_list.each do |super_category, units|
  Category.create(catalog_id:c.id, super_category:super_category, units:units)
end

sub_category_list = [

    [Category.find_by_category("Core Courses").id,"Lower Division Courses", 13],
    [Category.find_by_category("Core Courses").id,"Upper Division Fundamental Courses", 15],
    [Category.find_by_category("Core Courses").id,"Upper Division Business Integration and Perspectives Courses", 12],
    [Category.find_by_category("Concentration Requirements").id, "Required Courses", 9],
    [Category.find_by_category("Concentration Requirements").id, " Concentration Electives", 3]

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

    [SubCategory.find_by_name("Upper Division Fundamental").id, "BUS","BUS2 130","Fundamentals of Marketing", 3, "Analysis of marketing opportunities; planning of marketing programs with emphasis on product, price, promotion and distribution; control of the marketing effort; social and ethical responsibilities of marketing. Prerequisite: Upper division standing. Lower Division Business Pool or Business Minor. Recommended: COMM 100W or ENGL 100WB or LLD 100WB"],
    [SubCategory.find_by_name("Upper Division Fundamental").id, " BUS","BUS5 140","Fundamentals of Operations Management", 3, "Familiarizes students with processes that transform inputs into finished goods and services; helps students understand the importance of operations management and how it interacts with other parts of the organization; develops skills in applying appropriate analytical tools to business operations challenges. Prerequisites: Upper division standing. Lower Division Business Pool or Business Minor."],
    [SubCategory.find_by_name("Upper Division Fundamental").id, "BUS","BUS3 160","Fundamentals of Management and Organization Behavior", 3, "Provides a foundation for major topics in management and organizational behavior by surveying theories and practices relating to managerial roles, organizational cultures, fundamental strategic issues, planning, team building, communication, motivation, leadership, decision-making, control, structure and change. Prerequisites: Upper division standing. Lower Division Business Pool or Business Minor."],
    [SubCategory.find_by_name("Upper Division Fundamental").id, "BUS","BUS1 170","Fundamentals of Finance", 3, "The finance function and its relationship to other decision-making areas in the firm; the study of theory and techniques in acquisition and allocation of financial resources from an internal management perspective. Prerequisite: BUS 21 or BUS 122A, ECON 1A, ECON 1B and BUS 90. Upper division standing. Lower Division Business Pool or Business Minor."],
    [SubCategory.find_by_name("Upper Division Fundamental").id, "BUS","BUS2 190","Quantitative Business Analysis", 3, "Quantitative models and computer software used in business decision-making. Studies of network and transportation models, linear programming, CPM/PERT project analysis, decision analysis, simulation and other techniques used in management science applications. Prerequisite: BUS2 090 and MATH 071. Lower Division Business Pool or Business Minor. Not available to Open University Students."],

    [SubCategory.find_by_name("Upper Division Business Integration and Perspectives Courses").id, "BUS","BUS5 187","Global Dimensions of Business", 3, "An integrative interdisciplinary foundation for more specialized courses and self-directed learning. Provides an overview of economic, social, cultural and political/legal forces and factors influencing crossborder business and an introduction to international dimensions of business functions and operations. Prerequisites: Upper division standing. Lower Division Business Pool or Business Minor."],
    [SubCategory.find_by_name("Upper Division Business Integration and Perspectives Courses").id, "BUS","BUS4 188", "Business Systems and Policy", 3, "Provides system perspective on organizations, using information as an integrating vehicle. Examines how information systems can serve business functions and integrate value chain activities. Prerequisite: COMM 100W or ENGL 100WB or LLD 100WB. Upper division standing. Lower Division Business Pool. Pre/Corequisite: Fundamental courses." ],
    [SubCategory.find_by_name("Upper Division Business Integration and Perspectives Courses").id, "BUS","BUS3 189","Strategic Management", 3, "Integrative capstone seminar analyzing interrelationships of managerial decisions/actions within and between the firm and its environment. Applies multi-disciplinary techniques to diagnose and recommend actions appropriate to specific company situations, using case method. Prerequisite: Any 100W. Restricted to graduating seniors only. Allowed Declared Majors: All Business Majors. Lower Division Business Pool. Graduating Senior Status."],
    [SubCategory.find_by_name("Upper Division Business Integration and Perspectives Courses").id,

]




mis_catalog.each do |dep,abbrev, name, units, desc|
  co = Course.create(dep: dep, abbrev:abbrev, name: name, units: units, desc:desc)
  Plan.create(catalog_id:c.id, course_id:co.id)
end