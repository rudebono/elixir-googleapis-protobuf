defmodule Google.Cloud.Financialservices.V1.Instance.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :CREATING, 1
  field :ACTIVE, 2
  field :UPDATING, 3
  field :DELETING, 4
end

defmodule Google.Cloud.Financialservices.V1.ImportRegisteredPartiesRequest.UpdateMode do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :UPDATE_MODE_UNSPECIFIED, 0
  field :REPLACE, 1
  field :APPEND, 2
end

defmodule Google.Cloud.Financialservices.V1.Instance.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Financialservices.V1.Instance do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

  field :create_time, 2,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 3,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :state, 4,
    type: Google.Cloud.Financialservices.V1.Instance.State,
    enum: true,
    deprecated: false

  field :labels, 5,
    repeated: true,
    type: Google.Cloud.Financialservices.V1.Instance.LabelsEntry,
    map: true

  field :kms_key, 6, type: :string, json_name: "kmsKey", deprecated: false
end

defmodule Google.Cloud.Financialservices.V1.ListInstancesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :filter, 4, type: :string
  field :order_by, 5, type: :string, json_name: "orderBy"
end

defmodule Google.Cloud.Financialservices.V1.ListInstancesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :instances, 1, repeated: true, type: Google.Cloud.Financialservices.V1.Instance
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end

defmodule Google.Cloud.Financialservices.V1.GetInstanceRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Financialservices.V1.CreateInstanceRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :instance_id, 2, type: :string, json_name: "instanceId", deprecated: false
  field :instance, 3, type: Google.Cloud.Financialservices.V1.Instance, deprecated: false
  field :request_id, 4, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Financialservices.V1.UpdateInstanceRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :update_mask, 1,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false

  field :instance, 2, type: Google.Cloud.Financialservices.V1.Instance, deprecated: false
  field :request_id, 3, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Financialservices.V1.DeleteInstanceRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :request_id, 2, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Financialservices.V1.ImportRegisteredPartiesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

  field :party_tables, 2,
    repeated: true,
    type: :string,
    json_name: "partyTables",
    deprecated: false

  field :mode, 3,
    type: Google.Cloud.Financialservices.V1.ImportRegisteredPartiesRequest.UpdateMode,
    enum: true,
    deprecated: false

  field :validate_only, 4, type: :bool, json_name: "validateOnly", deprecated: false

  field :line_of_business, 5,
    type: Google.Cloud.Financialservices.V1.LineOfBusiness,
    json_name: "lineOfBusiness",
    enum: true,
    deprecated: false
end

defmodule Google.Cloud.Financialservices.V1.ImportRegisteredPartiesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parties_added, 1, type: :int64, json_name: "partiesAdded"
  field :parties_removed, 2, type: :int64, json_name: "partiesRemoved"
  field :parties_total, 3, type: :int64, json_name: "partiesTotal"
  field :parties_failed_to_remove, 4, type: :int64, json_name: "partiesFailedToRemove"
  field :parties_uptiered, 5, type: :int64, json_name: "partiesUptiered"
  field :parties_downtiered, 6, type: :int64, json_name: "partiesDowntiered"
  field :parties_failed_to_downtier, 7, type: :int64, json_name: "partiesFailedToDowntier"
end

defmodule Google.Cloud.Financialservices.V1.ExportRegisteredPartiesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

  field :dataset, 2,
    type: Google.Cloud.Financialservices.V1.BigQueryDestination,
    deprecated: false

  field :line_of_business, 3,
    type: Google.Cloud.Financialservices.V1.LineOfBusiness,
    json_name: "lineOfBusiness",
    enum: true,
    deprecated: false
end

defmodule Google.Cloud.Financialservices.V1.ExportRegisteredPartiesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3
end
