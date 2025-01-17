defmodule Google.Cloud.Securitycenter.V2.NotificationMessage do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  oneof :event, 0

  field :notification_config_name, 1, type: :string, json_name: "notificationConfigName"
  field :finding, 2, type: Google.Cloud.Securitycenter.V2.Finding, oneof: 0
  field :resource, 3, type: Google.Cloud.Securitycenter.V2.Resource
end
