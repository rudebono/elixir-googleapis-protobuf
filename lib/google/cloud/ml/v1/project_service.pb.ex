defmodule Google.Cloud.Ml.V1.GetConfigRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Cloud.Ml.V1.GetConfigResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          service_account: String.t(),
          service_account_project: integer
        }

  defstruct [:service_account, :service_account_project]

  field :service_account, 1, type: :string
  field :service_account_project, 2, type: :int64
end
