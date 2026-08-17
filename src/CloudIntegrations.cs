using Amazon.SageMakerRuntime;
using Amazon.SageMakerRuntime.Model;
using Google.Cloud.Storage.V1;

internal sealed class CloudIntegrations
{
    public void ReadAssets()
    {
        var runtime = new AmazonSageMakerRuntimeClient();
        runtime.InvokeEndpointAsync(new InvokeEndpointRequest
        {
            EndpointName = "repello-csharp-inference"
        });

        var storage = StorageClient.Create();
        storage.GetBucket("repello-csharp-training-data");
    }
}
