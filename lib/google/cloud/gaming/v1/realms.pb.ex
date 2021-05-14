defmodule Google.Cloud.Gaming.V1.ListRealmsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          page_size: integer,
          page_token: String.t(),
          filter: String.t(),
          order_by: String.t()
        }

  defstruct [:parent, :page_size, :page_token, :filter, :order_by]

  field :parent, 1, type: :string
  field :page_size, 2, type: :int32
  field :page_token, 3, type: :string
  field :filter, 4, type: :string
  field :order_by, 5, type: :string
end

defmodule Google.Cloud.Gaming.V1.ListRealmsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          realms: [Google.Cloud.Gaming.V1.Realm.t()],
          next_page_token: String.t(),
          unreachable: [String.t()]
        }

  defstruct [:realms, :next_page_token, :unreachable]

  field :realms, 1, repeated: true, type: Google.Cloud.Gaming.V1.Realm
  field :next_page_token, 2, type: :string
  field :unreachable, 3, repeated: true, type: :string
end

defmodule Google.Cloud.Gaming.V1.GetRealmRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Cloud.Gaming.V1.CreateRealmRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          realm_id: String.t(),
          realm: Google.Cloud.Gaming.V1.Realm.t() | nil
        }

  defstruct [:parent, :realm_id, :realm]

  field :parent, 1, type: :string
  field :realm_id, 2, type: :string
  field :realm, 3, type: Google.Cloud.Gaming.V1.Realm
end

defmodule Google.Cloud.Gaming.V1.DeleteRealmRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Cloud.Gaming.V1.UpdateRealmRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          realm: Google.Cloud.Gaming.V1.Realm.t() | nil,
          update_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct [:realm, :update_mask]

  field :realm, 1, type: Google.Cloud.Gaming.V1.Realm
  field :update_mask, 2, type: Google.Protobuf.FieldMask
end

defmodule Google.Cloud.Gaming.V1.PreviewRealmUpdateRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          realm: Google.Cloud.Gaming.V1.Realm.t() | nil,
          update_mask: Google.Protobuf.FieldMask.t() | nil,
          preview_time: Google.Protobuf.Timestamp.t() | nil
        }

  defstruct [:realm, :update_mask, :preview_time]

  field :realm, 1, type: Google.Cloud.Gaming.V1.Realm
  field :update_mask, 2, type: Google.Protobuf.FieldMask
  field :preview_time, 3, type: Google.Protobuf.Timestamp
end

defmodule Google.Cloud.Gaming.V1.PreviewRealmUpdateResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          etag: String.t(),
          target_state: Google.Cloud.Gaming.V1.TargetState.t() | nil
        }

  defstruct [:etag, :target_state]

  field :etag, 2, type: :string
  field :target_state, 3, type: Google.Cloud.Gaming.V1.TargetState
end

defmodule Google.Cloud.Gaming.V1.Realm.LabelsEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: String.t()
        }

  defstruct [:key, :value]

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Gaming.V1.Realm do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          create_time: Google.Protobuf.Timestamp.t() | nil,
          update_time: Google.Protobuf.Timestamp.t() | nil,
          labels: %{String.t() => String.t()},
          time_zone: String.t(),
          etag: String.t(),
          description: String.t()
        }

  defstruct [:name, :create_time, :update_time, :labels, :time_zone, :etag, :description]

  field :name, 1, type: :string
  field :create_time, 2, type: Google.Protobuf.Timestamp
  field :update_time, 3, type: Google.Protobuf.Timestamp
  field :labels, 4, repeated: true, type: Google.Cloud.Gaming.V1.Realm.LabelsEntry, map: true
  field :time_zone, 6, type: :string
  field :etag, 7, type: :string
  field :description, 8, type: :string
end
