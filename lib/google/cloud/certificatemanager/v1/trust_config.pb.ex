defmodule Google.Cloud.Certificatemanager.V1.ListTrustConfigsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :filter, 4, type: :string
  field :order_by, 5, type: :string, json_name: "orderBy"
end

defmodule Google.Cloud.Certificatemanager.V1.ListTrustConfigsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :trust_configs, 1,
    repeated: true,
    type: Google.Cloud.Certificatemanager.V1.TrustConfig,
    json_name: "trustConfigs"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end

defmodule Google.Cloud.Certificatemanager.V1.GetTrustConfigRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Certificatemanager.V1.CreateTrustConfigRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :trust_config_id, 2, type: :string, json_name: "trustConfigId", deprecated: false

  field :trust_config, 3,
    type: Google.Cloud.Certificatemanager.V1.TrustConfig,
    json_name: "trustConfig",
    deprecated: false
end

defmodule Google.Cloud.Certificatemanager.V1.UpdateTrustConfigRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :trust_config, 1,
    type: Google.Cloud.Certificatemanager.V1.TrustConfig,
    json_name: "trustConfig",
    deprecated: false

  field :update_mask, 2,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false
end

defmodule Google.Cloud.Certificatemanager.V1.DeleteTrustConfigRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :etag, 2, type: :string
end

defmodule Google.Cloud.Certificatemanager.V1.TrustConfig.TrustAnchor do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  oneof :kind, 0

  field :pem_certificate, 1, type: :string, json_name: "pemCertificate", oneof: 0
end

defmodule Google.Cloud.Certificatemanager.V1.TrustConfig.IntermediateCA do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  oneof :kind, 0

  field :pem_certificate, 1, type: :string, json_name: "pemCertificate", oneof: 0
end

defmodule Google.Cloud.Certificatemanager.V1.TrustConfig.TrustStore do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :trust_anchors, 1,
    repeated: true,
    type: Google.Cloud.Certificatemanager.V1.TrustConfig.TrustAnchor,
    json_name: "trustAnchors"

  field :intermediate_cas, 2,
    repeated: true,
    type: Google.Cloud.Certificatemanager.V1.TrustConfig.IntermediateCA,
    json_name: "intermediateCas"
end

defmodule Google.Cloud.Certificatemanager.V1.TrustConfig.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Certificatemanager.V1.TrustConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string

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
    type: Google.Cloud.Certificatemanager.V1.TrustConfig.LabelsEntry,
    map: true

  field :description, 5, type: :string
  field :etag, 6, type: :string

  field :trust_stores, 8,
    repeated: true,
    type: Google.Cloud.Certificatemanager.V1.TrustConfig.TrustStore,
    json_name: "trustStores"
end