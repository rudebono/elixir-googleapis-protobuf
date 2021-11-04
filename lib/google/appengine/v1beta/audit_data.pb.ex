defmodule Google.Appengine.V1beta.AuditData do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          method:
            {:update_service, Google.Appengine.V1beta.UpdateServiceMethod.t() | nil}
            | {:create_version, Google.Appengine.V1beta.CreateVersionMethod.t() | nil}
        }

  defstruct [:method]

  oneof :method, 0

  field :update_service, 1,
    type: Google.Appengine.V1beta.UpdateServiceMethod,
    json_name: "updateService",
    oneof: 0

  field :create_version, 2,
    type: Google.Appengine.V1beta.CreateVersionMethod,
    json_name: "createVersion",
    oneof: 0

  def transform_module(), do: nil
end

defmodule Google.Appengine.V1beta.UpdateServiceMethod do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          request: Google.Appengine.V1beta.UpdateServiceRequest.t() | nil
        }

  defstruct [:request]

  field :request, 1, type: Google.Appengine.V1beta.UpdateServiceRequest

  def transform_module(), do: nil
end

defmodule Google.Appengine.V1beta.CreateVersionMethod do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          request: Google.Appengine.V1beta.CreateVersionRequest.t() | nil
        }

  defstruct [:request]

  field :request, 1, type: Google.Appengine.V1beta.CreateVersionRequest

  def transform_module(), do: nil
end
