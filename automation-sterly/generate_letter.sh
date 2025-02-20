#!/bin/bash


# Prompt for input variables with default values
read -p "Company Name: " company_name

read -p "Company Address: " company_address

read -p "Company City, State, ZIP Code: " company_city_state_zip

read -p "Your Name [Franck Djanga]: " your_name
your_name=${your_name:-YOUR NAME}

read -p "Your Address [5709 Downs dr]: " your_address
your_address=${your_address:-YOUR ADDRESS}

read -p "City, State, ZIP Code [Colorado Springs, CO, 80925]: " your_city_state_zip
your_city_state_zip=${your_city_state_zip:-Colorado Springs, CO, 80925}

read -p "Your Email Address [ernest.awangya@gmail.com]: " your_email
your_email=${your_email:-ernest.awangya@gmail.com}

read -p "Your Phone Number [7197225178]: " your_phone
your_phone=${your_phone:-7197225178}

read -p "Date (e.g., January 1, 2025) [$(date "+%b %d, %Y")]: " date
date=${date:-$(date "+%b %d, %Y")}

read -p "Hiring Manager's Name [Hiring Manager]: " hiring_manager
hiring_manager=${hiring_manager:-Hiring Manager}

read -p "Years of Experience (X) [10]: " years_experience
years_experience=${years_experience:-10}

read -p "Previous Company [Charter Communications]: " previous_company
previous_company=${previous_company:-Charter Communications}

read -p "What excites you about the opportunity at this company [work on innovative projects involving advanced technologies like cloud computing, Containers and automation that drive industry disruption]: " exciting_opportunity
exciting_opportunity=${exciting_opportunity:-work on innovative projects involving advanced technologies like cloud computing, Containers and automation that drive industry disruption}

read -p "Impressive thing about the company [the tools and technology used in your organization]: " company_impressive
company_impressive=${company_impressive:-the tools and technology used in your organization}
# Generate the cover letter
cat > cover_letter.txt <<EOF
$your_name
$your_address
$your_city_state_zip
$your_email
$your_phone
$date

$hiring_manager
$company_name
$company_address
$company_city_state_zip

Dear $hiring_manager,

I am writing to express my interest in the DevOps Engineer position at $company_name, as advertised. With over $years_experience years of experience in cloud infrastructure, automation, and continuous integration and deployment, I am confident in my ability to contribute to your team and help drive the success of your technical initiatives.

In my previous role at $previous_company, I successfully designed and implemented scalable, secure, and high-performing infrastructure on AWS, leveraging tools like Terraform, Ansible, and Docker/Kubernetes. My hands-on experience with CI/CD pipelines using Jenkins and GitLab CI has enabled me to streamline deployment processes, reduce downtime, and enhance overall system reliability.

One of my proudest achievements was leading a project that automated infrastructure provisioning, resulting in a 40% reduction in deployment times and significant cost savings. Additionally, my experience with monitoring and logging tools such as Prometheus, Grafana, and the ELK Stack has equipped me with the skills to maintain system performance and quickly address any issues that arise.

What excites me about the opportunity at $company_name is the chance to $exciting_opportunity. My passion for blockchain technology and my commitment to staying at the forefront of industry trends align perfectly with your company’s mission. I am eager to bring my proactive approach and high level of agency to your dynamic and forward-thinking team.

I am particularly impressed by $company_impressive, and I am confident that my technical skills and collaborative mindset will make me a valuable addition to your team. I look forward to the opportunity to discuss how my experience and vision align with $company_name's goals.

Thank you for considering my application. I look forward to the possibility of contributing to the innovative work being done at $company_name.

Warm regards,

$your_name
EOF

echo "Cover letter generated and saved to cover_letter.txt."
