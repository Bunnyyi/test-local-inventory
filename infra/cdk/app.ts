import * as s3 from 'aws-cdk-lib/aws-s3';

new s3.Bucket(this, 'TypeScriptAssets', {
  bucketName: 'repello-cdk-typescript-assets',
});
