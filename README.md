AWS IAM Users and Policy Management with Terraform

This project demonstrates how to manage AWS IAM users and attach policies using Terraform. The user roles and policies are defined in a YAML file (users.yaml), which is decoded and processed within the Terraform configuration (main.tf). The configuration provisions IAM users, creates login profiles, and attaches the appropriate policies to each user based on the YAML input.
Project Structure

    users.yaml: A YAML file containing the list of users and their associated roles/policies.
    main.tf: The Terraform configuration file that:
        Reads and decodes the YAML file.
        Creates AWS IAM users.
        Sets up login profiles with generated passwords.
        Attaches policies to each user as defined in the YAML file.

Key Components

    aws_iam_user: Provisions IAM users for each username listed in the YAML file.
    aws_iam_user_login_profile: Creates login profiles with password settings for each user.
    aws_iam_user_policy_attachment: Attaches the relevant policies to each user based on their roles from the YAML file.

How to Use

    Clone this repository.
    Define the user roles and policies in the users.yaml file.
    Initialize and apply the Terraform configuration:

    terraform init
    terraform apply
    The IAM users and policies will be automatically created and managed.