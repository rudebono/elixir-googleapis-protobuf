defmodule Grafeas.V1.DeploymentOccurrence.Platform do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :PLATFORM_UNSPECIFIED | :GKE | :FLEX | :CUSTOM

  field :PLATFORM_UNSPECIFIED, 0
  field :GKE, 1
  field :FLEX, 2
  field :CUSTOM, 3
end
defmodule Grafeas.V1.DeploymentNote do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_uri: [String.t()]
        }

  defstruct resource_uri: []

  field :resource_uri, 1, repeated: true, type: :string, json_name: "resourceUri"
end
defmodule Grafeas.V1.DeploymentOccurrence do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          user_email: String.t(),
          deploy_time: Google.Protobuf.Timestamp.t() | nil,
          undeploy_time: Google.Protobuf.Timestamp.t() | nil,
          config: String.t(),
          address: String.t(),
          resource_uri: [String.t()],
          platform: Grafeas.V1.DeploymentOccurrence.Platform.t()
        }

  defstruct user_email: "",
            deploy_time: nil,
            undeploy_time: nil,
            config: "",
            address: "",
            resource_uri: [],
            platform: :PLATFORM_UNSPECIFIED

  field :user_email, 1, type: :string, json_name: "userEmail"
  field :deploy_time, 2, type: Google.Protobuf.Timestamp, json_name: "deployTime"
  field :undeploy_time, 3, type: Google.Protobuf.Timestamp, json_name: "undeployTime"
  field :config, 4, type: :string
  field :address, 5, type: :string
  field :resource_uri, 6, repeated: true, type: :string, json_name: "resourceUri"
  field :platform, 7, type: Grafeas.V1.DeploymentOccurrence.Platform, enum: true
end
