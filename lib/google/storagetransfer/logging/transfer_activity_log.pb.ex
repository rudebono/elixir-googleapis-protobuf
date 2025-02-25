defmodule Google.Storagetransfer.Logging.StorageSystemType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :STORAGE_SYSTEM_TYPE_UNSPECIFIED, 0
  field :AWS_S3, 1
  field :AZURE_BLOB, 2
  field :GCS, 3
  field :POSIX_FS, 4
  field :HTTP, 5
end

defmodule Google.Storagetransfer.Logging.TransferActivityLog.Action do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :ACTION_UNSPECIFIED, 0
  field :FIND, 1
  field :COPY, 2
  field :DELETE, 3
end

defmodule Google.Storagetransfer.Logging.AwsS3ObjectMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :bucket, 1, type: :string, deprecated: false
  field :object_key, 2, type: :string, json_name: "objectKey", deprecated: false
  field :last_modified_time, 3, type: Google.Protobuf.Timestamp, json_name: "lastModifiedTime"
  field :md5, 4, type: :string
  field :size, 5, type: :int64, deprecated: false
end

defmodule Google.Storagetransfer.Logging.AwsS3BucketMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :bucket, 1, type: :string, deprecated: false
  field :path, 2, type: :string
end

defmodule Google.Storagetransfer.Logging.GcsObjectMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :bucket, 1, type: :string, deprecated: false
  field :object_key, 2, type: :string, json_name: "objectKey", deprecated: false
  field :last_modified_time, 3, type: Google.Protobuf.Timestamp, json_name: "lastModifiedTime"
  field :md5, 4, type: :string
  field :crc32c, 5, type: :string
  field :size, 6, type: :int64, deprecated: false
end

defmodule Google.Storagetransfer.Logging.GcsBucketMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :bucket, 1, type: :string, deprecated: false
  field :path, 2, type: :string
end

defmodule Google.Storagetransfer.Logging.AzureBlobMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :account, 1, type: :string, deprecated: false
  field :container, 2, type: :string, deprecated: false
  field :blob_name, 3, type: :string, json_name: "blobName", deprecated: false
  field :last_modified_time, 4, type: Google.Protobuf.Timestamp, json_name: "lastModifiedTime"
  field :md5, 5, type: :string
  field :size, 6, type: :int64, deprecated: false
end

defmodule Google.Storagetransfer.Logging.AzureBlobContainerMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :account, 1, type: :string, deprecated: false
  field :container, 2, type: :string, deprecated: false
  field :path, 3, type: :string
end

defmodule Google.Storagetransfer.Logging.PosixFileMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :path, 1, type: :string, deprecated: false
  field :last_modified_time, 2, type: Google.Protobuf.Timestamp, json_name: "lastModifiedTime"
  field :crc32c, 3, type: :string
  field :size, 4, type: :int64, deprecated: false
end

defmodule Google.Storagetransfer.Logging.HttpFileMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :url, 1, type: :string, deprecated: false
  field :md5, 2, type: :string
  field :size, 3, type: :int64
end

defmodule Google.Storagetransfer.Logging.HttpManifestMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :url, 1, type: :string, deprecated: false
end

defmodule Google.Storagetransfer.Logging.ObjectMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :metadata, 0

  field :type, 1,
    type: Google.Storagetransfer.Logging.StorageSystemType,
    enum: true,
    deprecated: false

  field :aws_s3_object, 3,
    type: Google.Storagetransfer.Logging.AwsS3ObjectMetadata,
    json_name: "awsS3Object",
    oneof: 0

  field :azure_blob, 4,
    type: Google.Storagetransfer.Logging.AzureBlobMetadata,
    json_name: "azureBlob",
    oneof: 0

  field :gcs_object, 5,
    type: Google.Storagetransfer.Logging.GcsObjectMetadata,
    json_name: "gcsObject",
    oneof: 0

  field :posix_file, 6,
    type: Google.Storagetransfer.Logging.PosixFileMetadata,
    json_name: "posixFile",
    oneof: 0

  field :http_file, 7,
    type: Google.Storagetransfer.Logging.HttpFileMetadata,
    json_name: "httpFile",
    oneof: 0
end

defmodule Google.Storagetransfer.Logging.ContainerMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :metadata, 0

  field :type, 1,
    type: Google.Storagetransfer.Logging.StorageSystemType,
    enum: true,
    deprecated: false

  field :aws_s3_bucket, 3,
    type: Google.Storagetransfer.Logging.AwsS3BucketMetadata,
    json_name: "awsS3Bucket",
    oneof: 0

  field :azure_blob_container, 4,
    type: Google.Storagetransfer.Logging.AzureBlobContainerMetadata,
    json_name: "azureBlobContainer",
    oneof: 0

  field :gcs_bucket, 5,
    type: Google.Storagetransfer.Logging.GcsBucketMetadata,
    json_name: "gcsBucket",
    oneof: 0

  field :posix_directory, 6,
    type: Google.Storagetransfer.Logging.PosixFileMetadata,
    json_name: "posixDirectory",
    oneof: 0

  field :http_manifest, 7,
    type: Google.Storagetransfer.Logging.HttpManifestMetadata,
    json_name: "httpManifest",
    oneof: 0
end

defmodule Google.Storagetransfer.Logging.TransferActivityLog.Status do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :status_code, 1, type: :string, json_name: "statusCode", deprecated: false
  field :error_type, 2, type: :string, json_name: "errorType"
  field :error_message, 3, type: :string, json_name: "errorMessage"
end

defmodule Google.Storagetransfer.Logging.TransferActivityLog do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :operation, 1, type: :string, deprecated: false

  field :action, 2,
    type: Google.Storagetransfer.Logging.TransferActivityLog.Action,
    enum: true,
    deprecated: false

  field :status, 3,
    type: Google.Storagetransfer.Logging.TransferActivityLog.Status,
    deprecated: false

  field :source_container, 4,
    type: Google.Storagetransfer.Logging.ContainerMetadata,
    json_name: "sourceContainer"

  field :destination_container, 5,
    type: Google.Storagetransfer.Logging.ContainerMetadata,
    json_name: "destinationContainer"

  field :source_object, 6,
    type: Google.Storagetransfer.Logging.ObjectMetadata,
    json_name: "sourceObject"

  field :destination_object, 7,
    type: Google.Storagetransfer.Logging.ObjectMetadata,
    json_name: "destinationObject"

  field :complete_time, 8,
    type: Google.Protobuf.Timestamp,
    json_name: "completeTime",
    deprecated: false
end
