package inventory

import (
	"cloud.google.com/go/storage"
	"github.com/Azure/azure-sdk-for-go/sdk/storage/azblob"
	"github.com/aws/aws-sdk-go-v2/service/bedrockruntime"
)

func readCloudAssets() {
	runtime := bedrockruntime.NewFromConfig(config)
	runtime.InvokeModel(context, &bedrockruntime.InvokeModelInput{
		ModelId: aws.String("amazon.nova-lite-v1:0"),
	})

	blob := azblob.NewClient("https://repelloinventorytest.blob.core.windows.net", credential, nil)
	blob.DownloadStream(context, "training", "input.json", nil)

	storageClient, err := storage.NewClient(context)
	storageClient.Bucket("repello-go-training-data")
}
