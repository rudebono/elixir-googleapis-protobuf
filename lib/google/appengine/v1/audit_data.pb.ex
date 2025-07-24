defmodule Google.Appengine.V1.AuditData do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

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

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :request, 1, type: Google.Appengine.V1.UpdateServiceRequest
end

defmodule Google.Appengine.V1.CreateVersionMethod do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :request, 1, type: Google.Appengine.V1.CreateVersionRequest
end
