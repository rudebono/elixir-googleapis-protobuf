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

  defstruct [
    :name,
    :display_name,
    :description,
    :filter,
    :create_time,
    :update_time,
    :most_recent_editor
  ]

  field :name, 1, type: :string
  field :display_name, 2, type: :string, deprecated: true, json_name: "displayName"
  field :description, 3, type: :string
  field :filter, 4, type: :string
  field :create_time, 5, type: Google.Protobuf.Timestamp, json_name: "createTime"
  field :update_time, 6, type: Google.Protobuf.Timestamp, json_name: "updateTime"
  field :most_recent_editor, 7, type: :string, json_name: "mostRecentEditor"

  def transform_module(), do: nil
end
