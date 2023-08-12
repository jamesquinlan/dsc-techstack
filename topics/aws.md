# Amazon Web Services (AWS)

Amazon Web Services (AWS) offers virtual private server (VPS) instances, containers, storage, and databases.  A Free Tier is available.


## Lightsail 

Amazon **Lightsail** is a user-friendly cloud computing service provided by Amazon Web Services (AWS) that simplifies the process of launching and managing virtual private servers (VPS) and other cloud resources. It's designed for users who are looking for a straightforward way to deploy web applications, websites, or small-scale workloads without the complexity typically associated with setting up and managing cloud infrastructure. Lightsail is particularly well-suited for developers, small businesses, and individuals who want a cost-effective and hassle-free solution.

To set up an AWS Lightsail instance, follow these steps:

1. **Sign in to AWS Console**: If you don't already have an AWS account, you'll need to create one. Once you're signed in to the AWS Management Console, navigate to the Lightsail service.

2. **Create an Instance**: Click the "Create instance" button. You'll be prompted to select a blueprint, which is a pre-configured setup for various types of applications (e.g., WordPress, LAMP stack, Node.js). Choose a blueprint that fits your needs.

3. **Choose Instance Plan**: Select the instance plan that meets your requirements in terms of performance, memory, and storage. AWS offers a variety of plans to accommodate different workloads and budgets.

4. **Configure Instance**: Give your instance a meaningful name, and optionally, set up advanced options such as adding tags, enabling automatic snapshots, and configuring SSH key pairs for secure remote access.

5. **Create Instance**: Click the "Create instance" button to launch your Lightsail instance. Lightsail will automatically provision the server, install the selected blueprint, and make it accessible through a public IP address.



## Why Lightsail?

Amazon Lightsail is used for several reasons:

1. **Simplicity**: Lightsail abstracts away much of the complexity associated with traditional AWS services, making it easy for users to deploy and manage cloud resources without the need for extensive technical knowledge.

2. **Cost-Effectiveness**: Lightsail offers predictable and affordable pricing plans, which is advantageous for small projects or businesses with tight budgets.

3. **Scalability**: While Lightsail is best suited for smaller workloads, it provides the ability to scale up as your needs grow. If your project requires more resources, you can easily resize your instance.

4. **Integrated Services**: Lightsail integrates with other AWS services, making it a gateway for users to explore and utilize more advanced services as their requirements evolve.


In summary, Amazon Lightsail is a valuable tool for simplifying the deployment and management of virtual private servers and is an excellent choice for those who want a straightforward, cost-effective, and scalable solution for hosting web applications and websites.
  


## Assignment Exercises

This assignment covers some basic tasks with AWS Lightsail, including creating an instance, connecting to it, installing software, editing files, and setting up a static IP address and domain name. Good luck with your practice!


1. Sign up for AWS Lightsail.

2. Create a new Lightsail instance with Ubuntu as the operating system.

3. Connect to the instance using SSH.

4. Update the instance by running sudo apt-get update and sudo apt-get upgrade.

5. Install PHP by running sudo apt-get install php.

6. Create a new PHP file in the /var/www/html/ directory.

7. Edit the PHP file to display "Hello World!".

8. Open the file in a web browser to confirm that it's working.

9. Set up a static IP address for your instance.

10. Create a DNS record for your instance using a domain name registrar.

11. Test the DNS record by accessing your instance through the domain name.



## Other Services


* S3 = Simple Storage Service
        - S3 Bucket
        - Use case: Run big data analytics, artificial intelligence (AI), machine learning (ML), and high performance computing (HPC) applications to unlock data insights.


* EFS - Elastic File System
    
* RDS - Rational Database Server 
    
* Aurora - AWS Database
    
* Cloudfront - CDN placed at edge locations to reduce latency
    
* Lambda (2014) - Serverless     
