# Creating a terraform and kickstart an S3 instance.
Prerequisites for terraform:
- Create IAM user as well as an Access key.
- Attach AmazonS3FullAccess to this user.
- Change variable keys accordingly and apply.

# Docker build aws cli image.
export AWS_SECRET_ACCESS_KEY=<my_secret_access_key> \
export AWS_ACCESS_KEY_ID=<my_access_key_id> \
docker build --build-arg AWS_ACCESS_KEY_ID=$AWS_ACCESS_KEY_ID --build-arg AWS_SECRET_ACCESS_KEY=$AWS_SECRET_ACCESS_KEY -t myaws-cli . -t s3enu \
docker run --rm -it s3enum s3 ls s3://s3-assignment-instance --recursive | awk '{print $4}'
