defmodule Google.Appengine.V1beta.AuditData do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  oneof :method, 0

  field :update_service, 1,
    type: Google.Appengine.V1beta.UpdateServiceMethod,
    json_name: "updateService",
    oneof: 0

  field :create_version, 2,
    type: Google.Appengine.V1beta.CreateVersionMethod,
    json_name: "createVersion",
    oneof: 0
end

defmodule Google.Appengine.V1beta.UpdateServiceMethod do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :request, 1, type: Google.Appengine.V1beta.UpdateServiceRequest
end

defmodule Google.Appengine.V1beta.CreateVersionMethod do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :request, 1, type: Google.Appengine.V1beta.CreateVersionRequest
end