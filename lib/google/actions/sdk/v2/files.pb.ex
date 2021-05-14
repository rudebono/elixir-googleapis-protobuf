defmodule Google.Actions.Sdk.V2.Files do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          file_type: {atom, any}
        }

  defstruct [:file_type]

  oneof :file_type, 0
  field :config_files, 1, type: Google.Actions.Sdk.V2.ConfigFiles, oneof: 0
  field :data_files, 2, type: Google.Actions.Sdk.V2.DataFiles, oneof: 0
end
