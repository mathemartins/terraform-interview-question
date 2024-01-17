#### Author: Alphador / Mathemartins

##### Terraform Folder structure
terraform/
|-- environments/
|   |-- dev/
|   |   |-- main.tf
|   |   |-- variables.tf
|   |   |-- outputs.tf
|   |-- prod/
|       |-- main.tf
|       |-- variables.tf
|       |-- outputs.tf
|-- modules/
|   |-- networking/
|   |   |-- main.tf
|   |   |-- variables.tf
|   |   |-- outputs.tf
|   |-- compute/
|       |-- main.tf
|       |-- variables.tf
|       |-- outputs.tf
|-- global/
|   |-- variables.tf
|   |-- outputs.tf
|-- providers.tf
|-- backend.tf
|-- variables.tf
|-- outputs.tf
|-- main.tf
|-- .gitignore
|-- README.md


### Question 1 - Intermediate / Professional Difficulty level
Certainly! Here's an interview-type question for a DevOps engineer position:

---

**Question:**

You've been tasked with provisioning an AWS resource using Terraform for a new project.
The requirements for the infrastructure are as follows:

1. Create a Virtual Private Cloud (VPC) with a CIDR block of `10.0.0.0/16`.
2. Within the VPC, set up two subnets across different Availability Zones:
    - Subnet 1: `10.0.1.0/24` in AZ-A
    - Subnet 2: `10.0.2.0/24` in AZ-B
3. Deploy an EC2 instance in each subnet with the following specifications:
    - Amazon Linux 2 AMI
    - t2.micro instance type
    - Security Group allowing SSH access from your IP address
    - Tags for identifying the instances (e.g., Name, Environment)
4. Implement an Internet Gateway and associate it with the VPC to enable internet access for instances.
5. Set up a Route Table for each subnet, and ensure that traffic flows appropriately.

Provide the Terraform code to accomplish these tasks. Explain any important considerations or
configurations made in your solution.

---

This question assesses the candidate's hands-on experience with Terraform, AWS, networking concepts, and
infrastructure as code best practices. It also allows them to showcase their problem-solving skills and
understanding of AWS resource provisioning.

