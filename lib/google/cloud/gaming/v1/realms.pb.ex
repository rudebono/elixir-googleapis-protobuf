defmodule Google.Cloud.Gaming.V1.ListRealmsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
  field :filter, 4, type: :string, deprecated: false
  field :order_by, 5, type: :string, json_name: "orderBy", deprecated: false
end

defmodule Google.Cloud.Gaming.V1.ListRealmsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :realms, 1, repeated: true, type: Google.Cloud.Gaming.V1.Realm
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end

defmodule Google.Cloud.Gaming.V1.GetRealmRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Gaming.V1.CreateRealmRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :realm_id, 2, type: :string, json_name: "realmId", deprecated: false
  field :realm, 3, type: Google.Cloud.Gaming.V1.Realm, deprecated: false
end

defmodule Google.Cloud.Gaming.V1.DeleteRealmRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Gaming.V1.UpdateRealmRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :realm, 1, type: Google.Cloud.Gaming.V1.Realm, deprecated: false

  field :update_mask, 2,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false
end

defmodule Google.Cloud.Gaming.V1.PreviewRealmUpdateRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :realm, 1, type: Google.Cloud.Gaming.V1.Realm, deprecated: false

  field :update_mask, 2,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false

  field :preview_time, 3,
    type: Google.Protobuf.Timestamp,
    json_name: "previewTime",
    deprecated: false
end

defmodule Google.Cloud.Gaming.V1.PreviewRealmUpdateResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :etag, 2, type: :string
  field :target_state, 3, type: Google.Cloud.Gaming.V1.TargetState, json_name: "targetState"
end

defmodule Google.Cloud.Gaming.V1.Realm.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Gaming.V1.Realm do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string

  field :create_time, 2,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 3,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :labels, 4, repeated: true, type: Google.Cloud.Gaming.V1.Realm.LabelsEntry, map: true
  field :time_zone, 6, type: :string, json_name: "timeZone", deprecated: false
  field :etag, 7, type: :string
  field :description, 8, type: :string
end