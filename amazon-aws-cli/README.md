#Amazon AWS Cli (Command Line Interface)

```
# Install Amazon AWS Cli on Mac OS X
pip install awscli

# Amazon AWS Cli version
aws --version

# Configure Amazon AWS Cli
aws configure

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

