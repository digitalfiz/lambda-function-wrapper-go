# lambda-function-wrapper-go


lambda-function passes any data from aws to your app so you can parse it out 
however you want.

The script in this repo assume you have [gox] installed.

Run `./scripts/build.sh` to compile the app and copy the files to the build folder.
Then run `./scripts/package.sh` to compress the app into app.zip so you can upload to lambda.

## AWS Lambda Information

The AWS credentials are available in these environment variables:

    AWS_ACCESS_KEY_ID
    AWS_SECRET_ACCESS_KEY
    AWS_SESSION_TOKEN

For more information about the AWS Lambda function environment, see

  http://alestic.com/2014/11/aws-lambda-environment

Perl and Python are currently available in the AWS Lambda environment
(though not guaranteed by Amazon), so all you need to include in the
ZIP file is the extra libraries you will use. Other languages may take
more work.


[gox]: https://github.com/mitchellh/gox