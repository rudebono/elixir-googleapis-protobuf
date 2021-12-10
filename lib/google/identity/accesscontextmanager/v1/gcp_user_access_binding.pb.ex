defmodule Google.Identity.Accesscontextmanager.V1.GcpUserAccessBinding do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          group_key: String.t(),
          access_levels: [String.t()]
        }

  defstruct name: "",
            group_key: "",
            access_levels: []

  field :name, 1, type: :string, deprecated: false
  field :group_key, 2, type: :string, json_name: "groupKey", deprecated: false

  field :access_levels, 3,
    repeated: true,
    type: :string,
    json_name: "accessLevels",
    deprecated: false
end
