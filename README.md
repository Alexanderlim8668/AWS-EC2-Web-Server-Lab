# AWS-EC2-Web-Server-Lab

My first AWS EC2 lab where I launched a web server, configured security groups, and tested instance features

This repository documents my first hands-on experience with Amazon EC2, where I:

- Launched a web server with termination protection
- Configured security groups
- Monitored instance performance
- Resized an EC2 instance
- Tested termination protection

## Lab Objectives

By completing this lab, I learned how to:

1. Launch a web server with termination protection enabled
2. Monitor an EC2 instance
3. Modify security groups to allow HTTP access
4. Resize an EC2 instance to scale
5. Test termination protection
6. Terminate an EC2 instance properly

## Step-by-Step Implementation

### Task 1: Launching the EC2 Instance
- Created an EC2 instance named "Web Server"
- Used Amazon Linux 2 AMI
- Selected t3.micro instance type
- Configured without a key pair (since no SSH access needed)
- Set up in Lab VPC with custom security group
- Enabled termination protection
- Added User Data script to install Apache web server

### Task 2: Monitoring the Instance
- Verified instance status checks
- Viewed CloudWatch metrics
- Captured instance screenshot for troubleshooting

### Task 3: Configuring Web Access
- Updated security group to allow HTTP traffic (port 80)
- Verified web server accessibility

### Task 4: Resizing the Instance
- Stopped the instance
- Changed instance type from t3.micro to t3.small
- Increased EBS volume from 8 GiB to 10 GiB
- Restarted the instance

### Task 5: Testing Termination Protection
- Attempted termination with protection enabled (failed as expected)
- Disabled termination protection
- Successfully terminated the instance
- 
## Lessons Learned

- The importance of security groups in controlling access
- How to automate server setup with User Data scripts
- The process of resizing EC2 instances and volumes
- How termination protection prevents accidental instance deletion

# AWS EC2 Web Server Lab

```mermaid
flowchart LR
    subgraph AWS_Cloud["☁️ AWS Cloud"]
        direction TB
        subgraph EC2["🖥️ EC2 Instance"]
            direction LR
            A[("📦 Amazon Linux 2 AMI")] --> B["t3.micro<br>🛡️ Termination Protection"]
            B --> C["📝 User Data Script"]
            C --> D["#!/bin/bash<br>yum install httpd<br>systemctl start httpd"]
        end
        
        subgraph VPC["🔒 VPC Network"]
            SG["🛡️ Security Group<br>• HTTP:80<br>• SSH:22 (removed)"]
        end
        
        subgraph Monitoring["📊 Monitoring"]
            CW["📈 CloudWatch"]
        end
    end

    EC2 -- "🔗 Attached to" --> VPC
    EC2 -- "📡 Sends metrics to" --> Monitoring
    
    classDef aws fill:#FF9900,stroke:#333,color:white;
    classDef ec2 fill:#FF9900,stroke:#333,color:white;
    classDef vpc fill:#232F3E,stroke:#333,color:white;
    classDef monitor fill:#00A1C9,stroke:#333,color:white;
    class AWS_Cloud,EC2 aws;
    class VPC vpc;
    class Monitoring monitor;



