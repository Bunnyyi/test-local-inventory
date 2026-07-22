import { GetObjectCommand, S3Client } from '@aws-sdk/client-s3';

const client = new S3Client({ region: 'us-east-1' });

export const readInventoryObject = () =>
  client.send(
    new GetObjectCommand({
      Bucket: 'repello-inventory-typescript-test',
      Key: 'inventory-test.json',
    })
  );

