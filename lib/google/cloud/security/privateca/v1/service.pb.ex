defmodule Google.Cloud.Security.Privateca.V1.CreateCertificateRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :certificate_id, 2, type: :string, json_name: "certificateId", deprecated: false
  field :certificate, 3, type: Google.Cloud.Security.Privateca.V1.Certificate, deprecated: false
  field :request_id, 4, type: :string, json_name: "requestId", deprecated: false
  field :validate_only, 5, type: :bool, json_name: "validateOnly", deprecated: false

  field :issuing_certificate_authority_id, 6,
    type: :string,
    json_name: "issuingCertificateAuthorityId",
    deprecated: false
end

defmodule Google.Cloud.Security.Privateca.V1.GetCertificateRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Security.Privateca.V1.ListCertificatesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
  field :filter, 4, type: :string, deprecated: false
  field :order_by, 5, type: :string, json_name: "orderBy", deprecated: false
end

defmodule Google.Cloud.Security.Privateca.V1.ListCertificatesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :certificates, 1, repeated: true, type: Google.Cloud.Security.Privateca.V1.Certificate
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end

defmodule Google.Cloud.Security.Privateca.V1.RevokeCertificateRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

  field :reason, 2,
    type: Google.Cloud.Security.Privateca.V1.RevocationReason,
    enum: true,
    deprecated: false

  field :request_id, 3, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Security.Privateca.V1.UpdateCertificateRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :certificate, 1, type: Google.Cloud.Security.Privateca.V1.Certificate, deprecated: false

  field :update_mask, 2,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false

  field :request_id, 3, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Security.Privateca.V1.ActivateCertificateAuthorityRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :pem_ca_certificate, 2, type: :string, json_name: "pemCaCertificate", deprecated: false

  field :subordinate_config, 3,
    type: Google.Cloud.Security.Privateca.V1.SubordinateConfig,
    json_name: "subordinateConfig",
    deprecated: false

  field :request_id, 4, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Security.Privateca.V1.CreateCertificateAuthorityRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :certificate_authority_id, 2,
    type: :string,
    json_name: "certificateAuthorityId",
    deprecated: false

  field :certificate_authority, 3,
    type: Google.Cloud.Security.Privateca.V1.CertificateAuthority,
    json_name: "certificateAuthority",
    deprecated: false

  field :request_id, 4, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Security.Privateca.V1.DisableCertificateAuthorityRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :request_id, 2, type: :string, json_name: "requestId", deprecated: false

  field :ignore_dependent_resources, 3,
    type: :bool,
    json_name: "ignoreDependentResources",
    deprecated: false
end

defmodule Google.Cloud.Security.Privateca.V1.EnableCertificateAuthorityRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :request_id, 2, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Security.Privateca.V1.FetchCertificateAuthorityCsrRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Security.Privateca.V1.FetchCertificateAuthorityCsrResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :pem_csr, 1, type: :string, json_name: "pemCsr", deprecated: false
end

defmodule Google.Cloud.Security.Privateca.V1.GetCertificateAuthorityRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Security.Privateca.V1.ListCertificateAuthoritiesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
  field :filter, 4, type: :string, deprecated: false
  field :order_by, 5, type: :string, json_name: "orderBy", deprecated: false
end

defmodule Google.Cloud.Security.Privateca.V1.ListCertificateAuthoritiesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :certificate_authorities, 1,
    repeated: true,
    type: Google.Cloud.Security.Privateca.V1.CertificateAuthority,
    json_name: "certificateAuthorities"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end

defmodule Google.Cloud.Security.Privateca.V1.UndeleteCertificateAuthorityRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :request_id, 2, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Security.Privateca.V1.DeleteCertificateAuthorityRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :request_id, 2, type: :string, json_name: "requestId", deprecated: false

  field :ignore_active_certificates, 4,
    type: :bool,
    json_name: "ignoreActiveCertificates",
    deprecated: false

  field :skip_grace_period, 5, type: :bool, json_name: "skipGracePeriod", deprecated: false

  field :ignore_dependent_resources, 6,
    type: :bool,
    json_name: "ignoreDependentResources",
    deprecated: false
end

defmodule Google.Cloud.Security.Privateca.V1.UpdateCertificateAuthorityRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :certificate_authority, 1,
    type: Google.Cloud.Security.Privateca.V1.CertificateAuthority,
    json_name: "certificateAuthority",
    deprecated: false

  field :update_mask, 2,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false

  field :request_id, 3, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Security.Privateca.V1.CreateCaPoolRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :ca_pool_id, 2, type: :string, json_name: "caPoolId", deprecated: false

  field :ca_pool, 3,
    type: Google.Cloud.Security.Privateca.V1.CaPool,
    json_name: "caPool",
    deprecated: false

  field :request_id, 4, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Security.Privateca.V1.UpdateCaPoolRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :ca_pool, 1,
    type: Google.Cloud.Security.Privateca.V1.CaPool,
    json_name: "caPool",
    deprecated: false

  field :update_mask, 2,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false

  field :request_id, 3, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Security.Privateca.V1.DeleteCaPoolRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :request_id, 2, type: :string, json_name: "requestId", deprecated: false

  field :ignore_dependent_resources, 4,
    type: :bool,
    json_name: "ignoreDependentResources",
    deprecated: false
end

defmodule Google.Cloud.Security.Privateca.V1.FetchCaCertsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :ca_pool, 1, type: :string, json_name: "caPool", deprecated: false
  field :request_id, 2, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Security.Privateca.V1.FetchCaCertsResponse.CertChain do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :certificates, 1, repeated: true, type: :string
end

defmodule Google.Cloud.Security.Privateca.V1.FetchCaCertsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :ca_certs, 1,
    repeated: true,
    type: Google.Cloud.Security.Privateca.V1.FetchCaCertsResponse.CertChain,
    json_name: "caCerts"
end

defmodule Google.Cloud.Security.Privateca.V1.GetCaPoolRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Security.Privateca.V1.ListCaPoolsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
  field :filter, 4, type: :string, deprecated: false
  field :order_by, 5, type: :string, json_name: "orderBy", deprecated: false
end

defmodule Google.Cloud.Security.Privateca.V1.ListCaPoolsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :ca_pools, 1,
    repeated: true,
    type: Google.Cloud.Security.Privateca.V1.CaPool,
    json_name: "caPools"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end

defmodule Google.Cloud.Security.Privateca.V1.GetCertificateRevocationListRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Security.Privateca.V1.ListCertificateRevocationListsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
  field :filter, 4, type: :string, deprecated: false
  field :order_by, 5, type: :string, json_name: "orderBy", deprecated: false
end

defmodule Google.Cloud.Security.Privateca.V1.ListCertificateRevocationListsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :certificate_revocation_lists, 1,
    repeated: true,
    type: Google.Cloud.Security.Privateca.V1.CertificateRevocationList,
    json_name: "certificateRevocationLists"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end

defmodule Google.Cloud.Security.Privateca.V1.UpdateCertificateRevocationListRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :certificate_revocation_list, 1,
    type: Google.Cloud.Security.Privateca.V1.CertificateRevocationList,
    json_name: "certificateRevocationList",
    deprecated: false

  field :update_mask, 2,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false

  field :request_id, 3, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Security.Privateca.V1.CreateCertificateTemplateRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :certificate_template_id, 2,
    type: :string,
    json_name: "certificateTemplateId",
    deprecated: false

  field :certificate_template, 3,
    type: Google.Cloud.Security.Privateca.V1.CertificateTemplate,
    json_name: "certificateTemplate",
    deprecated: false

  field :request_id, 4, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Security.Privateca.V1.DeleteCertificateTemplateRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :request_id, 2, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Security.Privateca.V1.GetCertificateTemplateRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Security.Privateca.V1.ListCertificateTemplatesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
  field :filter, 4, type: :string, deprecated: false
  field :order_by, 5, type: :string, json_name: "orderBy", deprecated: false
end

defmodule Google.Cloud.Security.Privateca.V1.ListCertificateTemplatesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :certificate_templates, 1,
    repeated: true,
    type: Google.Cloud.Security.Privateca.V1.CertificateTemplate,
    json_name: "certificateTemplates"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end

defmodule Google.Cloud.Security.Privateca.V1.UpdateCertificateTemplateRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :certificate_template, 1,
    type: Google.Cloud.Security.Privateca.V1.CertificateTemplate,
    json_name: "certificateTemplate",
    deprecated: false

  field :update_mask, 2,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false

  field :request_id, 3, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Security.Privateca.V1.OperationMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

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

defmodule Google.Cloud.Security.Privateca.V1.CertificateAuthorityService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.security.privateca.v1.CertificateAuthorityService",
    protoc_gen_elixir_version: "0.14.0"

  rpc :CreateCertificate,
      Google.Cloud.Security.Privateca.V1.CreateCertificateRequest,
      Google.Cloud.Security.Privateca.V1.Certificate

  rpc :GetCertificate,
      Google.Cloud.Security.Privateca.V1.GetCertificateRequest,
      Google.Cloud.Security.Privateca.V1.Certificate

  rpc :ListCertificates,
      Google.Cloud.Security.Privateca.V1.ListCertificatesRequest,
      Google.Cloud.Security.Privateca.V1.ListCertificatesResponse

  rpc :RevokeCertificate,
      Google.Cloud.Security.Privateca.V1.RevokeCertificateRequest,
      Google.Cloud.Security.Privateca.V1.Certificate

  rpc :UpdateCertificate,
      Google.Cloud.Security.Privateca.V1.UpdateCertificateRequest,
      Google.Cloud.Security.Privateca.V1.Certificate

  rpc :ActivateCertificateAuthority,
      Google.Cloud.Security.Privateca.V1.ActivateCertificateAuthorityRequest,
      Google.Longrunning.Operation

  rpc :CreateCertificateAuthority,
      Google.Cloud.Security.Privateca.V1.CreateCertificateAuthorityRequest,
      Google.Longrunning.Operation

  rpc :DisableCertificateAuthority,
      Google.Cloud.Security.Privateca.V1.DisableCertificateAuthorityRequest,
      Google.Longrunning.Operation

  rpc :EnableCertificateAuthority,
      Google.Cloud.Security.Privateca.V1.EnableCertificateAuthorityRequest,
      Google.Longrunning.Operation

  rpc :FetchCertificateAuthorityCsr,
      Google.Cloud.Security.Privateca.V1.FetchCertificateAuthorityCsrRequest,
      Google.Cloud.Security.Privateca.V1.FetchCertificateAuthorityCsrResponse

  rpc :GetCertificateAuthority,
      Google.Cloud.Security.Privateca.V1.GetCertificateAuthorityRequest,
      Google.Cloud.Security.Privateca.V1.CertificateAuthority

  rpc :ListCertificateAuthorities,
      Google.Cloud.Security.Privateca.V1.ListCertificateAuthoritiesRequest,
      Google.Cloud.Security.Privateca.V1.ListCertificateAuthoritiesResponse

  rpc :UndeleteCertificateAuthority,
      Google.Cloud.Security.Privateca.V1.UndeleteCertificateAuthorityRequest,
      Google.Longrunning.Operation

  rpc :DeleteCertificateAuthority,
      Google.Cloud.Security.Privateca.V1.DeleteCertificateAuthorityRequest,
      Google.Longrunning.Operation

  rpc :UpdateCertificateAuthority,
      Google.Cloud.Security.Privateca.V1.UpdateCertificateAuthorityRequest,
      Google.Longrunning.Operation

  rpc :CreateCaPool,
      Google.Cloud.Security.Privateca.V1.CreateCaPoolRequest,
      Google.Longrunning.Operation

  rpc :UpdateCaPool,
      Google.Cloud.Security.Privateca.V1.UpdateCaPoolRequest,
      Google.Longrunning.Operation

  rpc :GetCaPool,
      Google.Cloud.Security.Privateca.V1.GetCaPoolRequest,
      Google.Cloud.Security.Privateca.V1.CaPool

  rpc :ListCaPools,
      Google.Cloud.Security.Privateca.V1.ListCaPoolsRequest,
      Google.Cloud.Security.Privateca.V1.ListCaPoolsResponse

  rpc :DeleteCaPool,
      Google.Cloud.Security.Privateca.V1.DeleteCaPoolRequest,
      Google.Longrunning.Operation

  rpc :FetchCaCerts,
      Google.Cloud.Security.Privateca.V1.FetchCaCertsRequest,
      Google.Cloud.Security.Privateca.V1.FetchCaCertsResponse

  rpc :GetCertificateRevocationList,
      Google.Cloud.Security.Privateca.V1.GetCertificateRevocationListRequest,
      Google.Cloud.Security.Privateca.V1.CertificateRevocationList

  rpc :ListCertificateRevocationLists,
      Google.Cloud.Security.Privateca.V1.ListCertificateRevocationListsRequest,
      Google.Cloud.Security.Privateca.V1.ListCertificateRevocationListsResponse

  rpc :UpdateCertificateRevocationList,
      Google.Cloud.Security.Privateca.V1.UpdateCertificateRevocationListRequest,
      Google.Longrunning.Operation

  rpc :CreateCertificateTemplate,
      Google.Cloud.Security.Privateca.V1.CreateCertificateTemplateRequest,
      Google.Longrunning.Operation

  rpc :DeleteCertificateTemplate,
      Google.Cloud.Security.Privateca.V1.DeleteCertificateTemplateRequest,
      Google.Longrunning.Operation

  rpc :GetCertificateTemplate,
      Google.Cloud.Security.Privateca.V1.GetCertificateTemplateRequest,
      Google.Cloud.Security.Privateca.V1.CertificateTemplate

  rpc :ListCertificateTemplates,
      Google.Cloud.Security.Privateca.V1.ListCertificateTemplatesRequest,
      Google.Cloud.Security.Privateca.V1.ListCertificateTemplatesResponse

  rpc :UpdateCertificateTemplate,
      Google.Cloud.Security.Privateca.V1.UpdateCertificateTemplateRequest,
      Google.Longrunning.Operation
end

defmodule Google.Cloud.Security.Privateca.V1.CertificateAuthorityService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Security.Privateca.V1.CertificateAuthorityService.Service
end
