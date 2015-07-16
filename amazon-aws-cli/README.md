# Autor: Caio Moreno @caiomsouza
#Amazon AWS Cli (Command Line Interface)

```

# Install pip
curl "https://bootstrap.pypa.io/get-pip.py" -o "get-pip.py"
sudo python get-pip.py

# Install Amazon AWS Cli on Mac OS X
pip install awscli

# Amazon AWS Cli version
aws --version

# Cli Help
aws help

# Configure Amazon AWS Cli
aws configure

# Default Region  
Default region name [us-east-1]:

# Default output format (text or json) 
Default output format [json]: text
Default output format [json]: json

# EC2

# Describe EC2 instances
aws ec2 describe-instances
 
# Describe EC2 instances with details
aws ec2 describe-instances --output table --region us-east-1

# Describe instance status
aws ec2 describe-instance-status --instance-id i-5203422c

# Start an instance
aws ec2 start-instances --instance-ids i-e232ae03

# Stop an instance
aws ec2 stop-instances --instance-ids i-1a2b3c4d

# To allocate an Elastic IP address for EC2-Classic
# Generate an Public IP Address to use 
aws ec2 allocate-address

#To allocate an Elastic IP address for EC2-VPC
aws ec2 allocate-address --domain vpc


#To release an Elastic IP addresses for EC2-Classic
aws ec2 release-address --public-ip 198.51.100.0

#To release an Elastic IP address for EC2-VPC
aws ec2 release-address --allocation-id eipalloc-64d5890a

#To associate an Elastic IP addresses in EC2-Classic
# Associate an Public IP Address to an EC2 Instance
aws ec2 associate-address --instance-id i-e232ae03 --public-ip 54.197.255.9

#To associate an Elastic IP address in EC2-VPC
aws ec2 associate-address --instance-id i-43a4412a --allocation-id eipalloc-64d5890a

#To disassociate an Elastic IP addresses in EC2-Classic
aws ec2 disassociate-address --public-ip 198.51.100.0

#To disassociate an Elastic IP address in EC2-VPC
aws ec2 disassociate-address --association-id eipassoc-2bebb745



# Describe volumes
aws ec2 describe-volumes

# Descibre volumes with details
aws ec2 describe-volumes --output table

#S3

# List S3 buckets
aws s3 ls

# Describe Instances
aws ec2 describe-instances --output table --region us-east-1

# Create a Bucket
aws s3 mb s3://your_bucket_name
aws s3 mb s3://teste-s3-aws-cli

# Deleta a Bucket
aws s3 rb s3://bucket-name --force
aws s3 rb s3://teste-s3-aws-cli --force

# Upload a file to a S3 bucket
aws s3 cp /Users/caiomsouza/Desktop/your_file.sh s3://your_bucket_name
aws s3 cp /Users/caiomsouza/Desktop/teste.sh s3://teste-s3-aws-cli

# Upload a folder to a S3 Bucket
aws s3 cp /Users/caiomsouza/Desktop/your_folder s3://your_bucket --recursive
aws s3 cp /Users/caiomsouza/Desktop/lib s3://teste-s3-aws-cli --recursive

# List files in a S3 bucket
aws s3 ls s3://your_bucket
aws s3 ls s3://teste-s3-aws-cli

# List files inside a folder in a S3 bucket
aws s3 ls s3://teste-s3-aws-cli/twitter-users/


# Sync all files from your current folder
aws s3 sync
aws s3 sync . s3://teste-s3-aws-cli/lib
aws s3 sync . s3://teste-s3-aws-cli/twitter-users

```

#Links:
http://aws.amazon.com/cli/<BR>
http://docs.aws.amazon.com/cli/latest/reference/s3/cp.html<BR>
http://docs.aws.amazon.com/cli/latest/reference/s3/sync.html<BR>
http://docs.aws.amazon.com/cli/latest/userguide/using-s3-commands.html<BR>
https://docs.aws.amazon.com/AmazonS3/latest/dev/acl-overview.html<BR>
http://docs.aws.amazon.com/cli/latest/userguide/cli-chap-getting-started.html<BR>
http://docs.aws.amazon.com/cli/latest/userguide/controlling-output.html<BR>
http://docs.aws.amazon.com/cli/latest/reference/configure/index.html<BR>
http://docs.aws.amazon.com/AmazonS3/latest/dev/walkthrough1.html<BR>
http://mikeferrier.com/2011/10/27/granting-access-to-a-single-s3-bucket-using-amazon-iam/<BR>
https://centroy.com/blog/allow-user-access-single-s3-bucket<BR>
http://unix.stackexchange.com/questions/121718/how-to-parse-json-with-shell-scripting-in-linux<BR>
http://bencane.com/2014/09/02/understanding-exit-codes-and-how-to-use-them-in-bash-scripts/<BR>


