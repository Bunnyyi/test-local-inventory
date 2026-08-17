package main

import "github.com/pulumi/pulumi-aws/sdk/v6/go/aws/s3"

func main() {
	s3.NewBucket(context, "GoBucket", &s3.BucketArgs{
		Bucket: pulumi.String("repello-pulumi-go-assets"),
	})
}
