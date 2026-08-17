using Pulumi.Aws.S3;

internal sealed class Program
{
    public void Build()
    {
        new Bucket("CsharpBucket", new BucketArgs
        {
            BucketName = "repello-pulumi-csharp-assets"
        });
    }
}
