import software.amazon.awscdk.services.s3.Bucket;
import software.amazon.awscdk.services.s3.BucketProps;

final class Stack {
  void build() {
    new Bucket(
        this,
        "JavaAssets",
        BucketProps.builder().bucketName("repello-cdk-java-assets").build());
  }
}
