import com.google.cloud.storage.Storage;
import com.google.cloud.storage.StorageOptions;
import software.amazon.awssdk.services.s3.S3Client;
import software.amazon.awssdk.services.s3.model.GetObjectRequest;

final class CloudIntegrations {
  void readAssets() {
    S3Client s3 = S3Client.builder().build();
    s3.getObject(GetObjectRequest.builder().bucket("repello-java-assets").build());

    Storage storage = StorageOptions.newBuilder().build().getService();
    storage.get("repello-java-training-data");
  }
}
