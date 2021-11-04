defmodule Google.Cloud.Security.Privateca.V1beta1.RevocationReason do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :REVOCATION_REASON_UNSPECIFIED
          | :KEY_COMPROMISE
          | :CERTIFICATE_AUTHORITY_COMPROMISE
          | :AFFILIATION_CHANGED
          | :SUPERSEDED
          | :CESSATION_OF_OPERATION
          | :CERTIFICATE_HOLD
          | :PRIVILEGE_WITHDRAWN
          | :ATTRIBUTE_AUTHORITY_COMPROMISE

  field :REVOCATION_REASON_UNSPECIFIED, 0
  field :KEY_COMPROMISE, 1
  field :CERTIFICATE_AUTHORITY_COMPROMISE, 2
  field :AFFILIATION_CHANGED, 3
  field :SUPERSEDED, 4
  field :CESSATION_OF_OPERATION, 5
  field :CERTIFICATE_HOLD, 6
  field :PRIVILEGE_WITHDRAWN, 7
  field :ATTRIBUTE_AUTHORITY_COMPROMISE, 8
end

defmodule Google.Cloud.Security.Privateca.V1beta1.CertificateAuthority.Type do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :TYPE_UNSPECIFIED | :SELF_SIGNED | :SUBORDINATE

  field :TYPE_UNSPECIFIED, 0
  field :SELF_SIGNED, 1
  field :SUBORDINATE, 2
end

defmodule Google.Cloud.Security.Privateca.V1beta1.CertificateAuthority.Tier do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :TIER_UNSPECIFIED | :ENTERPRISE | :DEVOPS

  field :TIER_UNSPECIFIED, 0
  field :ENTERPRISE, 1
  field :DEVOPS, 2
end

defmodule Google.Cloud.Security.Privateca.V1beta1.CertificateAuthority.State do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :STATE_UNSPECIFIED
          | :ENABLED
          | :DISABLED
          | :PENDING_ACTIVATION
          | :PENDING_DELETION

  field :STATE_UNSPECIFIED, 0
  field :ENABLED, 1
  field :DISABLED, 2
  field :PENDING_ACTIVATION, 3
  field :PENDING_DELETION, 4
end

defmodule Google.Cloud.Security.Privateca.V1beta1.CertificateAuthority.SignHashAlgorithm do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :SIGN_HASH_ALGORITHM_UNSPECIFIED
          | :RSA_PSS_2048_SHA256
          | :RSA_PSS_3072_SHA256
          | :RSA_PSS_4096_SHA256
          | :RSA_PKCS1_2048_SHA256
          | :RSA_PKCS1_3072_SHA256
          | :RSA_PKCS1_4096_SHA256
          | :EC_P256_SHA256
          | :EC_P384_SHA384

  field :SIGN_HASH_ALGORITHM_UNSPECIFIED, 0
  field :RSA_PSS_2048_SHA256, 1
  field :RSA_PSS_3072_SHA256, 2
  field :RSA_PSS_4096_SHA256, 3
  field :RSA_PKCS1_2048_SHA256, 6
  field :RSA_PKCS1_3072_SHA256, 7
  field :RSA_PKCS1_4096_SHA256, 8
  field :EC_P256_SHA256, 4
  field :EC_P384_SHA384, 5
end

defmodule Google.Cloud.Security.Privateca.V1beta1.CertificateRevocationList.State do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :STATE_UNSPECIFIED | :ACTIVE | :SUPERSEDED

  field :STATE_UNSPECIFIED, 0
  field :ACTIVE, 1
  field :SUPERSEDED, 2
end

defmodule Google.Cloud.Security.Privateca.V1beta1.PublicKey.KeyType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :KEY_TYPE_UNSPECIFIED | :PEM_RSA_KEY | :PEM_EC_KEY

  field :KEY_TYPE_UNSPECIFIED, 0
  field :PEM_RSA_KEY, 1
  field :PEM_EC_KEY, 2
end

defmodule Google.Cloud.Security.Privateca.V1beta1.CertificateAuthority.IssuingOptions do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          include_ca_cert_url: boolean,
          include_crl_access_url: boolean
        }

  defstruct [:include_ca_cert_url, :include_crl_access_url]

  field :include_ca_cert_url, 1, type: :bool, json_name: "includeCaCertUrl"
  field :include_crl_access_url, 2, type: :bool, json_name: "includeCrlAccessUrl"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Security.Privateca.V1beta1.CertificateAuthority.CertificateAuthorityPolicy.AllowedConfigList do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          allowed_config_values: [
            Google.Cloud.Security.Privateca.V1beta1.ReusableConfigWrapper.t()
          ]
        }

  defstruct [:allowed_config_values]

  field :allowed_config_values, 1,
    repeated: true,
    type: Google.Cloud.Security.Privateca.V1beta1.ReusableConfigWrapper,
    json_name: "allowedConfigValues"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Security.Privateca.V1beta1.CertificateAuthority.CertificateAuthorityPolicy.AllowedSubjectAltNames do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          allowed_dns_names: [String.t()],
          allowed_uris: [String.t()],
          allowed_email_addresses: [String.t()],
          allowed_ips: [String.t()],
          allow_globbing_dns_wildcards: boolean,
          allow_custom_sans: boolean
        }

  defstruct [
    :allowed_dns_names,
    :allowed_uris,
    :allowed_email_addresses,
    :allowed_ips,
    :allow_globbing_dns_wildcards,
    :allow_custom_sans
  ]

  field :allowed_dns_names, 1, repeated: true, type: :string, json_name: "allowedDnsNames"
  field :allowed_uris, 2, repeated: true, type: :string, json_name: "allowedUris"

  field :allowed_email_addresses, 3,
    repeated: true,
    type: :string,
    json_name: "allowedEmailAddresses"

  field :allowed_ips, 4, repeated: true, type: :string, json_name: "allowedIps"
  field :allow_globbing_dns_wildcards, 5, type: :bool, json_name: "allowGlobbingDnsWildcards"
  field :allow_custom_sans, 6, type: :bool, json_name: "allowCustomSans"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Security.Privateca.V1beta1.CertificateAuthority.CertificateAuthorityPolicy.IssuanceModes do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          allow_csr_based_issuance: boolean,
          allow_config_based_issuance: boolean
        }

  defstruct [:allow_csr_based_issuance, :allow_config_based_issuance]

  field :allow_csr_based_issuance, 1, type: :bool, json_name: "allowCsrBasedIssuance"
  field :allow_config_based_issuance, 2, type: :bool, json_name: "allowConfigBasedIssuance"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Security.Privateca.V1beta1.CertificateAuthority.CertificateAuthorityPolicy do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          config_policy:
            {:allowed_config_list,
             Google.Cloud.Security.Privateca.V1beta1.CertificateAuthority.CertificateAuthorityPolicy.AllowedConfigList.t()
             | nil}
            | {:overwrite_config_values,
               Google.Cloud.Security.Privateca.V1beta1.ReusableConfigWrapper.t() | nil},
          allowed_locations_and_organizations: [
            Google.Cloud.Security.Privateca.V1beta1.Subject.t()
          ],
          allowed_common_names: [String.t()],
          allowed_sans:
            Google.Cloud.Security.Privateca.V1beta1.CertificateAuthority.CertificateAuthorityPolicy.AllowedSubjectAltNames.t()
            | nil,
          maximum_lifetime: Google.Protobuf.Duration.t() | nil,
          allowed_issuance_modes:
            Google.Cloud.Security.Privateca.V1beta1.CertificateAuthority.CertificateAuthorityPolicy.IssuanceModes.t()
            | nil
        }

  defstruct [
    :config_policy,
    :allowed_locations_and_organizations,
    :allowed_common_names,
    :allowed_sans,
    :maximum_lifetime,
    :allowed_issuance_modes
  ]

  oneof :config_policy, 0

  field :allowed_config_list, 1,
    type:
      Google.Cloud.Security.Privateca.V1beta1.CertificateAuthority.CertificateAuthorityPolicy.AllowedConfigList,
    json_name: "allowedConfigList",
    oneof: 0

  field :overwrite_config_values, 2,
    type: Google.Cloud.Security.Privateca.V1beta1.ReusableConfigWrapper,
    json_name: "overwriteConfigValues",
    oneof: 0

  field :allowed_locations_and_organizations, 3,
    repeated: true,
    type: Google.Cloud.Security.Privateca.V1beta1.Subject,
    json_name: "allowedLocationsAndOrganizations"

  field :allowed_common_names, 4, repeated: true, type: :string, json_name: "allowedCommonNames"

  field :allowed_sans, 5,
    type:
      Google.Cloud.Security.Privateca.V1beta1.CertificateAuthority.CertificateAuthorityPolicy.AllowedSubjectAltNames,
    json_name: "allowedSans"

  field :maximum_lifetime, 6, type: Google.Protobuf.Duration, json_name: "maximumLifetime"

  field :allowed_issuance_modes, 8,
    type:
      Google.Cloud.Security.Privateca.V1beta1.CertificateAuthority.CertificateAuthorityPolicy.IssuanceModes,
    json_name: "allowedIssuanceModes"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Security.Privateca.V1beta1.CertificateAuthority.AccessUrls do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          ca_certificate_access_url: String.t(),
          crl_access_url: String.t()
        }

  defstruct [:ca_certificate_access_url, :crl_access_url]

  field :ca_certificate_access_url, 1, type: :string, json_name: "caCertificateAccessUrl"
  field :crl_access_url, 2, type: :string, json_name: "crlAccessUrl"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Security.Privateca.V1beta1.CertificateAuthority.KeyVersionSpec do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          KeyVersion:
            {:cloud_kms_key_version, String.t()}
            | {:algorithm,
               Google.Cloud.Security.Privateca.V1beta1.CertificateAuthority.SignHashAlgorithm.t()}
        }

  defstruct [:KeyVersion]

  oneof :KeyVersion, 0

  field :cloud_kms_key_version, 1, type: :string, json_name: "cloudKmsKeyVersion", oneof: 0

  field :algorithm, 2,
    type: Google.Cloud.Security.Privateca.V1beta1.CertificateAuthority.SignHashAlgorithm,
    enum: true,
    oneof: 0

  def transform_module(), do: nil
end

defmodule Google.Cloud.Security.Privateca.V1beta1.CertificateAuthority.LabelsEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: String.t()
        }

  defstruct [:key, :value]

  field :key, 1, type: :string
  field :value, 2, type: :string

  def transform_module(), do: nil
end

defmodule Google.Cloud.Security.Privateca.V1beta1.CertificateAuthority do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          type: Google.Cloud.Security.Privateca.V1beta1.CertificateAuthority.Type.t(),
          tier: Google.Cloud.Security.Privateca.V1beta1.CertificateAuthority.Tier.t(),
          config: Google.Cloud.Security.Privateca.V1beta1.CertificateConfig.t() | nil,
          lifetime: Google.Protobuf.Duration.t() | nil,
          key_spec:
            Google.Cloud.Security.Privateca.V1beta1.CertificateAuthority.KeyVersionSpec.t() | nil,
          certificate_policy:
            Google.Cloud.Security.Privateca.V1beta1.CertificateAuthority.CertificateAuthorityPolicy.t()
            | nil,
          issuing_options:
            Google.Cloud.Security.Privateca.V1beta1.CertificateAuthority.IssuingOptions.t() | nil,
          subordinate_config: Google.Cloud.Security.Privateca.V1beta1.SubordinateConfig.t() | nil,
          state: Google.Cloud.Security.Privateca.V1beta1.CertificateAuthority.State.t(),
          pem_ca_certificates: [String.t()],
          ca_certificate_descriptions: [
            Google.Cloud.Security.Privateca.V1beta1.CertificateDescription.t()
          ],
          gcs_bucket: String.t(),
          access_urls:
            Google.Cloud.Security.Privateca.V1beta1.CertificateAuthority.AccessUrls.t() | nil,
          create_time: Google.Protobuf.Timestamp.t() | nil,
          update_time: Google.Protobuf.Timestamp.t() | nil,
          delete_time: Google.Protobuf.Timestamp.t() | nil,
          labels: %{String.t() => String.t()}
        }

  defstruct [
    :name,
    :type,
    :tier,
    :config,
    :lifetime,
    :key_spec,
    :certificate_policy,
    :issuing_options,
    :subordinate_config,
    :state,
    :pem_ca_certificates,
    :ca_certificate_descriptions,
    :gcs_bucket,
    :access_urls,
    :create_time,
    :update_time,
    :delete_time,
    :labels
  ]

  field :name, 1, type: :string

  field :type, 2,
    type: Google.Cloud.Security.Privateca.V1beta1.CertificateAuthority.Type,
    enum: true

  field :tier, 3,
    type: Google.Cloud.Security.Privateca.V1beta1.CertificateAuthority.Tier,
    enum: true

  field :config, 4, type: Google.Cloud.Security.Privateca.V1beta1.CertificateConfig
  field :lifetime, 5, type: Google.Protobuf.Duration

  field :key_spec, 6,
    type: Google.Cloud.Security.Privateca.V1beta1.CertificateAuthority.KeyVersionSpec,
    json_name: "keySpec"

  field :certificate_policy, 7,
    type: Google.Cloud.Security.Privateca.V1beta1.CertificateAuthority.CertificateAuthorityPolicy,
    json_name: "certificatePolicy"

  field :issuing_options, 8,
    type: Google.Cloud.Security.Privateca.V1beta1.CertificateAuthority.IssuingOptions,
    json_name: "issuingOptions"

  field :subordinate_config, 19,
    type: Google.Cloud.Security.Privateca.V1beta1.SubordinateConfig,
    json_name: "subordinateConfig"

  field :state, 10,
    type: Google.Cloud.Security.Privateca.V1beta1.CertificateAuthority.State,
    enum: true

  field :pem_ca_certificates, 9, repeated: true, type: :string, json_name: "pemCaCertificates"

  field :ca_certificate_descriptions, 12,
    repeated: true,
    type: Google.Cloud.Security.Privateca.V1beta1.CertificateDescription,
    json_name: "caCertificateDescriptions"

  field :gcs_bucket, 13, type: :string, json_name: "gcsBucket"

  field :access_urls, 14,
    type: Google.Cloud.Security.Privateca.V1beta1.CertificateAuthority.AccessUrls,
    json_name: "accessUrls"

  field :create_time, 15, type: Google.Protobuf.Timestamp, json_name: "createTime"
  field :update_time, 16, type: Google.Protobuf.Timestamp, json_name: "updateTime"
  field :delete_time, 17, type: Google.Protobuf.Timestamp, json_name: "deleteTime"

  field :labels, 18,
    repeated: true,
    type: Google.Cloud.Security.Privateca.V1beta1.CertificateAuthority.LabelsEntry,
    map: true

  def transform_module(), do: nil
end

defmodule Google.Cloud.Security.Privateca.V1beta1.CertificateRevocationList.RevokedCertificate do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          certificate: String.t(),
          hex_serial_number: String.t(),
          revocation_reason: Google.Cloud.Security.Privateca.V1beta1.RevocationReason.t()
        }

  defstruct [:certificate, :hex_serial_number, :revocation_reason]

  field :certificate, 1, type: :string
  field :hex_serial_number, 2, type: :string, json_name: "hexSerialNumber"

  field :revocation_reason, 3,
    type: Google.Cloud.Security.Privateca.V1beta1.RevocationReason,
    enum: true,
    json_name: "revocationReason"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Security.Privateca.V1beta1.CertificateRevocationList.LabelsEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: String.t()
        }

  defstruct [:key, :value]

  field :key, 1, type: :string
  field :value, 2, type: :string

  def transform_module(), do: nil
end

defmodule Google.Cloud.Security.Privateca.V1beta1.CertificateRevocationList do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          sequence_number: integer,
          revoked_certificates: [
            Google.Cloud.Security.Privateca.V1beta1.CertificateRevocationList.RevokedCertificate.t()
          ],
          pem_crl: String.t(),
          access_url: String.t(),
          state: Google.Cloud.Security.Privateca.V1beta1.CertificateRevocationList.State.t(),
          create_time: Google.Protobuf.Timestamp.t() | nil,
          update_time: Google.Protobuf.Timestamp.t() | nil,
          labels: %{String.t() => String.t()}
        }

  defstruct [
    :name,
    :sequence_number,
    :revoked_certificates,
    :pem_crl,
    :access_url,
    :state,
    :create_time,
    :update_time,
    :labels
  ]

  field :name, 1, type: :string
  field :sequence_number, 2, type: :int64, json_name: "sequenceNumber"

  field :revoked_certificates, 3,
    repeated: true,
    type: Google.Cloud.Security.Privateca.V1beta1.CertificateRevocationList.RevokedCertificate,
    json_name: "revokedCertificates"

  field :pem_crl, 4, type: :string, json_name: "pemCrl"
  field :access_url, 5, type: :string, json_name: "accessUrl"

  field :state, 6,
    type: Google.Cloud.Security.Privateca.V1beta1.CertificateRevocationList.State,
    enum: true

  field :create_time, 7, type: Google.Protobuf.Timestamp, json_name: "createTime"
  field :update_time, 8, type: Google.Protobuf.Timestamp, json_name: "updateTime"

  field :labels, 9,
    repeated: true,
    type: Google.Cloud.Security.Privateca.V1beta1.CertificateRevocationList.LabelsEntry,
    map: true

  def transform_module(), do: nil
end

defmodule Google.Cloud.Security.Privateca.V1beta1.Certificate.RevocationDetails do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          revocation_state: Google.Cloud.Security.Privateca.V1beta1.RevocationReason.t(),
          revocation_time: Google.Protobuf.Timestamp.t() | nil
        }

  defstruct [:revocation_state, :revocation_time]

  field :revocation_state, 1,
    type: Google.Cloud.Security.Privateca.V1beta1.RevocationReason,
    enum: true,
    json_name: "revocationState"

  field :revocation_time, 2, type: Google.Protobuf.Timestamp, json_name: "revocationTime"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Security.Privateca.V1beta1.Certificate.LabelsEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: String.t()
        }

  defstruct [:key, :value]

  field :key, 1, type: :string
  field :value, 2, type: :string

  def transform_module(), do: nil
end

defmodule Google.Cloud.Security.Privateca.V1beta1.Certificate do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          certificate_config:
            {:pem_csr, String.t()}
            | {:config, Google.Cloud.Security.Privateca.V1beta1.CertificateConfig.t() | nil},
          name: String.t(),
          lifetime: Google.Protobuf.Duration.t() | nil,
          revocation_details:
            Google.Cloud.Security.Privateca.V1beta1.Certificate.RevocationDetails.t() | nil,
          pem_certificate: String.t(),
          certificate_description:
            Google.Cloud.Security.Privateca.V1beta1.CertificateDescription.t() | nil,
          pem_certificate_chain: [String.t()],
          create_time: Google.Protobuf.Timestamp.t() | nil,
          update_time: Google.Protobuf.Timestamp.t() | nil,
          labels: %{String.t() => String.t()}
        }

  defstruct [
    :certificate_config,
    :name,
    :lifetime,
    :revocation_details,
    :pem_certificate,
    :certificate_description,
    :pem_certificate_chain,
    :create_time,
    :update_time,
    :labels
  ]

  oneof :certificate_config, 0

  field :name, 1, type: :string
  field :pem_csr, 2, type: :string, json_name: "pemCsr", oneof: 0
  field :config, 3, type: Google.Cloud.Security.Privateca.V1beta1.CertificateConfig, oneof: 0
  field :lifetime, 4, type: Google.Protobuf.Duration

  field :revocation_details, 5,
    type: Google.Cloud.Security.Privateca.V1beta1.Certificate.RevocationDetails,
    json_name: "revocationDetails"

  field :pem_certificate, 6, type: :string, json_name: "pemCertificate"

  field :certificate_description, 7,
    type: Google.Cloud.Security.Privateca.V1beta1.CertificateDescription,
    json_name: "certificateDescription"

  field :pem_certificate_chain, 8, repeated: true, type: :string, json_name: "pemCertificateChain"
  field :create_time, 9, type: Google.Protobuf.Timestamp, json_name: "createTime"
  field :update_time, 10, type: Google.Protobuf.Timestamp, json_name: "updateTime"

  field :labels, 11,
    repeated: true,
    type: Google.Cloud.Security.Privateca.V1beta1.Certificate.LabelsEntry,
    map: true

  def transform_module(), do: nil
end

defmodule Google.Cloud.Security.Privateca.V1beta1.ReusableConfig.LabelsEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: String.t()
        }

  defstruct [:key, :value]

  field :key, 1, type: :string
  field :value, 2, type: :string

  def transform_module(), do: nil
end

defmodule Google.Cloud.Security.Privateca.V1beta1.ReusableConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          values: Google.Cloud.Security.Privateca.V1beta1.ReusableConfigValues.t() | nil,
          description: String.t(),
          create_time: Google.Protobuf.Timestamp.t() | nil,
          update_time: Google.Protobuf.Timestamp.t() | nil,
          labels: %{String.t() => String.t()}
        }

  defstruct [:name, :values, :description, :create_time, :update_time, :labels]

  field :name, 1, type: :string
  field :values, 2, type: Google.Cloud.Security.Privateca.V1beta1.ReusableConfigValues
  field :description, 3, type: :string
  field :create_time, 4, type: Google.Protobuf.Timestamp, json_name: "createTime"
  field :update_time, 5, type: Google.Protobuf.Timestamp, json_name: "updateTime"

  field :labels, 6,
    repeated: true,
    type: Google.Cloud.Security.Privateca.V1beta1.ReusableConfig.LabelsEntry,
    map: true

  def transform_module(), do: nil
end

defmodule Google.Cloud.Security.Privateca.V1beta1.ReusableConfigValues.CaOptions do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          is_ca: Google.Protobuf.BoolValue.t() | nil,
          max_issuer_path_length: Google.Protobuf.Int32Value.t() | nil
        }

  defstruct [:is_ca, :max_issuer_path_length]

  field :is_ca, 1, type: Google.Protobuf.BoolValue, json_name: "isCa"

  field :max_issuer_path_length, 2,
    type: Google.Protobuf.Int32Value,
    json_name: "maxIssuerPathLength"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Security.Privateca.V1beta1.ReusableConfigValues do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          key_usage: Google.Cloud.Security.Privateca.V1beta1.KeyUsage.t() | nil,
          ca_options:
            Google.Cloud.Security.Privateca.V1beta1.ReusableConfigValues.CaOptions.t() | nil,
          policy_ids: [Google.Cloud.Security.Privateca.V1beta1.ObjectId.t()],
          aia_ocsp_servers: [String.t()],
          additional_extensions: [Google.Cloud.Security.Privateca.V1beta1.X509Extension.t()]
        }

  defstruct [:key_usage, :ca_options, :policy_ids, :aia_ocsp_servers, :additional_extensions]

  field :key_usage, 1,
    type: Google.Cloud.Security.Privateca.V1beta1.KeyUsage,
    json_name: "keyUsage"

  field :ca_options, 2,
    type: Google.Cloud.Security.Privateca.V1beta1.ReusableConfigValues.CaOptions,
    json_name: "caOptions"

  field :policy_ids, 3,
    repeated: true,
    type: Google.Cloud.Security.Privateca.V1beta1.ObjectId,
    json_name: "policyIds"

  field :aia_ocsp_servers, 4, repeated: true, type: :string, json_name: "aiaOcspServers"

  field :additional_extensions, 5,
    repeated: true,
    type: Google.Cloud.Security.Privateca.V1beta1.X509Extension,
    json_name: "additionalExtensions"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Security.Privateca.V1beta1.ReusableConfigWrapper do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          config_values:
            {:reusable_config, String.t()}
            | {:reusable_config_values,
               Google.Cloud.Security.Privateca.V1beta1.ReusableConfigValues.t() | nil}
        }

  defstruct [:config_values]

  oneof :config_values, 0

  field :reusable_config, 1, type: :string, json_name: "reusableConfig", oneof: 0

  field :reusable_config_values, 2,
    type: Google.Cloud.Security.Privateca.V1beta1.ReusableConfigValues,
    json_name: "reusableConfigValues",
    oneof: 0

  def transform_module(), do: nil
end

defmodule Google.Cloud.Security.Privateca.V1beta1.SubordinateConfig.SubordinateConfigChain do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          pem_certificates: [String.t()]
        }

  defstruct [:pem_certificates]

  field :pem_certificates, 1, repeated: true, type: :string, json_name: "pemCertificates"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Security.Privateca.V1beta1.SubordinateConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          subordinate_config:
            {:certificate_authority, String.t()}
            | {:pem_issuer_chain,
               Google.Cloud.Security.Privateca.V1beta1.SubordinateConfig.SubordinateConfigChain.t()
               | nil}
        }

  defstruct [:subordinate_config]

  oneof :subordinate_config, 0

  field :certificate_authority, 1, type: :string, json_name: "certificateAuthority", oneof: 0

  field :pem_issuer_chain, 2,
    type: Google.Cloud.Security.Privateca.V1beta1.SubordinateConfig.SubordinateConfigChain,
    json_name: "pemIssuerChain",
    oneof: 0

  def transform_module(), do: nil
end

defmodule Google.Cloud.Security.Privateca.V1beta1.PublicKey do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          type: Google.Cloud.Security.Privateca.V1beta1.PublicKey.KeyType.t(),
          key: binary
        }

  defstruct [:type, :key]

  field :type, 1, type: Google.Cloud.Security.Privateca.V1beta1.PublicKey.KeyType, enum: true
  field :key, 2, type: :bytes

  def transform_module(), do: nil
end

defmodule Google.Cloud.Security.Privateca.V1beta1.CertificateConfig.SubjectConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          subject: Google.Cloud.Security.Privateca.V1beta1.Subject.t() | nil,
          common_name: String.t(),
          subject_alt_name: Google.Cloud.Security.Privateca.V1beta1.SubjectAltNames.t() | nil
        }

  defstruct [:subject, :common_name, :subject_alt_name]

  field :subject, 1, type: Google.Cloud.Security.Privateca.V1beta1.Subject
  field :common_name, 2, type: :string, json_name: "commonName"

  field :subject_alt_name, 3,
    type: Google.Cloud.Security.Privateca.V1beta1.SubjectAltNames,
    json_name: "subjectAltName"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Security.Privateca.V1beta1.CertificateConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          subject_config:
            Google.Cloud.Security.Privateca.V1beta1.CertificateConfig.SubjectConfig.t() | nil,
          reusable_config:
            Google.Cloud.Security.Privateca.V1beta1.ReusableConfigWrapper.t() | nil,
          public_key: Google.Cloud.Security.Privateca.V1beta1.PublicKey.t() | nil
        }

  defstruct [:subject_config, :reusable_config, :public_key]

  field :subject_config, 1,
    type: Google.Cloud.Security.Privateca.V1beta1.CertificateConfig.SubjectConfig,
    json_name: "subjectConfig"

  field :reusable_config, 2,
    type: Google.Cloud.Security.Privateca.V1beta1.ReusableConfigWrapper,
    json_name: "reusableConfig"

  field :public_key, 3,
    type: Google.Cloud.Security.Privateca.V1beta1.PublicKey,
    json_name: "publicKey"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Security.Privateca.V1beta1.CertificateDescription.SubjectDescription do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          subject: Google.Cloud.Security.Privateca.V1beta1.Subject.t() | nil,
          common_name: String.t(),
          subject_alt_name: Google.Cloud.Security.Privateca.V1beta1.SubjectAltNames.t() | nil,
          hex_serial_number: String.t(),
          lifetime: Google.Protobuf.Duration.t() | nil,
          not_before_time: Google.Protobuf.Timestamp.t() | nil,
          not_after_time: Google.Protobuf.Timestamp.t() | nil
        }

  defstruct [
    :subject,
    :common_name,
    :subject_alt_name,
    :hex_serial_number,
    :lifetime,
    :not_before_time,
    :not_after_time
  ]

  field :subject, 1, type: Google.Cloud.Security.Privateca.V1beta1.Subject
  field :common_name, 2, type: :string, json_name: "commonName"

  field :subject_alt_name, 3,
    type: Google.Cloud.Security.Privateca.V1beta1.SubjectAltNames,
    json_name: "subjectAltName"

  field :hex_serial_number, 4, type: :string, json_name: "hexSerialNumber"
  field :lifetime, 5, type: Google.Protobuf.Duration
  field :not_before_time, 6, type: Google.Protobuf.Timestamp, json_name: "notBeforeTime"
  field :not_after_time, 7, type: Google.Protobuf.Timestamp, json_name: "notAfterTime"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Security.Privateca.V1beta1.CertificateDescription.KeyId do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          key_id: String.t()
        }

  defstruct [:key_id]

  field :key_id, 1, type: :string, json_name: "keyId"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Security.Privateca.V1beta1.CertificateDescription.CertificateFingerprint do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          sha256_hash: String.t()
        }

  defstruct [:sha256_hash]

  field :sha256_hash, 1, type: :string, json_name: "sha256Hash"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Security.Privateca.V1beta1.CertificateDescription do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          subject_description:
            Google.Cloud.Security.Privateca.V1beta1.CertificateDescription.SubjectDescription.t()
            | nil,
          config_values: Google.Cloud.Security.Privateca.V1beta1.ReusableConfigValues.t() | nil,
          public_key: Google.Cloud.Security.Privateca.V1beta1.PublicKey.t() | nil,
          subject_key_id:
            Google.Cloud.Security.Privateca.V1beta1.CertificateDescription.KeyId.t() | nil,
          authority_key_id:
            Google.Cloud.Security.Privateca.V1beta1.CertificateDescription.KeyId.t() | nil,
          crl_distribution_points: [String.t()],
          aia_issuing_certificate_urls: [String.t()],
          cert_fingerprint:
            Google.Cloud.Security.Privateca.V1beta1.CertificateDescription.CertificateFingerprint.t()
            | nil
        }

  defstruct [
    :subject_description,
    :config_values,
    :public_key,
    :subject_key_id,
    :authority_key_id,
    :crl_distribution_points,
    :aia_issuing_certificate_urls,
    :cert_fingerprint
  ]

  field :subject_description, 1,
    type: Google.Cloud.Security.Privateca.V1beta1.CertificateDescription.SubjectDescription,
    json_name: "subjectDescription"

  field :config_values, 2,
    type: Google.Cloud.Security.Privateca.V1beta1.ReusableConfigValues,
    json_name: "configValues"

  field :public_key, 3,
    type: Google.Cloud.Security.Privateca.V1beta1.PublicKey,
    json_name: "publicKey"

  field :subject_key_id, 4,
    type: Google.Cloud.Security.Privateca.V1beta1.CertificateDescription.KeyId,
    json_name: "subjectKeyId"

  field :authority_key_id, 5,
    type: Google.Cloud.Security.Privateca.V1beta1.CertificateDescription.KeyId,
    json_name: "authorityKeyId"

  field :crl_distribution_points, 6,
    repeated: true,
    type: :string,
    json_name: "crlDistributionPoints"

  field :aia_issuing_certificate_urls, 7,
    repeated: true,
    type: :string,
    json_name: "aiaIssuingCertificateUrls"

  field :cert_fingerprint, 8,
    type: Google.Cloud.Security.Privateca.V1beta1.CertificateDescription.CertificateFingerprint,
    json_name: "certFingerprint"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Security.Privateca.V1beta1.ObjectId do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          object_id_path: [integer]
        }

  defstruct [:object_id_path]

  field :object_id_path, 1, repeated: true, type: :int32, json_name: "objectIdPath"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Security.Privateca.V1beta1.X509Extension do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          object_id: Google.Cloud.Security.Privateca.V1beta1.ObjectId.t() | nil,
          critical: boolean,
          value: binary
        }

  defstruct [:object_id, :critical, :value]

  field :object_id, 1,
    type: Google.Cloud.Security.Privateca.V1beta1.ObjectId,
    json_name: "objectId"

  field :critical, 2, type: :bool
  field :value, 3, type: :bytes

  def transform_module(), do: nil
end

defmodule Google.Cloud.Security.Privateca.V1beta1.KeyUsage.KeyUsageOptions do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          digital_signature: boolean,
          content_commitment: boolean,
          key_encipherment: boolean,
          data_encipherment: boolean,
          key_agreement: boolean,
          cert_sign: boolean,
          crl_sign: boolean,
          encipher_only: boolean,
          decipher_only: boolean
        }

  defstruct [
    :digital_signature,
    :content_commitment,
    :key_encipherment,
    :data_encipherment,
    :key_agreement,
    :cert_sign,
    :crl_sign,
    :encipher_only,
    :decipher_only
  ]

  field :digital_signature, 1, type: :bool, json_name: "digitalSignature"
  field :content_commitment, 2, type: :bool, json_name: "contentCommitment"
  field :key_encipherment, 3, type: :bool, json_name: "keyEncipherment"
  field :data_encipherment, 4, type: :bool, json_name: "dataEncipherment"
  field :key_agreement, 5, type: :bool, json_name: "keyAgreement"
  field :cert_sign, 6, type: :bool, json_name: "certSign"
  field :crl_sign, 7, type: :bool, json_name: "crlSign"
  field :encipher_only, 8, type: :bool, json_name: "encipherOnly"
  field :decipher_only, 9, type: :bool, json_name: "decipherOnly"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Security.Privateca.V1beta1.KeyUsage.ExtendedKeyUsageOptions do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          server_auth: boolean,
          client_auth: boolean,
          code_signing: boolean,
          email_protection: boolean,
          time_stamping: boolean,
          ocsp_signing: boolean
        }

  defstruct [
    :server_auth,
    :client_auth,
    :code_signing,
    :email_protection,
    :time_stamping,
    :ocsp_signing
  ]

  field :server_auth, 1, type: :bool, json_name: "serverAuth"
  field :client_auth, 2, type: :bool, json_name: "clientAuth"
  field :code_signing, 3, type: :bool, json_name: "codeSigning"
  field :email_protection, 4, type: :bool, json_name: "emailProtection"
  field :time_stamping, 5, type: :bool, json_name: "timeStamping"
  field :ocsp_signing, 6, type: :bool, json_name: "ocspSigning"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Security.Privateca.V1beta1.KeyUsage do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          base_key_usage:
            Google.Cloud.Security.Privateca.V1beta1.KeyUsage.KeyUsageOptions.t() | nil,
          extended_key_usage:
            Google.Cloud.Security.Privateca.V1beta1.KeyUsage.ExtendedKeyUsageOptions.t() | nil,
          unknown_extended_key_usages: [Google.Cloud.Security.Privateca.V1beta1.ObjectId.t()]
        }

  defstruct [:base_key_usage, :extended_key_usage, :unknown_extended_key_usages]

  field :base_key_usage, 1,
    type: Google.Cloud.Security.Privateca.V1beta1.KeyUsage.KeyUsageOptions,
    json_name: "baseKeyUsage"

  field :extended_key_usage, 2,
    type: Google.Cloud.Security.Privateca.V1beta1.KeyUsage.ExtendedKeyUsageOptions,
    json_name: "extendedKeyUsage"

  field :unknown_extended_key_usages, 3,
    repeated: true,
    type: Google.Cloud.Security.Privateca.V1beta1.ObjectId,
    json_name: "unknownExtendedKeyUsages"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Security.Privateca.V1beta1.Subject do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          country_code: String.t(),
          organization: String.t(),
          organizational_unit: String.t(),
          locality: String.t(),
          province: String.t(),
          street_address: String.t(),
          postal_code: String.t()
        }

  defstruct [
    :country_code,
    :organization,
    :organizational_unit,
    :locality,
    :province,
    :street_address,
    :postal_code
  ]

  field :country_code, 1, type: :string, json_name: "countryCode"
  field :organization, 2, type: :string
  field :organizational_unit, 3, type: :string, json_name: "organizationalUnit"
  field :locality, 4, type: :string
  field :province, 5, type: :string
  field :street_address, 6, type: :string, json_name: "streetAddress"
  field :postal_code, 7, type: :string, json_name: "postalCode"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Security.Privateca.V1beta1.SubjectAltNames do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          dns_names: [String.t()],
          uris: [String.t()],
          email_addresses: [String.t()],
          ip_addresses: [String.t()],
          custom_sans: [Google.Cloud.Security.Privateca.V1beta1.X509Extension.t()]
        }

  defstruct [:dns_names, :uris, :email_addresses, :ip_addresses, :custom_sans]

  field :dns_names, 1, repeated: true, type: :string, json_name: "dnsNames"
  field :uris, 2, repeated: true, type: :string
  field :email_addresses, 3, repeated: true, type: :string, json_name: "emailAddresses"
  field :ip_addresses, 4, repeated: true, type: :string, json_name: "ipAddresses"

  field :custom_sans, 5,
    repeated: true,
    type: Google.Cloud.Security.Privateca.V1beta1.X509Extension,
    json_name: "customSans"

  def transform_module(), do: nil
end
