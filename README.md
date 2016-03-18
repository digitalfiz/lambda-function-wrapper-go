# lambda-function-wrapper-go


lambda-function passes any data from aws to your app so you can parse it out 
however you want.

The scripts in this repo make a few assumptions:
- Your on linux or osx
- You have [gox] installed.

If these are not true your on your own getting the go app compiled and zipping it all up.

Put your go app in `src`. Now run `./scripts/build.sh` to compile the app and 
copy the files to the build folder. Then run `./scripts/package.sh` to compress 
the app into app.zip so you can upload to lambda.

## AWS Lambda Information

The AWS credentials are available in these environment variables:

    AWS_ACCESS_KEY_ID
    AWS_SECRET_ACCESS_KEY
    AWS_SESSION_TOKEN

For more information about the AWS Lambda function environment, see

  http://alestic.com/2014/11/aws-lambda-environment


[gox]: https://github.com/mitchellh/gox