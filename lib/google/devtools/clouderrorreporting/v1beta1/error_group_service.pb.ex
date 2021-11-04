defmodule Google.Devtools.Clouderrorreporting.V1beta1.GetGroupRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          group_name: String.t()
        }

  defstruct [:group_name]

  field :group_name, 1, type: :string, json_name: "groupName"

  def transform_module(), do: nil
end

defmodule Google.Devtools.Clouderrorreporting.V1beta1.UpdateGroupRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          group: Google.Devtools.Clouderrorreporting.V1beta1.ErrorGroup.t() | nil
        }

  defstruct [:group]

  field :group, 1, type: Google.Devtools.Clouderrorreporting.V1beta1.ErrorGroup

  def transform_module(), do: nil
end

defmodule Google.Devtools.Clouderrorreporting.V1beta1.ErrorGroupService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.devtools.clouderrorreporting.v1beta1.ErrorGroupService"

  rpc :GetGroup,
      Google.Devtools.Clouderrorreporting.V1beta1.GetGroupRequest,
      Google.Devtools.Clouderrorreporting.V1beta1.ErrorGroup

  rpc :UpdateGroup,
      Google.Devtools.Clouderrorreporting.V1beta1.UpdateGroupRequest,
      Google.Devtools.Clouderrorreporting.V1beta1.ErrorGroup
end

defmodule Google.Devtools.Clouderrorreporting.V1beta1.ErrorGroupService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Devtools.Clouderrorreporting.V1beta1.ErrorGroupService.Service
end
