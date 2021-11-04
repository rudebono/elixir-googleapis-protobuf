defmodule Grafeas.V1beta1.Deployment.Deployment.Platform do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :PLATFORM_UNSPECIFIED | :GKE | :FLEX | :CUSTOM

  field :PLATFORM_UNSPECIFIED, 0
  field :GKE, 1
  field :FLEX, 2
  field :CUSTOM, 3
end

defmodule Grafeas.V1beta1.Deployment.Deployable do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_uri: [String.t()]
        }

  defstruct [:resource_uri]

  field :resource_uri, 1, repeated: true, type: :string, json_name: "resourceUri"

  def transform_module(), do: nil
end

defmodule Grafeas.V1beta1.Deployment.Details do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          deployment: Grafeas.V1beta1.Deployment.Deployment.t() | nil
        }

  defstruct [:deployment]

  field :deployment, 1, type: Grafeas.V1beta1.Deployment.Deployment

  def transform_module(), do: nil
end

defmodule Grafeas.V1beta1.Deployment.Deployment do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          user_email: String.t(),
          deploy_time: Google.Protobuf.Timestamp.t() | nil,
          undeploy_time: Google.Protobuf.Timestamp.t() | nil,
          config: String.t(),
          address: String.t(),
          resource_uri: [String.t()],
          platform: Grafeas.V1beta1.Deployment.Deployment.Platform.t()
        }

  defstruct [
    :user_email,
    :deploy_time,
    :undeploy_time,
    :config,
    :address,
    :resource_uri,
    :platform
  ]

  field :user_email, 1, type: :string, json_name: "userEmail"
  field :deploy_time, 2, type: Google.Protobuf.Timestamp, json_name: "deployTime"
  field :undeploy_time, 3, type: Google.Protobuf.Timestamp, json_name: "undeployTime"
  field :config, 4, type: :string
  field :address, 5, type: :string
  field :resource_uri, 6, repeated: true, type: :string, json_name: "resourceUri"
  field :platform, 7, type: Grafeas.V1beta1.Deployment.Deployment.Platform, enum: true

  def transform_module(), do: nil
end
