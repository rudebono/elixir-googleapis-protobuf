defmodule Google.Apps.Drive.Labels.V2beta.UserCapabilities do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

  field :can_access_label_manager, 2,
    type: :bool,
    json_name: "canAccessLabelManager",
    deprecated: false

  field :can_administrate_labels, 3,
    type: :bool,
    json_name: "canAdministrateLabels",
    deprecated: false

  field :can_create_shared_labels, 4,
    type: :bool,
    json_name: "canCreateSharedLabels",
    deprecated: false

  field :can_create_admin_labels, 5,
    type: :bool,
    json_name: "canCreateAdminLabels",
    deprecated: false
end