defmodule Google.Actions.Sdk.V2.Files do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          file_type:
            {:config_files, Google.Actions.Sdk.V2.ConfigFiles.t() | nil}
            | {:data_files, Google.Actions.Sdk.V2.DataFiles.t() | nil}
        }

  defstruct [:file_type]

  oneof :file_type, 0

  field :config_files, 1,
    type: Google.Actions.Sdk.V2.ConfigFiles,
    json_name: "configFiles",
    oneof: 0

  field :data_files, 2, type: Google.Actions.Sdk.V2.DataFiles, json_name: "dataFiles", oneof: 0

  def transform_module(), do: nil
end
