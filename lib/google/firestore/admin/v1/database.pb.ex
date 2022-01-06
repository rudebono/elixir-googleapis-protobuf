defmodule Google.Firestore.Admin.V1.Database.DatabaseType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :DATABASE_TYPE_UNSPECIFIED | :FIRESTORE_NATIVE | :DATASTORE_MODE

  field :DATABASE_TYPE_UNSPECIFIED, 0
  field :FIRESTORE_NATIVE, 1
  field :DATASTORE_MODE, 2
end
defmodule Google.Firestore.Admin.V1.Database.ConcurrencyMode do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :CONCURRENCY_MODE_UNSPECIFIED
          | :OPTIMISTIC
          | :PESSIMISTIC
          | :OPTIMISTIC_WITH_ENTITY_GROUPS

  field :CONCURRENCY_MODE_UNSPECIFIED, 0
  field :OPTIMISTIC, 1
  field :PESSIMISTIC, 2
  field :OPTIMISTIC_WITH_ENTITY_GROUPS, 3
end
defmodule Google.Firestore.Admin.V1.Database do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          location_id: String.t(),
          type: Google.Firestore.Admin.V1.Database.DatabaseType.t(),
          concurrency_mode: Google.Firestore.Admin.V1.Database.ConcurrencyMode.t(),
          etag: String.t()
        }

  defstruct name: "",
            location_id: "",
            type: :DATABASE_TYPE_UNSPECIFIED,
            concurrency_mode: :CONCURRENCY_MODE_UNSPECIFIED,
            etag: ""

  field :name, 1, type: :string
  field :location_id, 9, type: :string, json_name: "locationId"
  field :type, 10, type: Google.Firestore.Admin.V1.Database.DatabaseType, enum: true

  field :concurrency_mode, 15,
    type: Google.Firestore.Admin.V1.Database.ConcurrencyMode,
    json_name: "concurrencyMode",
    enum: true

  field :etag, 99, type: :string
end
