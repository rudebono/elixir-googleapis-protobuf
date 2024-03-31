defmodule Google.Cloud.Aiplatform.V1beta1.GoogleDriveSource.ResourceId.ResourceType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :RESOURCE_TYPE_UNSPECIFIED, 0
  field :RESOURCE_TYPE_FILE, 1
  field :RESOURCE_TYPE_FOLDER, 2
end

defmodule Google.Cloud.Aiplatform.V1beta1.AvroSource do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :gcs_source, 1,
    type: Google.Cloud.Aiplatform.V1beta1.GcsSource,
    json_name: "gcsSource",
    deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.CsvSource do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :gcs_source, 1,
    type: Google.Cloud.Aiplatform.V1beta1.GcsSource,
    json_name: "gcsSource",
    deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.GcsSource do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :uris, 1, repeated: true, type: :string, deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.GcsDestination do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :output_uri_prefix, 1, type: :string, json_name: "outputUriPrefix", deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.BigQuerySource do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :input_uri, 1, type: :string, json_name: "inputUri", deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.BigQueryDestination do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :output_uri, 1, type: :string, json_name: "outputUri", deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.CsvDestination do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :gcs_destination, 1,
    type: Google.Cloud.Aiplatform.V1beta1.GcsDestination,
    json_name: "gcsDestination",
    deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.TFRecordDestination do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :gcs_destination, 1,
    type: Google.Cloud.Aiplatform.V1beta1.GcsDestination,
    json_name: "gcsDestination",
    deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.ContainerRegistryDestination do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :output_uri, 1, type: :string, json_name: "outputUri", deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.GoogleDriveSource.ResourceId do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :resource_type, 1,
    type: Google.Cloud.Aiplatform.V1beta1.GoogleDriveSource.ResourceId.ResourceType,
    json_name: "resourceType",
    enum: true,
    deprecated: false

  field :resource_id, 2, type: :string, json_name: "resourceId", deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.GoogleDriveSource do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :resource_ids, 1,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1beta1.GoogleDriveSource.ResourceId,
    json_name: "resourceIds",
    deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.DirectUploadSource do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3
end