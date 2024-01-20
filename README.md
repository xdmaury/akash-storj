# Akash Storj S3 Gateway

This Docker image running a Storj S3 Gateway node on Akash.


## Running the S3 Gateway

1. Set up a Storj account and generate an 'Access Grant' from the 'Access' section of the Satellite dashboard. 

2. The SDL file  (Service Definition Language) provided below, replace the ACCESS_GRANT environment variable with the grant obtained in the previous step.

3. Deploy the SDL on Akash, monitor the logs, and retrieve your S3 Access and Secret keys. Additionally, note the provider URL and the randomly generated port displayed in the deploy information.

```yml
---
version: "2.0"
services:
  storj-gateway:
    image: xdmaury/akash-storj:v0.0.1
    env: 
      - ACCESS_GRANT=<grant-key>
    expose:
      - port: 7777
        to:
          - global: true
  ...
```
Replace `grant-key` with the access grant generated from your Storj account.


Feel free to customize the SDL based on your specific requirements.

Now, you should have your Storj S3 Gateway node running on Akash.