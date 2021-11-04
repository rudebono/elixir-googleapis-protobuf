defmodule Google.Cloud.Metastore.Logging.V1.RequestsLogEntry do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          message: String.t()
        }

  defstruct [:message]

  field :message, 1, type: :string

  def transform_module(), do: nil
end

defmodule Google.Cloud.Metastore.Logging.V1.SystemActivityLogEntry do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          message: String.t()
        }

  defstruct [:message]

  field :message, 1, type: :string

  def transform_module(), do: nil
end
