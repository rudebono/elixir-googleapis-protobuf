defmodule Google.Cloud.Aiplatform.V1beta1.Schema.ImageDataItem do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :gcs_uri, 1, type: :string, json_name: "gcsUri", deprecated: false
  field :mime_type, 2, type: :string, json_name: "mimeType", deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.Schema.VideoDataItem do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :gcs_uri, 1, type: :string, json_name: "gcsUri", deprecated: false
  field :mime_type, 2, type: :string, json_name: "mimeType", deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.Schema.TextDataItem do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :gcs_uri, 1, type: :string, json_name: "gcsUri", deprecated: false
end