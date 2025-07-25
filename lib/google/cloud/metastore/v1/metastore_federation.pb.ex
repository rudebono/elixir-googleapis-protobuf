defmodule Google.Cloud.Metastore.V1.Federation.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :CREATING, 1
  field :ACTIVE, 2
  field :UPDATING, 3
  field :DELETING, 4
  field :ERROR, 5
end

defmodule Google.Cloud.Metastore.V1.BackendMetastore.MetastoreType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :METASTORE_TYPE_UNSPECIFIED, 0
  field :BIGQUERY, 2
  field :DATAPROC_METASTORE, 3
end

defmodule Google.Cloud.Metastore.V1.Federation.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Metastore.V1.Federation.BackendMetastoresEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :key, 1, type: :int32
  field :value, 2, type: Google.Cloud.Metastore.V1.BackendMetastore
end

defmodule Google.Cloud.Metastore.V1.Federation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

  field :create_time, 2,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 3,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :labels, 4,
    repeated: true,
    type: Google.Cloud.Metastore.V1.Federation.LabelsEntry,
    map: true

  field :version, 5, type: :string, deprecated: false

  field :backend_metastores, 6,
    repeated: true,
    type: Google.Cloud.Metastore.V1.Federation.BackendMetastoresEntry,
    json_name: "backendMetastores",
    map: true

  field :endpoint_uri, 7, type: :string, json_name: "endpointUri", deprecated: false
  field :state, 8, type: Google.Cloud.Metastore.V1.Federation.State, enum: true, deprecated: false
  field :state_message, 9, type: :string, json_name: "stateMessage", deprecated: false
  field :uid, 10, type: :string, deprecated: false
end

defmodule Google.Cloud.Metastore.V1.BackendMetastore do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string

  field :metastore_type, 2,
    type: Google.Cloud.Metastore.V1.BackendMetastore.MetastoreType,
    json_name: "metastoreType",
    enum: true
end

defmodule Google.Cloud.Metastore.V1.ListFederationsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
  field :filter, 4, type: :string, deprecated: false
  field :order_by, 5, type: :string, json_name: "orderBy", deprecated: false
end

defmodule Google.Cloud.Metastore.V1.ListFederationsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :federations, 1, repeated: true, type: Google.Cloud.Metastore.V1.Federation
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end

defmodule Google.Cloud.Metastore.V1.GetFederationRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Metastore.V1.CreateFederationRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :federation_id, 2, type: :string, json_name: "federationId", deprecated: false
  field :federation, 3, type: Google.Cloud.Metastore.V1.Federation, deprecated: false
  field :request_id, 4, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Metastore.V1.UpdateFederationRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :update_mask, 1,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false

  field :federation, 2, type: Google.Cloud.Metastore.V1.Federation, deprecated: false
  field :request_id, 3, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Metastore.V1.DeleteFederationRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :request_id, 2, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Metastore.V1.DataprocMetastoreFederation.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.metastore.v1.DataprocMetastoreFederation",
    protoc_gen_elixir_version: "0.15.0"

  rpc :ListFederations,
      Google.Cloud.Metastore.V1.ListFederationsRequest,
      Google.Cloud.Metastore.V1.ListFederationsResponse

  rpc :GetFederation,
      Google.Cloud.Metastore.V1.GetFederationRequest,
      Google.Cloud.Metastore.V1.Federation

  rpc :CreateFederation,
      Google.Cloud.Metastore.V1.CreateFederationRequest,
      Google.Longrunning.Operation

  rpc :UpdateFederation,
      Google.Cloud.Metastore.V1.UpdateFederationRequest,
      Google.Longrunning.Operation

  rpc :DeleteFederation,
      Google.Cloud.Metastore.V1.DeleteFederationRequest,
      Google.Longrunning.Operation
end

defmodule Google.Cloud.Metastore.V1.DataprocMetastoreFederation.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Metastore.V1.DataprocMetastoreFederation.Service
end
