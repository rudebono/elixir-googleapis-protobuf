defmodule Google.Actions.Sdk.V2.DataFiles do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          data_files: [Google.Actions.Sdk.V2.DataFile.t()]
        }

  defstruct [:data_files]

  field :data_files, 1,
    repeated: true,
    type: Google.Actions.Sdk.V2.DataFile,
    json_name: "dataFiles"

  def transform_module(), do: nil
end

defmodule Google.Actions.Sdk.V2.DataFile do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          file_path: String.t(),
          content_type: String.t(),
          payload: binary
        }

  defstruct [:file_path, :content_type, :payload]

  field :file_path, 1, type: :string, json_name: "filePath"
  field :content_type, 2, type: :string, json_name: "contentType"
  field :payload, 3, type: :bytes

  def transform_module(), do: nil
end
