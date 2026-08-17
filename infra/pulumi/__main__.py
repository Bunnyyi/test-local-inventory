import pulumi_gcp as gcp


gcp.storage.Bucket(
    "PythonBucket",
    name="repello-pulumi-python-assets",
)
