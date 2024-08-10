defmodule Google.Cloud.Aiplatform.V1beta1.PrivateServiceConnectConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :enable_private_service_connect, 1,
    type: :bool,
    json_name: "enablePrivateServiceConnect",
    deprecated: false

  field :project_allowlist, 2, repeated: true, type: :string, json_name: "projectAllowlist"
  field :service_attachment, 5, type: :string, json_name: "serviceAttachment", deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.PscAutomatedEndpoints do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :project_id, 1, type: :string, json_name: "projectId"
  field :network, 2, type: :string
  field :match_address, 3, type: :string, json_name: "matchAddress"
end

defmodule Google.Cloud.Aiplatform.V1beta1.PscInterfaceConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :network_attachment, 1, type: :string, json_name: "networkAttachment", deprecated: false
end