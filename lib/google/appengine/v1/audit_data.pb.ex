defmodule Google.Appengine.V1.AuditData do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          method:
            {:update_service, Google.Appengine.V1.UpdateServiceMethod.t() | nil}
            | {:create_version, Google.Appengine.V1.CreateVersionMethod.t() | nil}
        }

  defstruct method: nil

  oneof :method, 0

  field :update_service, 1,
    type: Google.Appengine.V1.UpdateServiceMethod,
    json_name: "updateService",
    oneof: 0

  field :create_version, 2,
    type: Google.Appengine.V1.CreateVersionMethod,
    json_name: "createVersion",
    oneof: 0
end
defmodule Google.Appengine.V1.UpdateServiceMethod do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          request: Google.Appengine.V1.UpdateServiceRequest.t() | nil
        }

  defstruct request: nil

  field :request, 1, type: Google.Appengine.V1.UpdateServiceRequest
end
defmodule Google.Appengine.V1.CreateVersionMethod do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          request: Google.Appengine.V1.CreateVersionRequest.t() | nil
        }

  defstruct request: nil

  field :request, 1, type: Google.Appengine.V1.CreateVersionRequest
end
