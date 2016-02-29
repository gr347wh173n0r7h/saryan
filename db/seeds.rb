# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
s = School.create(name:"SJSU")

department_list = [
    ["BUS", 1],
    ["SE", 1],
    ["MATH", 1],
    ["CMPE", 1],
    ["ENGL", 1],
    ["PHYS", 1],
    ["ISE", 1],
    ["PHYL", 1],
    ["ECON", 1],
    ["CS", 1],
    ["ENGR", 1],
    ["COMM", 1],
]

department_list.each do |name, school_id|
  Department.create(name:name, school_id:school_id)
end

major_list = [
    ["MIS", 1],
    ["BSSE", 2],
    ["BSCMPE", 4],
    ["MATH", 3],

]

major_list.each do |name, department_id|
  Major.create(name:name, department_id:department_id)
end


catalog_list = [
    [2012, 1],
    [2012, 2],
    [2012, 3],
    [2012, 4],

]

catalog_list.each do |cat_year, major_id|
  Catalog.create(cat_year:cat_year, major_id:major_id)
end

mis_catalog = [
    [1,"BUS","BUS4 092","Introduction to Business Programming",3,"Analysis of business problems to design and implement the software component of an information system. Emphasis on structured design and programming. Introduction to visual programming languages. Prerequisite: BUS 91L."],
    [1,"BUS","BUS4 110A","Fundamentals of Management Information Systems", 3, "Prepares students for upper division MIS courses by providing an overview of the strategic and managerial issues involved in the design, implementation, and maintenance of information systems. Includes an introduction to business application programming. Prerequisite: BUS 92, upper division standing."],
    [1,"BUS","BUS4 110B","Introduction to Systems Analysis and Design", 3, "Introduction to systems development methodologies, techniques and tools. Emphasis on enterprise, process, data and object modeling techniques. Students use UML and prototyping tools to analyze and design an information system. Corequisite: BUS4 092."],
    [1,"BUS","BUS4 111","Introduction to Telecommunications", 3, "Emphasis on the concepts, architectures, components, protocols and standards for message movement within information networks. Uses the network design process to develop understanding of business and information technology perspectives. Prerequisite: Upper Division Standing, Lower Division Business Pool"],
    [1,"BUS","BUS4 112","Introduction to Database Management Systems", 3, "Intermediate database management systems and procedures, stressing the design and development of efficient business information systems. Emphasis on data modeling, data integrity, SQL and implementation of a database application. Prerequisite: A grade of C or better in BUS4 092 . Lower Division Business Pool."],
    [1,"BUS","BUS4 119A","Practicum in Management Information Systems", 3, "Intermediate database management systems and procedures, stressing the design and development of efficient business information systems. Emphasis on data modeling, data integrity, SQL and implementation of a database application. Prerequisite: A grade of C or better in BUS4 092 . Lower Division Business Pool."],
    [1,"BUS","BUS4 119B","Business Systems & Information Systems", 3, "Analysis of effective use of information systems and technology for competitive advantage by a business organization for enterprise, business-to-business, and E-Commerce computing. Emphasis on integration of information systems and technology with business strategy, financial justification, personnel and organizational considerations. Prerequisite: COMM 100W or ENGL 100WB or LLD 100WB, a grade of C or better in BUS 111 and BUS 112, senior status, taken in last semester before graduation. Lower Division Business Pool."],
    [1,"BUS","BUS4 113","Advanced Business Programming", 3, "Development of complex business applications; integration of structured programming methodologies and visual programming languages. Prerequisite: COMM 100W or ENGL 100WB or LLD 100WB, a grade of C or better in BUS 111 and BUS 112, senior status. Lower Division Business Pool"],
    [1,"BUS","BUS4 113J","Advanced Business Programming in Java", 3,"Students gain experience with developing complex business application programs in the electronic commerce environment with an emphasis on the integration between structured and object oriented programming. Applications will be built for Unix and Windows platforms using the Java programming language. Prerequisite: COMM 100W or ENGL 100WB or LLD 100WB, a grade of C or better in BUS 111 and BUS 112, senior status. Lower division business pool."],
    [1,"BUS","BUS4 114","Advanced Systems Analysis and Design", 3, "Advanced topics in systems development, including CASE tools, object technologies, enterprise analysis and project management. Prerequisite: COMM 100W or ENGL 100WB or LLD 100WB, a grade of C or better in BUS 111 and BUS 112, senior status. Lower division business pool."],
    [1,"BUS","BUS4 115","Business Strategy and Telecommunications", 3, "Integration of telecommunications and database management systems concepts in a distributed information systems environment. Emphasis on information systems architectures, systems integration, open systems and other advanced topics. Prerequisite: BUS4 111. Lower division business pool."],
    [1,"BUS","BUS4 116","Advanced Database Management Systems", 3, "Advanced topics in database management, including data analysis and design, SQL and client/server database development tools and applications. Prerequisite: BUS4 112. Lower division business pool."],
    [1,"BUS","BUS4 118B","Topics in MIS: Business Expert Systems", 3, "Investigation of ESS/ES theory and application. Design, development and evaluation of real-world ESS/ES prototype systems in Excel/Visual Basic/etc. Prerequisite: COMM 100W or ENGL 100W or LLD 100W, a grade of C or better in BUS 111 and BUS 112, BUS4 110A and BUS4 110B, Lower Division Business Pool., senior status."],
    [1,"BUS","BUS4 118C","Topics in MIS: Security Systems & Operating Systems", 3, "Introduces the spectrum of threats and associated best practices for managing information security and assurance in organizations. Covers use of education/training, policy/procedure and technology to balance information confidentiality, integrity and accessibility requirements against associated costs to support organizations' strategic goals. Prerequisite: Lower Division Business Pool. Corequisite: BUS4 111. Note: Offered only occasionally."],
    [1,"BUS","BUS4 118W","Topics in MIS: Web Based Computing", 3, "Explores Web applications for personal, E-Commerce and corporate computing. Covers essentials of WWW protocols. Students will learn to design and program both client and server-side applications using HTML and extensions, JavaScript, Perl, VBScript, Active Server Pages, database connections, XML, Java. Prerequisite: Grade of C or better in BUS4 110A and BUS4 112. Lower division business pool."],
    [1,"BUS","BUS1 20","Financial Accounting", 3, "Accounting postulates and principles; application of accounting theory to accumulate and summarize financial data; critical analysis and interpretation of financial statements. Prerequisite: MATH 071"],
    [1,"BUS","BUS2 90","Business Statistics", 3, "n terms of theory and application: collection and presentation of data; measures of central values and spread; probability as a measure of uncertainty; sampling and sampling distribution of the sample mean; confidence intervals; hypothesis testing; regression and correlation. Prerequisite: MATH 071. Math Remediation completed or a post baccalaureate."],
    [1,"BUS","BUS3 10","Discovering Business ", 3, "Simulates setting up a small business to explore the many facets of an enterprise (marketing, accounting, finance, management, information systems, etc.). Through self-assessment and readings, directs students toward career paths that best reflect their personal aptitudes and interests. Prerequisite: Highly recommended for SJSU freshman business majors, optional for others."],
    [1,"BUS","BUS1 21","Managerial Accounting", 3, "Uses of accounting data for managerial decision-making. Topics include: cost accumulation for product costing; cost structure for control and motivation; cost-volume-profit relationships; profit planning; standard costing; flexible budgets; and relevant costs for non-routine decisions. Prerequisite: BUS 20 or BUS 20N."],
    [1,"BUS","BUS3 80","Legal Environment of Business", 3, "Understand the judicial system and dispute resolution with emphasis on the role of law in purchasing, contracting and administering a business as it impacts the firm's constituencies and society as a whole. Prerequisite: Sophomore status"],
    [1,"BUS","BUS4 91L","Business Computer Productivity Tools", 3, "An overview of computer hardware and software concepts and common operating system functions. Instruction in the use of microcomputer-based word processing, presentation graphics and spreadsheet productivity tools. Lab meets for 5 weeks."],
    [1,"BUS","BUS2 130","Fundamentals of Marketing", 3, "Analysis of marketing opportunities; planning of marketing programs with emphasis on product, price, promotion and distribution; control of the marketing effort; social and ethical responsibilities of marketing. Prerequisite: Upper division standing. Lower Division Business Pool or Business Minor. Recommended: COMM 100W or ENGL 100WB or LLD 100WB"],
    [1,"BUS","BUS3 140","Fundamentals of Operations Management", 3, "Familiarizes students with processes that transform inputs into finished goods and services; helps students understand the importance of operations management and how it interacts with other parts of the organization; develops skills in applying appropriate analytical tools to business operations challenges. Prerequisites: Upper division standing. Lower Division Business Pool or Business Minor."],
    [1,"BUS","BUS3 160","Fundamentals of Management and Organization Behavior", 3, "Provides a foundation for major topics in management and organizational behavior by surveying theories and practices relating to managerial roles, organizational cultures, fundamental strategic issues, planning, team building, communication, motivation, leadership, decision-making, control, structure and change. Prerequisites: Upper division standing. Lower Division Business Pool or Business Minor."],
    [1,"BUS","BUS1 170","Fundamentals of Finance", 3, "The finance function and its relationship to other decision-making areas in the firm; the study of theory and techniques in acquisition and allocation of financial resources from an internal management perspective. Prerequisite: BUS 21 or BUS 122A, ECON 1A, ECON 1B and BUS 90. Upper division standing. Lower Division Business Pool or Business Minor.

"],
    [1,"BUS","BUS3 187","Global Dimensions of Business", 3, "An integrative interdisciplinary foundation for more specialized courses and self-directed learning. Provides an overview of economic, social, cultural and political/legal forces and factors influencing crossborder business and an introduction to international dimensions of business functions and operations. Prerequisites: Upper division standing. Lower Division Business Pool or Business Minor."],
    [1,"BUS","BUS3 189","Strategic Management", 3, "Integrative capstone seminar analyzing interrelationships of managerial decisions/actions within and between the firm and its environment. Applies multi-disciplinary techniques to diagnose and recommend actions appropriate to specific company situations, using case method. Prerequisite: Any 100W. Restricted to graduating seniors only. Allowed Declared Majors: All Business Majors. Lower Division Business Pool. Graduating Senior Status.

"],
    [1,"BUS","BUS2 190","Quantitative Business Analysis", 3, "Quantitative models and computer software used in business decision-making. Studies of network and transportation models, linear programming, CPM/PERT project analysis, decision analysis, simulation and other techniques used in management science applications. Prerequisite: BUS2 090 and MATH 071. Lower Division Business Pool or Business Minor. Not available to Open University Students."],
    [1,"COMM","COMM 100W","Writing Workshop: Writing for Influence", 3, "Current conventions and forms of exposition, argument and persuasion. Writing for the general and specialized audience from the thesis statement approach. GE Area: Z Prerequisite: ENGL 1B (with a grade of C or better); Completion of core GE, satisfaction of Writing Skills Test and upper division standing. Note: Must be passed with C or better to satisfy the CSU Graduation Writing Assessment requirement (GWAR)."],
    [1,"PHIL","PHIL 186","Prof. Business Ethics", 3, "Interdisciplinary study of types of ethical problems which arise within the contexts of business occupations and professions. Major ethical theories, critique of economic and criminal justice. Focus is on issues of justice and equality in the U.S. Case studies. GE Area: S Prerequisite: Passage of the Writing Skills Test (WST) or ENGL/LLD 100A with a C or better (C- not accepted), completion of Core General Education and upper division standing are prerequisites to all SJSU studies courses. Completion of, or co-registration in, 100W is strongly recommended.

"],
    [1,"ECON","ECON 1A","Macroeconomics", 3, "Determination of economic aggregates such as total output, total employment, the price level and the rate of economic growth. Notes: May be taken concurrently or prior to ECON 1B.

"],
    [1,"ECON","ECON 1B","Microeconomics", 3, "Allocation of resources and distribution of income as affected by the workings of the price system and by government policies. GE Area: D1 Notes: May be taken concurrently or prior to Econ 1A.

"],
    [1,"MATH","MATH 71","Business Calculus", 3, "Functions and graphs, limits, continuity, differentiation, integration, partial differentiation. Emphasis on business and economics applications. Prerequisite: Math Remediation Complete, or a post bacc, or Open Univ; MATH 008 (grade of C- or better) or MATH 019 (grade of C or better), or a score of 550 or higher on the SAT Math, or a score of 23 or higher on ACT math. Corequisite: MATH 071W Note: For students who pass this course with a grade of C or better (C not accepted), course will be allowed to fulfill Area B4.

"],

]

mis_catalog.each do |catalog_id,dep,course_num, name, units, descr|
  Course.create(catalog_id:catalog_id, dep: dep, course_num: course_num, name: name, units: units, descr:descr)
end