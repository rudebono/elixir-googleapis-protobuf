defmodule Google.Cloud.Datacatalog.V1beta1.GcsFilesetSpec do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :file_patterns, 1,
    repeated: true,
    type: :string,
    json_name: "filePatterns",
    deprecated: false

  field :sample_gcs_file_specs, 2,
    repeated: true,
    type: Google.Cloud.Datacatalog.V1beta1.GcsFileSpec,
    json_name: "sampleGcsFileSpecs",
    deprecated: false
end

defmodule Google.Cloud.Datacatalog.V1beta1.GcsFileSpec do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :file_path, 1, type: :string, json_name: "filePath", deprecated: false

  field :gcs_timestamps, 2,
    type: Google.Cloud.Datacatalog.V1beta1.SystemTimestamps,
    json_name: "gcsTimestamps",
    deprecated: false

  field :size_bytes, 4, type: :int64, json_name: "sizeBytes", deprecated: false
end
