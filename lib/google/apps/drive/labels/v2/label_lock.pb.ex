defmodule Google.Apps.Drive.Labels.V2.LabelLock.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :ACTIVE, 1
  field :DELETING, 2
end

defmodule Google.Apps.Drive.Labels.V2.LabelLock.Capabilities do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :can_view_policy, 1, type: :bool, json_name: "canViewPolicy"
end

defmodule Google.Apps.Drive.Labels.V2.LabelLock do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :field_id, 2, type: :string, json_name: "fieldId"
  field :choice_id, 3, type: :string, json_name: "choiceId"

  field :create_time, 4,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :creator, 5, type: Google.Apps.Drive.Labels.V2.UserInfo, deprecated: false

  field :delete_time, 6,
    type: Google.Protobuf.Timestamp,
    json_name: "deleteTime",
    deprecated: false

  field :capabilities, 8,
    type: Google.Apps.Drive.Labels.V2.LabelLock.Capabilities,
    deprecated: false

  field :state, 9,
    type: Google.Apps.Drive.Labels.V2.LabelLock.State,
    enum: true,
    deprecated: false
end
