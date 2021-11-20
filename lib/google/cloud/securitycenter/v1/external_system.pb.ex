defmodule Google.Cloud.Securitycenter.V1.ExternalSystem do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          assignees: [String.t()],
          external_uid: String.t(),
          status: String.t(),
          external_system_update_time: Google.Protobuf.Timestamp.t() | nil
        }

  defstruct [:name, :assignees, :external_uid, :status, :external_system_update_time]

  field :name, 1, type: :string
  field :assignees, 2, repeated: true, type: :string
  field :external_uid, 3, type: :string, json_name: "externalUid"
  field :status, 4, type: :string

  field :external_system_update_time, 5,
    type: Google.Protobuf.Timestamp,
    json_name: "externalSystemUpdateTime"

  def transform_module(), do: nil
end
