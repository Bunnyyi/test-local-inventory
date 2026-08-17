import { S3Bucket } from '@cdktf/provider-aws/lib/s3-bucket';

new S3Bucket(scope, 'TerraformBucket', {
  bucket: 'repello-cdktf-assets',
});
