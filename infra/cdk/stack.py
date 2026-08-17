from aws_cdk import aws_s3 as s3


s3.Bucket(
    self,
    "PythonAssets",
    bucket_name="repello-cdk-python-assets",
)
