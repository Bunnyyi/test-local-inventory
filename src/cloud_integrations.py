import boto3
from azure.storage.blob import BlobServiceClient
from google.cloud import storage
from vertexai.generative_models import GenerativeModel


GCP_PROJECT = "forward-dream-501807-j3"
GCP_BUCKET = "repello-gcp-inventory-test-forward-dream-501807-j3"
GEMINI_MODEL = "gemini-2.5-flash"
AWS_BUCKET = "repello-inventory-example-bucket"
AZURE_STORAGE_URL = "https://repelloinventorytest.blob.core.windows.net"


def read_gcp_object():
    client = storage.Client(project=GCP_PROJECT)
    return client.bucket(GCP_BUCKET).blob("datasets/repello_dataset.csv")


def load_gemini_model():
    model = GenerativeModel(GEMINI_MODEL)
    return model


def read_aws_object():
    client = boto3.client("s3", region_name="us-east-1")
    return client.get_object(Bucket=AWS_BUCKET, Key="inventory-test.json")


def connect_azure_storage():
    client = BlobServiceClient(account_url=AZURE_STORAGE_URL)
    return client
