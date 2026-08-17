using Amazon.CDK.AWS.S3;

internal sealed class Stack
{
    public void Build()
    {
        new Bucket(this, "CsharpAssets", new BucketProps
        {
            BucketName = "repello-cdk-csharp-assets"
        });
    }
}
