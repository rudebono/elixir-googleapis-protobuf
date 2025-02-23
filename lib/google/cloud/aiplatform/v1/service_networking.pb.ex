defmodule Google.Cloud.Aiplatform.V1.PSCAutomationConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :project_id, 1, type: :string, json_name: "projectId", deprecated: false
  field :network, 2, type: :string, deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1.PrivateServiceConnectConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :enable_private_service_connect, 1,
    type: :bool,
    json_name: "enablePrivateServiceConnect",
    deprecated: false

  field :project_allowlist, 2, repeated: true, type: :string, json_name: "projectAllowlist"
  field :service_attachment, 5, type: :string, json_name: "serviceAttachment", deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1.PscAutomatedEndpoints do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :project_id, 1, type: :string, json_name: "projectId"
  field :network, 2, type: :string
  field :match_address, 3, type: :string, json_name: "matchAddress"
end
