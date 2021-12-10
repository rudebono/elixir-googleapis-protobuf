defmodule Google.Cloud.Securitycenter.V1.MuteConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          display_name: String.t(),
          description: String.t(),
          filter: String.t(),
          create_time: Google.Protobuf.Timestamp.t() | nil,
          update_time: Google.Protobuf.Timestamp.t() | nil,
          most_recent_editor: String.t()
        }

  defstruct name: "",
            display_name: "",
            description: "",
            filter: "",
            create_time: nil,
            update_time: nil,
            most_recent_editor: ""

  field :name, 1, type: :string
  field :display_name, 2, type: :string, json_name: "displayName", deprecated: true
  field :description, 3, type: :string
  field :filter, 4, type: :string, deprecated: false

  field :create_time, 5,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 6,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :most_recent_editor, 7, type: :string, json_name: "mostRecentEditor", deprecated: false
end
