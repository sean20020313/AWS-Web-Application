# Production-Style AWS Web Application

## Project Overview

This project aims to build a cloud-based web application infrastructure using Amazon Web Services (AWS), simulating common cloud deployment scenarios found in real-world enterprise environments.

The project adopts an Infrastructure as Code (IaC) approach, using Terraform to define, provision, and manage AWS infrastructure. This improves environment consistency, deployment repeatability, and infrastructure maintainability.

Development will be carried out in phases, starting with the AWS networking foundation and gradually expanding to application deployment, load balancing, database integration, monitoring, and high availability.

## Project Objectives

- Gain hands-on experience in planning and deploying AWS cloud infrastructure.
- Apply Infrastructure as Code principles using Terraform.
- Understand core AWS networking components, including VPCs, subnets, route tables, and Internet Gateways.
- Build a public and private network architecture following fundamental security principles.
- Gradually introduce load balancing, database integration, monitoring, and high availability.
- Develop practical skills relevant to Cloud Engineer and Cloud Infrastructure Engineer roles.

## Technology Stack

- **Cloud Platform:** Amazon Web Services (AWS)
- **Infrastructure as Code:** Terraform
- **Networking:** VPC, Public Subnets, Private Subnets, Route Tables, Internet Gateway
- **Version Control:** Git, GitHub

## Architecture Design

The initial phase focuses on establishing the AWS networking foundation. The architecture consists of a VPC spanning two Availability Zones, with public and private subnets distributed across both zones.

- **VPC:** Provides an isolated virtual network environment for AWS resources.
- **Public Subnets:** Reserved for future internet-facing components and services.
- **Private Subnets:** Reserved for internal resources, such as application servers and databases.
- **Internet Gateway:** Enables internet connectivity for resources in public subnets when the appropriate routing and security configurations are in place.
- **Route Tables:** Control network traffic routing between subnets and external networks.
- **Terraform:** Defines and manages AWS infrastructure through reusable and version-controlled configuration files.

At the current stage, EC2 instances, an Application Load Balancer (ALB), and Amazon RDS have not yet been deployed. These components will be introduced incrementally in subsequent phases.

## Cost and Security Considerations

To minimize ongoing costs during the initial learning and testing phase, NAT Gateways will not be provisioned.

As the project evolves, additional considerations will include network access control, IAM permissions and least-privilege access, infrastructure monitoring, and cloud cost optimization.

Private subnets will initially remain without direct outbound internet access unless additional networking components or endpoints are introduced.

## Development Roadmap

1. **Phase 1 — AWS Network Foundation:** Build the VPC, subnets across multiple Availability Zones, and basic routing infrastructure.
2. **Phase 2 — Application Deployment:** Deploy a web application and establish the basic application runtime environment.
3. **Phase 3 — Load Balancing:** Introduce an Application Load Balancer to distribute incoming traffic and improve service availability.
4. **Phase 4 — Database Integration:** Integrate Amazon RDS and implement network isolation between the application and database tiers.
5. **Phase 5 — Monitoring and Security:** Introduce Amazon CloudWatch monitoring and additional security configurations.
6. **Phase 6 — High Availability and Cost Optimization:** Evaluate high availability strategies, backup mechanisms, and cloud cost optimization opportunities.

## Expected Outcomes

Through this phased implementation, the project aims to demonstrate practical skills in AWS network architecture, Terraform-based infrastructure management, cloud deployment, and infrastructure design.

The project will serve as part of a personal Cloud Engineering Portfolio, showcasing hands-on experience with cloud infrastructure fundamentals and the progressive development of a production-style web application environment.

This is an ongoing learning project. The actual features, infrastructure components, and deployment scope will evolve as development progresses.