defmodule Google.Cloud.Connectors.V1.RuntimeConfig.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :INACTIVE, 1
  field :ACTIVATING, 2
  field :ACTIVE, 3
  field :CREATING, 4
  field :DELETING, 5
  field :UPDATING, 6
end

defmodule Google.Cloud.Connectors.V1.GetRuntimeConfigRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Connectors.V1.RuntimeConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :location_id, 1, type: :string, json_name: "locationId", deprecated: false
  field :connd_topic, 2, type: :string, json_name: "conndTopic", deprecated: false
  field :connd_subscription, 3, type: :string, json_name: "conndSubscription", deprecated: false
  field :control_plane_topic, 4, type: :string, json_name: "controlPlaneTopic", deprecated: false

  field :control_plane_subscription, 5,
    type: :string,
    json_name: "controlPlaneSubscription",
    deprecated: false

  field :runtime_endpoint, 6, type: :string, json_name: "runtimeEndpoint", deprecated: false

  field :state, 7,
    type: Google.Cloud.Connectors.V1.RuntimeConfig.State,
    enum: true,
    deprecated: false

  field :schema_gcs_bucket, 8, type: :string, json_name: "schemaGcsBucket", deprecated: false
  field :service_directory, 9, type: :string, json_name: "serviceDirectory", deprecated: false
  field :name, 11, type: :string, deprecated: false
end
