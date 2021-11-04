defmodule Google.Cloud.Datacatalog.V1.GcsFilesetSpec do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          file_patterns: [String.t()],
          sample_gcs_file_specs: [Google.Cloud.Datacatalog.V1.GcsFileSpec.t()]
        }

  defstruct [:file_patterns, :sample_gcs_file_specs]

  field :file_patterns, 1, repeated: true, type: :string, json_name: "filePatterns"

  field :sample_gcs_file_specs, 2,
    repeated: true,
    type: Google.Cloud.Datacatalog.V1.GcsFileSpec,
    json_name: "sampleGcsFileSpecs"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Datacatalog.V1.GcsFileSpec do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          file_path: String.t(),
          gcs_timestamps: Google.Cloud.Datacatalog.V1.SystemTimestamps.t() | nil,
          size_bytes: integer
        }

  defstruct [:file_path, :gcs_timestamps, :size_bytes]

  field :file_path, 1, type: :string, json_name: "filePath"

  field :gcs_timestamps, 2,
    type: Google.Cloud.Datacatalog.V1.SystemTimestamps,
    json_name: "gcsTimestamps"

  field :size_bytes, 4, type: :int64, json_name: "sizeBytes"

  def transform_module(), do: nil
end
