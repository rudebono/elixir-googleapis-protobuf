defmodule Google.Devtools.Resultstore.V2.FileSet.Id do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          invocation_id: String.t(),
          file_set_id: String.t()
        }

  defstruct [:invocation_id, :file_set_id]

  field :invocation_id, 1, type: :string, json_name: "invocationId"
  field :file_set_id, 2, type: :string, json_name: "fileSetId"

  def transform_module(), do: nil
end

defmodule Google.Devtools.Resultstore.V2.FileSet do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          id: Google.Devtools.Resultstore.V2.FileSet.Id.t() | nil,
          file_sets: [String.t()],
          files: [Google.Devtools.Resultstore.V2.File.t()]
        }

  defstruct [:name, :id, :file_sets, :files]

  field :name, 1, type: :string
  field :id, 2, type: Google.Devtools.Resultstore.V2.FileSet.Id
  field :file_sets, 3, repeated: true, type: :string, json_name: "fileSets"
  field :files, 4, repeated: true, type: Google.Devtools.Resultstore.V2.File

  def transform_module(), do: nil
end
