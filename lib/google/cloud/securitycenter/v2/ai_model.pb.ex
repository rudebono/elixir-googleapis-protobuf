defmodule Google.Cloud.Securitycenter.V2.AiModel.DeploymentPlatform do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :DEPLOYMENT_PLATFORM_UNSPECIFIED, 0
  field :VERTEX_AI, 1
  field :GKE, 2
end

defmodule Google.Cloud.Securitycenter.V2.AiModel do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string
  field :domain, 2, type: :string
  field :library, 3, type: :string
  field :location, 4, type: :string
  field :publisher, 5, type: :string

  field :deployment_platform, 6,
    type: Google.Cloud.Securitycenter.V2.AiModel.DeploymentPlatform,
    json_name: "deploymentPlatform",
    enum: true

  field :display_name, 7, type: :string, json_name: "displayName"
end
