defmodule Google.Cloud.Deploy.V1.CustomTargetTypeNotificationEvent do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :message, 1, type: :string
  field :custom_target_type_uid, 4, type: :string, json_name: "customTargetTypeUid"
  field :custom_target_type, 2, type: :string, json_name: "customTargetType"
  field :type, 3, type: Google.Cloud.Deploy.V1.Type, enum: true
end
