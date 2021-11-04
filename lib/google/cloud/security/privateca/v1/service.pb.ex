defmodule Google.Cloud.Security.Privateca.V1.CreateCertificateRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          certificate_id: String.t(),
          certificate: Google.Cloud.Security.Privateca.V1.Certificate.t() | nil,
          request_id: String.t(),
          validate_only: boolean,
          issuing_certificate_authority_id: String.t()
        }

  defstruct [
    :parent,
    :certificate_id,
    :certificate,
    :request_id,
    :validate_only,
    :issuing_certificate_authority_id
  ]

  field :parent, 1, type: :string
  field :certificate_id, 2, type: :string, json_name: "certificateId"
  field :certificate, 3, type: Google.Cloud.Security.Privateca.V1.Certificate
  field :request_id, 4, type: :string, json_name: "requestId"
  field :validate_only, 5, type: :bool, json_name: "validateOnly"

  field :issuing_certificate_authority_id, 6,
    type: :string,
    json_name: "issuingCertificateAuthorityId"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Security.Privateca.V1.GetCertificateRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string

  def transform_module(), do: nil
end

defmodule Google.Cloud.Security.Privateca.V1.ListCertificatesRequest do
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
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :filter, 4, type: :string
  field :order_by, 5, type: :string, json_name: "orderBy"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Security.Privateca.V1.ListCertificatesResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          certificates: [Google.Cloud.Security.Privateca.V1.Certificate.t()],
          next_page_token: String.t(),
          unreachable: [String.t()]
        }

  defstruct [:certificates, :next_page_token, :unreachable]

  field :certificates, 1, repeated: true, type: Google.Cloud.Security.Privateca.V1.Certificate
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string

  def transform_module(), do: nil
end

defmodule Google.Cloud.Security.Privateca.V1.RevokeCertificateRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          reason: Google.Cloud.Security.Privateca.V1.RevocationReason.t(),
          request_id: String.t()
        }

  defstruct [:name, :reason, :request_id]

  field :name, 1, type: :string
  field :reason, 2, type: Google.Cloud.Security.Privateca.V1.RevocationReason, enum: true
  field :request_id, 3, type: :string, json_name: "requestId"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Security.Privateca.V1.UpdateCertificateRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          certificate: Google.Cloud.Security.Privateca.V1.Certificate.t() | nil,
          update_mask: Google.Protobuf.FieldMask.t() | nil,
          request_id: String.t()
        }

  defstruct [:certificate, :update_mask, :request_id]

  field :certificate, 1, type: Google.Cloud.Security.Privateca.V1.Certificate
  field :update_mask, 2, type: Google.Protobuf.FieldMask, json_name: "updateMask"
  field :request_id, 3, type: :string, json_name: "requestId"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Security.Privateca.V1.ActivateCertificateAuthorityRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          pem_ca_certificate: String.t(),
          subordinate_config: Google.Cloud.Security.Privateca.V1.SubordinateConfig.t() | nil,
          request_id: String.t()
        }

  defstruct [:name, :pem_ca_certificate, :subordinate_config, :request_id]

  field :name, 1, type: :string
  field :pem_ca_certificate, 2, type: :string, json_name: "pemCaCertificate"

  field :subordinate_config, 3,
    type: Google.Cloud.Security.Privateca.V1.SubordinateConfig,
    json_name: "subordinateConfig"

  field :request_id, 4, type: :string, json_name: "requestId"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Security.Privateca.V1.CreateCertificateAuthorityRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          certificate_authority_id: String.t(),
          certificate_authority:
            Google.Cloud.Security.Privateca.V1.CertificateAuthority.t() | nil,
          request_id: String.t()
        }

  defstruct [:parent, :certificate_authority_id, :certificate_authority, :request_id]

  field :parent, 1, type: :string
  field :certificate_authority_id, 2, type: :string, json_name: "certificateAuthorityId"

  field :certificate_authority, 3,
    type: Google.Cloud.Security.Privateca.V1.CertificateAuthority,
    json_name: "certificateAuthority"

  field :request_id, 4, type: :string, json_name: "requestId"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Security.Privateca.V1.DisableCertificateAuthorityRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          request_id: String.t()
        }

  defstruct [:name, :request_id]

  field :name, 1, type: :string
  field :request_id, 2, type: :string, json_name: "requestId"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Security.Privateca.V1.EnableCertificateAuthorityRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          request_id: String.t()
        }

  defstruct [:name, :request_id]

  field :name, 1, type: :string
  field :request_id, 2, type: :string, json_name: "requestId"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Security.Privateca.V1.FetchCertificateAuthorityCsrRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string

  def transform_module(), do: nil
end

defmodule Google.Cloud.Security.Privateca.V1.FetchCertificateAuthorityCsrResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          pem_csr: String.t()
        }

  defstruct [:pem_csr]

  field :pem_csr, 1, type: :string, json_name: "pemCsr"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Security.Privateca.V1.GetCertificateAuthorityRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string

  def transform_module(), do: nil
end

defmodule Google.Cloud.Security.Privateca.V1.ListCertificateAuthoritiesRequest do
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
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :filter, 4, type: :string
  field :order_by, 5, type: :string, json_name: "orderBy"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Security.Privateca.V1.ListCertificateAuthoritiesResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          certificate_authorities: [Google.Cloud.Security.Privateca.V1.CertificateAuthority.t()],
          next_page_token: String.t(),
          unreachable: [String.t()]
        }

  defstruct [:certificate_authorities, :next_page_token, :unreachable]

  field :certificate_authorities, 1,
    repeated: true,
    type: Google.Cloud.Security.Privateca.V1.CertificateAuthority,
    json_name: "certificateAuthorities"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string

  def transform_module(), do: nil
end

defmodule Google.Cloud.Security.Privateca.V1.UndeleteCertificateAuthorityRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          request_id: String.t()
        }

  defstruct [:name, :request_id]

  field :name, 1, type: :string
  field :request_id, 2, type: :string, json_name: "requestId"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Security.Privateca.V1.DeleteCertificateAuthorityRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          request_id: String.t(),
          ignore_active_certificates: boolean
        }

  defstruct [:name, :request_id, :ignore_active_certificates]

  field :name, 1, type: :string
  field :request_id, 2, type: :string, json_name: "requestId"
  field :ignore_active_certificates, 4, type: :bool, json_name: "ignoreActiveCertificates"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Security.Privateca.V1.UpdateCertificateAuthorityRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          certificate_authority:
            Google.Cloud.Security.Privateca.V1.CertificateAuthority.t() | nil,
          update_mask: Google.Protobuf.FieldMask.t() | nil,
          request_id: String.t()
        }

  defstruct [:certificate_authority, :update_mask, :request_id]

  field :certificate_authority, 1,
    type: Google.Cloud.Security.Privateca.V1.CertificateAuthority,
    json_name: "certificateAuthority"

  field :update_mask, 2, type: Google.Protobuf.FieldMask, json_name: "updateMask"
  field :request_id, 3, type: :string, json_name: "requestId"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Security.Privateca.V1.CreateCaPoolRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          ca_pool_id: String.t(),
          ca_pool: Google.Cloud.Security.Privateca.V1.CaPool.t() | nil,
          request_id: String.t()
        }

  defstruct [:parent, :ca_pool_id, :ca_pool, :request_id]

  field :parent, 1, type: :string
  field :ca_pool_id, 2, type: :string, json_name: "caPoolId"
  field :ca_pool, 3, type: Google.Cloud.Security.Privateca.V1.CaPool, json_name: "caPool"
  field :request_id, 4, type: :string, json_name: "requestId"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Security.Privateca.V1.UpdateCaPoolRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          ca_pool: Google.Cloud.Security.Privateca.V1.CaPool.t() | nil,
          update_mask: Google.Protobuf.FieldMask.t() | nil,
          request_id: String.t()
        }

  defstruct [:ca_pool, :update_mask, :request_id]

  field :ca_pool, 1, type: Google.Cloud.Security.Privateca.V1.CaPool, json_name: "caPool"
  field :update_mask, 2, type: Google.Protobuf.FieldMask, json_name: "updateMask"
  field :request_id, 3, type: :string, json_name: "requestId"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Security.Privateca.V1.DeleteCaPoolRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          request_id: String.t()
        }

  defstruct [:name, :request_id]

  field :name, 1, type: :string
  field :request_id, 2, type: :string, json_name: "requestId"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Security.Privateca.V1.FetchCaCertsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          ca_pool: String.t(),
          request_id: String.t()
        }

  defstruct [:ca_pool, :request_id]

  field :ca_pool, 1, type: :string, json_name: "caPool"
  field :request_id, 2, type: :string, json_name: "requestId"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Security.Privateca.V1.FetchCaCertsResponse.CertChain do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          certificates: [String.t()]
        }

  defstruct [:certificates]

  field :certificates, 1, repeated: true, type: :string

  def transform_module(), do: nil
end

defmodule Google.Cloud.Security.Privateca.V1.FetchCaCertsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          ca_certs: [Google.Cloud.Security.Privateca.V1.FetchCaCertsResponse.CertChain.t()]
        }

  defstruct [:ca_certs]

  field :ca_certs, 1,
    repeated: true,
    type: Google.Cloud.Security.Privateca.V1.FetchCaCertsResponse.CertChain,
    json_name: "caCerts"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Security.Privateca.V1.GetCaPoolRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string

  def transform_module(), do: nil
end

defmodule Google.Cloud.Security.Privateca.V1.ListCaPoolsRequest do
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
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :filter, 4, type: :string
  field :order_by, 5, type: :string, json_name: "orderBy"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Security.Privateca.V1.ListCaPoolsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          ca_pools: [Google.Cloud.Security.Privateca.V1.CaPool.t()],
          next_page_token: String.t(),
          unreachable: [String.t()]
        }

  defstruct [:ca_pools, :next_page_token, :unreachable]

  field :ca_pools, 1,
    repeated: true,
    type: Google.Cloud.Security.Privateca.V1.CaPool,
    json_name: "caPools"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string

  def transform_module(), do: nil
end

defmodule Google.Cloud.Security.Privateca.V1.GetCertificateRevocationListRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string

  def transform_module(), do: nil
end

defmodule Google.Cloud.Security.Privateca.V1.ListCertificateRevocationListsRequest do
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
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :filter, 4, type: :string
  field :order_by, 5, type: :string, json_name: "orderBy"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Security.Privateca.V1.ListCertificateRevocationListsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          certificate_revocation_lists: [
            Google.Cloud.Security.Privateca.V1.CertificateRevocationList.t()
          ],
          next_page_token: String.t(),
          unreachable: [String.t()]
        }

  defstruct [:certificate_revocation_lists, :next_page_token, :unreachable]

  field :certificate_revocation_lists, 1,
    repeated: true,
    type: Google.Cloud.Security.Privateca.V1.CertificateRevocationList,
    json_name: "certificateRevocationLists"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string

  def transform_module(), do: nil
end

defmodule Google.Cloud.Security.Privateca.V1.UpdateCertificateRevocationListRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          certificate_revocation_list:
            Google.Cloud.Security.Privateca.V1.CertificateRevocationList.t() | nil,
          update_mask: Google.Protobuf.FieldMask.t() | nil,
          request_id: String.t()
        }

  defstruct [:certificate_revocation_list, :update_mask, :request_id]

  field :certificate_revocation_list, 1,
    type: Google.Cloud.Security.Privateca.V1.CertificateRevocationList,
    json_name: "certificateRevocationList"

  field :update_mask, 2, type: Google.Protobuf.FieldMask, json_name: "updateMask"
  field :request_id, 3, type: :string, json_name: "requestId"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Security.Privateca.V1.CreateCertificateTemplateRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          certificate_template_id: String.t(),
          certificate_template: Google.Cloud.Security.Privateca.V1.CertificateTemplate.t() | nil,
          request_id: String.t()
        }

  defstruct [:parent, :certificate_template_id, :certificate_template, :request_id]

  field :parent, 1, type: :string
  field :certificate_template_id, 2, type: :string, json_name: "certificateTemplateId"

  field :certificate_template, 3,
    type: Google.Cloud.Security.Privateca.V1.CertificateTemplate,
    json_name: "certificateTemplate"

  field :request_id, 4, type: :string, json_name: "requestId"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Security.Privateca.V1.DeleteCertificateTemplateRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          request_id: String.t()
        }

  defstruct [:name, :request_id]

  field :name, 1, type: :string
  field :request_id, 2, type: :string, json_name: "requestId"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Security.Privateca.V1.GetCertificateTemplateRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string

  def transform_module(), do: nil
end

defmodule Google.Cloud.Security.Privateca.V1.ListCertificateTemplatesRequest do
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
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :filter, 4, type: :string
  field :order_by, 5, type: :string, json_name: "orderBy"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Security.Privateca.V1.ListCertificateTemplatesResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          certificate_templates: [Google.Cloud.Security.Privateca.V1.CertificateTemplate.t()],
          next_page_token: String.t(),
          unreachable: [String.t()]
        }

  defstruct [:certificate_templates, :next_page_token, :unreachable]

  field :certificate_templates, 1,
    repeated: true,
    type: Google.Cloud.Security.Privateca.V1.CertificateTemplate,
    json_name: "certificateTemplates"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string

  def transform_module(), do: nil
end

defmodule Google.Cloud.Security.Privateca.V1.UpdateCertificateTemplateRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          certificate_template: Google.Cloud.Security.Privateca.V1.CertificateTemplate.t() | nil,
          update_mask: Google.Protobuf.FieldMask.t() | nil,
          request_id: String.t()
        }

  defstruct [:certificate_template, :update_mask, :request_id]

  field :certificate_template, 1,
    type: Google.Cloud.Security.Privateca.V1.CertificateTemplate,
    json_name: "certificateTemplate"

  field :update_mask, 2, type: Google.Protobuf.FieldMask, json_name: "updateMask"
  field :request_id, 3, type: :string, json_name: "requestId"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Security.Privateca.V1.OperationMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          create_time: Google.Protobuf.Timestamp.t() | nil,
          end_time: Google.Protobuf.Timestamp.t() | nil,
          target: String.t(),
          verb: String.t(),
          status_message: String.t(),
          requested_cancellation: boolean,
          api_version: String.t()
        }

  defstruct [
    :create_time,
    :end_time,
    :target,
    :verb,
    :status_message,
    :requested_cancellation,
    :api_version
  ]

  field :create_time, 1, type: Google.Protobuf.Timestamp, json_name: "createTime"
  field :end_time, 2, type: Google.Protobuf.Timestamp, json_name: "endTime"
  field :target, 3, type: :string
  field :verb, 4, type: :string
  field :status_message, 5, type: :string, json_name: "statusMessage"
  field :requested_cancellation, 6, type: :bool, json_name: "requestedCancellation"
  field :api_version, 7, type: :string, json_name: "apiVersion"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Security.Privateca.V1.CertificateAuthorityService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.cloud.security.privateca.v1.CertificateAuthorityService"

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
