defmodule Google.Appengine.V1beta.AuditData do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          method: {atom, any}
        }

  defstruct [:method]

  oneof :method, 0
  field :update_service, 1, type: Google.Appengine.V1beta.UpdateServiceMethod, oneof: 0
  field :create_version, 2, type: Google.Appengine.V1beta.CreateVersionMethod, oneof: 0
end

defmodule Google.Appengine.V1beta.UpdateServiceMethod do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          request: Google.Appengine.V1beta.UpdateServiceRequest.t() | nil
        }

  defstruct [:request]

  field :request, 1, type: Google.Appengine.V1beta.UpdateServiceRequest
end

defmodule Google.Appengine.V1beta.CreateVersionMethod do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          request: Google.Appengine.V1beta.CreateVersionRequest.t() | nil
        }

  defstruct [:request]

  field :request, 1, type: Google.Appengine.V1beta.CreateVersionRequest
end
