defmodule Google.Devtools.Clouderrorreporting.V1beta1.GetGroupRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :group_name, 1, type: :string, json_name: "groupName", deprecated: false
end

defmodule Google.Devtools.Clouderrorreporting.V1beta1.UpdateGroupRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :group, 1, type: Google.Devtools.Clouderrorreporting.V1beta1.ErrorGroup, deprecated: false
end

defmodule Google.Devtools.Clouderrorreporting.V1beta1.ErrorGroupService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.devtools.clouderrorreporting.v1beta1.ErrorGroupService",
    protoc_gen_elixir_version: "0.14.0"

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
