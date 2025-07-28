defmodule Grafeas.V1beta1.Deployment.Deployment.Platform do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :PLATFORM_UNSPECIFIED, 0
  field :GKE, 1
  field :FLEX, 2
  field :CUSTOM, 3
end

defmodule Grafeas.V1beta1.Deployment.Deployable do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :resource_uri, 1, repeated: true, type: :string, json_name: "resourceUri"
end

defmodule Grafeas.V1beta1.Deployment.Details do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :deployment, 1, type: Grafeas.V1beta1.Deployment.Deployment
end

defmodule Grafeas.V1beta1.Deployment.Deployment do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :user_email, 1, type: :string, json_name: "userEmail"
  field :deploy_time, 2, type: Google.Protobuf.Timestamp, json_name: "deployTime"
  field :undeploy_time, 3, type: Google.Protobuf.Timestamp, json_name: "undeployTime"
  field :config, 4, type: :string
  field :address, 5, type: :string
  field :resource_uri, 6, repeated: true, type: :string, json_name: "resourceUri"
  field :platform, 7, type: Grafeas.V1beta1.Deployment.Deployment.Platform, enum: true
end
