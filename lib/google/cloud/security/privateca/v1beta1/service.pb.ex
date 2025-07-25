defmodule Google.Cloud.Security.Privateca.V1beta1.CreateCertificateRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :certificate_id, 2, type: :string, json_name: "certificateId", deprecated: false

  field :certificate, 3,
    type: Google.Cloud.Security.Privateca.V1beta1.Certificate,
    deprecated: false

  field :request_id, 4, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Security.Privateca.V1beta1.GetCertificateRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Security.Privateca.V1beta1.ListCertificatesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
  field :filter, 4, type: :string, deprecated: false
  field :order_by, 5, type: :string, json_name: "orderBy", deprecated: false
end

defmodule Google.Cloud.Security.Privateca.V1beta1.ListCertificatesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :certificates, 1,
    repeated: true,
    type: Google.Cloud.Security.Privateca.V1beta1.Certificate

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end

defmodule Google.Cloud.Security.Privateca.V1beta1.RevokeCertificateRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

  field :reason, 2,
    type: Google.Cloud.Security.Privateca.V1beta1.RevocationReason,
    enum: true,
    deprecated: false

  field :request_id, 3, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Security.Privateca.V1beta1.UpdateCertificateRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :certificate, 1,
    type: Google.Cloud.Security.Privateca.V1beta1.Certificate,
    deprecated: false

  field :update_mask, 2,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false

  field :request_id, 3, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Security.Privateca.V1beta1.ActivateCertificateAuthorityRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :pem_ca_certificate, 2, type: :string, json_name: "pemCaCertificate", deprecated: false

  field :subordinate_config, 3,
    type: Google.Cloud.Security.Privateca.V1beta1.SubordinateConfig,
    json_name: "subordinateConfig",
    deprecated: false

  field :request_id, 4, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Security.Privateca.V1beta1.CreateCertificateAuthorityRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :certificate_authority_id, 2,
    type: :string,
    json_name: "certificateAuthorityId",
    deprecated: false

  field :certificate_authority, 3,
    type: Google.Cloud.Security.Privateca.V1beta1.CertificateAuthority,
    json_name: "certificateAuthority",
    deprecated: false

  field :request_id, 4, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Security.Privateca.V1beta1.DisableCertificateAuthorityRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :request_id, 2, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Security.Privateca.V1beta1.EnableCertificateAuthorityRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :request_id, 2, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Security.Privateca.V1beta1.FetchCertificateAuthorityCsrRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Security.Privateca.V1beta1.FetchCertificateAuthorityCsrResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :pem_csr, 1, type: :string, json_name: "pemCsr", deprecated: false
end

defmodule Google.Cloud.Security.Privateca.V1beta1.GetCertificateAuthorityRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Security.Privateca.V1beta1.ListCertificateAuthoritiesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
  field :filter, 4, type: :string, deprecated: false
  field :order_by, 5, type: :string, json_name: "orderBy", deprecated: false
end

defmodule Google.Cloud.Security.Privateca.V1beta1.ListCertificateAuthoritiesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :certificate_authorities, 1,
    repeated: true,
    type: Google.Cloud.Security.Privateca.V1beta1.CertificateAuthority,
    json_name: "certificateAuthorities"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end

defmodule Google.Cloud.Security.Privateca.V1beta1.RestoreCertificateAuthorityRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :request_id, 2, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Security.Privateca.V1beta1.ScheduleDeleteCertificateAuthorityRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :request_id, 2, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Security.Privateca.V1beta1.UpdateCertificateAuthorityRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :certificate_authority, 1,
    type: Google.Cloud.Security.Privateca.V1beta1.CertificateAuthority,
    json_name: "certificateAuthority",
    deprecated: false

  field :update_mask, 2,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false

  field :request_id, 3, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Security.Privateca.V1beta1.GetCertificateRevocationListRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Security.Privateca.V1beta1.ListCertificateRevocationListsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
  field :filter, 4, type: :string, deprecated: false
  field :order_by, 5, type: :string, json_name: "orderBy", deprecated: false
end

defmodule Google.Cloud.Security.Privateca.V1beta1.ListCertificateRevocationListsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :certificate_revocation_lists, 1,
    repeated: true,
    type: Google.Cloud.Security.Privateca.V1beta1.CertificateRevocationList,
    json_name: "certificateRevocationLists"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end

defmodule Google.Cloud.Security.Privateca.V1beta1.UpdateCertificateRevocationListRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :certificate_revocation_list, 1,
    type: Google.Cloud.Security.Privateca.V1beta1.CertificateRevocationList,
    json_name: "certificateRevocationList",
    deprecated: false

  field :update_mask, 2,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false

  field :request_id, 3, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Security.Privateca.V1beta1.GetReusableConfigRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Security.Privateca.V1beta1.ListReusableConfigsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
  field :filter, 4, type: :string, deprecated: false
  field :order_by, 5, type: :string, json_name: "orderBy", deprecated: false
end

defmodule Google.Cloud.Security.Privateca.V1beta1.ListReusableConfigsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :reusable_configs, 1,
    repeated: true,
    type: Google.Cloud.Security.Privateca.V1beta1.ReusableConfig,
    json_name: "reusableConfigs"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end

defmodule Google.Cloud.Security.Privateca.V1beta1.OperationMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :create_time, 1,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :end_time, 2, type: Google.Protobuf.Timestamp, json_name: "endTime", deprecated: false
  field :target, 3, type: :string, deprecated: false
  field :verb, 4, type: :string, deprecated: false
  field :status_message, 5, type: :string, json_name: "statusMessage", deprecated: false

  field :requested_cancellation, 6,
    type: :bool,
    json_name: "requestedCancellation",
    deprecated: false

  field :api_version, 7, type: :string, json_name: "apiVersion", deprecated: false
end

defmodule Google.Cloud.Security.Privateca.V1beta1.CertificateAuthorityService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.security.privateca.v1beta1.CertificateAuthorityService",
    protoc_gen_elixir_version: "0.15.0"

  rpc :CreateCertificate,
      Google.Cloud.Security.Privateca.V1beta1.CreateCertificateRequest,
      Google.Cloud.Security.Privateca.V1beta1.Certificate

  rpc :GetCertificate,
      Google.Cloud.Security.Privateca.V1beta1.GetCertificateRequest,
      Google.Cloud.Security.Privateca.V1beta1.Certificate

  rpc :ListCertificates,
      Google.Cloud.Security.Privateca.V1beta1.ListCertificatesRequest,
      Google.Cloud.Security.Privateca.V1beta1.ListCertificatesResponse

  rpc :RevokeCertificate,
      Google.Cloud.Security.Privateca.V1beta1.RevokeCertificateRequest,
      Google.Cloud.Security.Privateca.V1beta1.Certificate

  rpc :UpdateCertificate,
      Google.Cloud.Security.Privateca.V1beta1.UpdateCertificateRequest,
      Google.Cloud.Security.Privateca.V1beta1.Certificate

  rpc :ActivateCertificateAuthority,
      Google.Cloud.Security.Privateca.V1beta1.ActivateCertificateAuthorityRequest,
      Google.Longrunning.Operation

  rpc :CreateCertificateAuthority,
      Google.Cloud.Security.Privateca.V1beta1.CreateCertificateAuthorityRequest,
      Google.Longrunning.Operation

  rpc :DisableCertificateAuthority,
      Google.Cloud.Security.Privateca.V1beta1.DisableCertificateAuthorityRequest,
      Google.Longrunning.Operation

  rpc :EnableCertificateAuthority,
      Google.Cloud.Security.Privateca.V1beta1.EnableCertificateAuthorityRequest,
      Google.Longrunning.Operation

  rpc :FetchCertificateAuthorityCsr,
      Google.Cloud.Security.Privateca.V1beta1.FetchCertificateAuthorityCsrRequest,
      Google.Cloud.Security.Privateca.V1beta1.FetchCertificateAuthorityCsrResponse

  rpc :GetCertificateAuthority,
      Google.Cloud.Security.Privateca.V1beta1.GetCertificateAuthorityRequest,
      Google.Cloud.Security.Privateca.V1beta1.CertificateAuthority

  rpc :ListCertificateAuthorities,
      Google.Cloud.Security.Privateca.V1beta1.ListCertificateAuthoritiesRequest,
      Google.Cloud.Security.Privateca.V1beta1.ListCertificateAuthoritiesResponse

  rpc :RestoreCertificateAuthority,
      Google.Cloud.Security.Privateca.V1beta1.RestoreCertificateAuthorityRequest,
      Google.Longrunning.Operation

  rpc :ScheduleDeleteCertificateAuthority,
      Google.Cloud.Security.Privateca.V1beta1.ScheduleDeleteCertificateAuthorityRequest,
      Google.Longrunning.Operation

  rpc :UpdateCertificateAuthority,
      Google.Cloud.Security.Privateca.V1beta1.UpdateCertificateAuthorityRequest,
      Google.Longrunning.Operation

  rpc :GetCertificateRevocationList,
      Google.Cloud.Security.Privateca.V1beta1.GetCertificateRevocationListRequest,
      Google.Cloud.Security.Privateca.V1beta1.CertificateRevocationList

  rpc :ListCertificateRevocationLists,
      Google.Cloud.Security.Privateca.V1beta1.ListCertificateRevocationListsRequest,
      Google.Cloud.Security.Privateca.V1beta1.ListCertificateRevocationListsResponse

  rpc :UpdateCertificateRevocationList,
      Google.Cloud.Security.Privateca.V1beta1.UpdateCertificateRevocationListRequest,
      Google.Longrunning.Operation

  rpc :GetReusableConfig,
      Google.Cloud.Security.Privateca.V1beta1.GetReusableConfigRequest,
      Google.Cloud.Security.Privateca.V1beta1.ReusableConfig

  rpc :ListReusableConfigs,
      Google.Cloud.Security.Privateca.V1beta1.ListReusableConfigsRequest,
      Google.Cloud.Security.Privateca.V1beta1.ListReusableConfigsResponse
end

defmodule Google.Cloud.Security.Privateca.V1beta1.CertificateAuthorityService.Stub do
  @moduledoc false

  use GRPC.Stub,
    service: Google.Cloud.Security.Privateca.V1beta1.CertificateAuthorityService.Service
end
