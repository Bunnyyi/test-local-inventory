package cdk

import "github.com/aws/aws-cdk-go/awscdk/v2/awss3"

func buildStack() {
	awss3.NewBucket(stack, jsii.String("GoAssets"), &awss3.BucketProps{
		BucketName: jsii.String("repello-cdk-go-assets"),
	})
}
