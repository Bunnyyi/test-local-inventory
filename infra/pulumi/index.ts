import * as aws from '@pulumi/aws';

new aws.s3.Bucket('TypeScriptBucket', {
  bucket: 'repello-pulumi-typescript-assets',
});
