defmodule Google.Cloud.Certificatemanager.V1.CertificateIssuanceConfig.KeyAlgorithm do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :KEY_ALGORITHM_UNSPECIFIED, 0
  field :RSA_2048, 1
  field :ECDSA_P256, 4
end

defmodule Google.Cloud.Certificatemanager.V1.ListCertificateIssuanceConfigsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :filter, 4, type: :string
  field :order_by, 5, type: :string, json_name: "orderBy"
end

defmodule Google.Cloud.Certificatemanager.V1.ListCertificateIssuanceConfigsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :certificate_issuance_configs, 1,
    repeated: true,
    type: Google.Cloud.Certificatemanager.V1.CertificateIssuanceConfig,
    json_name: "certificateIssuanceConfigs"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end

defmodule Google.Cloud.Certificatemanager.V1.GetCertificateIssuanceConfigRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Certificatemanager.V1.CreateCertificateIssuanceConfigRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :certificate_issuance_config_id, 2,
    type: :string,
    json_name: "certificateIssuanceConfigId",
    deprecated: false

  field :certificate_issuance_config, 3,
    type: Google.Cloud.Certificatemanager.V1.CertificateIssuanceConfig,
    json_name: "certificateIssuanceConfig",
    deprecated: false
end

defmodule Google.Cloud.Certificatemanager.V1.DeleteCertificateIssuanceConfigRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Certificatemanager.V1.CertificateIssuanceConfig.CertificateAuthorityConfig.CertificateAuthorityServiceConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :ca_pool, 1, type: :string, json_name: "caPool", deprecated: false
end

defmodule Google.Cloud.Certificatemanager.V1.CertificateIssuanceConfig.CertificateAuthorityConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  oneof :kind, 0

  field :certificate_authority_service_config, 1,
    type:
      Google.Cloud.Certificatemanager.V1.CertificateIssuanceConfig.CertificateAuthorityConfig.CertificateAuthorityServiceConfig,
    json_name: "certificateAuthorityServiceConfig",
    oneof: 0
end

defmodule Google.Cloud.Certificatemanager.V1.CertificateIssuanceConfig.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Certificatemanager.V1.CertificateIssuanceConfig do
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
    type: Google.Cloud.Certificatemanager.V1.CertificateIssuanceConfig.LabelsEntry,
    map: true

  field :description, 5, type: :string

  field :certificate_authority_config, 6,
    type: Google.Cloud.Certificatemanager.V1.CertificateIssuanceConfig.CertificateAuthorityConfig,
    json_name: "certificateAuthorityConfig",
    deprecated: false

  field :lifetime, 7, type: Google.Protobuf.Duration, deprecated: false

  field :rotation_window_percentage, 8,
    type: :int32,
    json_name: "rotationWindowPercentage",
    deprecated: false

  field :key_algorithm, 9,
    type: Google.Cloud.Certificatemanager.V1.CertificateIssuanceConfig.KeyAlgorithm,
    json_name: "keyAlgorithm",
    enum: true,
    deprecated: false
end