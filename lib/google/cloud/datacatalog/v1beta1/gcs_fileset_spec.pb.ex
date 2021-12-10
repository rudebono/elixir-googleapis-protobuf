defmodule Google.Cloud.Datacatalog.V1beta1.GcsFilesetSpec do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          file_patterns: [String.t()],
          sample_gcs_file_specs: [Google.Cloud.Datacatalog.V1beta1.GcsFileSpec.t()]
        }

  defstruct file_patterns: [],
            sample_gcs_file_specs: []

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
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          file_path: String.t(),
          gcs_timestamps: Google.Cloud.Datacatalog.V1beta1.SystemTimestamps.t() | nil,
          size_bytes: integer
        }

  defstruct file_path: "",
            gcs_timestamps: nil,
            size_bytes: 0

  field :file_path, 1, type: :string, json_name: "filePath", deprecated: false

  field :gcs_timestamps, 2,
    type: Google.Cloud.Datacatalog.V1beta1.SystemTimestamps,
    json_name: "gcsTimestamps",
    deprecated: false

  field :size_bytes, 4, type: :int64, json_name: "sizeBytes", deprecated: false
end
