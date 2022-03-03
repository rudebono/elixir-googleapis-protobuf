defmodule Google.Cloud.Securitycenter.V1.BigQueryExport do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          description: String.t(),
          filter: String.t(),
          dataset: String.t(),
          create_time: Google.Protobuf.Timestamp.t() | nil,
          update_time: Google.Protobuf.Timestamp.t() | nil,
          most_recent_editor: String.t(),
          principal: String.t()
        }

  defstruct name: "",
            description: "",
            filter: "",
            dataset: "",
            create_time: nil,
            update_time: nil,
            most_recent_editor: "",
            principal: ""

  field :name, 1, type: :string
  field :description, 2, type: :string
  field :filter, 3, type: :string
  field :dataset, 4, type: :string

  field :create_time, 5,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 6,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :most_recent_editor, 7, type: :string, json_name: "mostRecentEditor", deprecated: false
  field :principal, 8, type: :string, deprecated: false
end
