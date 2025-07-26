defmodule Google.Cloud.Securitycenter.V1.NotificationMessage do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :event, 0

  field :notification_config_name, 1, type: :string, json_name: "notificationConfigName"
  field :finding, 2, type: Google.Cloud.Securitycenter.V1.Finding, oneof: 0
  field :resource, 3, type: Google.Cloud.Securitycenter.V1.Resource
end
