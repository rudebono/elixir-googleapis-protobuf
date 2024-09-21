defmodule Google.Cloud.Security.Privateca.V1beta1.RevocationReason do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

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

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :TYPE_UNSPECIFIED, 0
  field :SELF_SIGNED, 1
  field :SUBORDINATE, 2
end

defmodule Google.Cloud.Security.Privateca.V1beta1.CertificateAuthority.Tier do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :TIER_UNSPECIFIED, 0
  field :ENTERPRISE, 1
  field :DEVOPS, 2
end

defmodule Google.Cloud.Security.Privateca.V1beta1.CertificateAuthority.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :ENABLED, 1
  field :DISABLED, 2
  field :PENDING_ACTIVATION, 3
  field :PENDING_DELETION, 4
end

defmodule Google.Cloud.Security.Privateca.V1beta1.CertificateAuthority.SignHashAlgorithm do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

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

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :ACTIVE, 1
  field :SUPERSEDED, 2
end

defmodule Google.Cloud.Security.Privateca.V1beta1.PublicKey.KeyType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :KEY_TYPE_UNSPECIFIED, 0
  field :PEM_RSA_KEY, 1
  field :PEM_EC_KEY, 2
end

defmodule Google.Cloud.Security.Privateca.V1beta1.CertificateAuthority.IssuingOptions do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :include_ca_cert_url, 1, type: :bool, json_name: "includeCaCertUrl", deprecated: false

  field :include_crl_access_url, 2,
    type: :bool,
    json_name: "includeCrlAccessUrl",
    deprecated: false
end

defmodule Google.Cloud.Security.Privateca.V1beta1.CertificateAuthority.CertificateAuthorityPolicy.AllowedConfigList do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :allowed_config_values, 1,
    repeated: true,
    type: Google.Cloud.Security.Privateca.V1beta1.ReusableConfigWrapper,
    json_name: "allowedConfigValues",
    deprecated: false
end

defmodule Google.Cloud.Security.Privateca.V1beta1.CertificateAuthority.CertificateAuthorityPolicy.AllowedSubjectAltNames do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :allowed_dns_names, 1,
    repeated: true,
    type: :string,
    json_name: "allowedDnsNames",
    deprecated: false

  field :allowed_uris, 2,
    repeated: true,
    type: :string,
    json_name: "allowedUris",
    deprecated: false

  field :allowed_email_addresses, 3,
    repeated: true,
    type: :string,
    json_name: "allowedEmailAddresses",
    deprecated: false

  field :allowed_ips, 4, repeated: true, type: :string, json_name: "allowedIps", deprecated: false

  field :allow_globbing_dns_wildcards, 5,
    type: :bool,
    json_name: "allowGlobbingDnsWildcards",
    deprecated: false

  field :allow_custom_sans, 6, type: :bool, json_name: "allowCustomSans", deprecated: false
end

defmodule Google.Cloud.Security.Privateca.V1beta1.CertificateAuthority.CertificateAuthorityPolicy.IssuanceModes do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :allow_csr_based_issuance, 1,
    type: :bool,
    json_name: "allowCsrBasedIssuance",
    deprecated: false

  field :allow_config_based_issuance, 2,
    type: :bool,
    json_name: "allowConfigBasedIssuance",
    deprecated: false
end

defmodule Google.Cloud.Security.Privateca.V1beta1.CertificateAuthority.CertificateAuthorityPolicy do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  oneof :config_policy, 0

  field :allowed_config_list, 1,
    type:
      Google.Cloud.Security.Privateca.V1beta1.CertificateAuthority.CertificateAuthorityPolicy.AllowedConfigList,
    json_name: "allowedConfigList",
    oneof: 0,
    deprecated: false

  field :overwrite_config_values, 2,
    type: Google.Cloud.Security.Privateca.V1beta1.ReusableConfigWrapper,
    json_name: "overwriteConfigValues",
    oneof: 0,
    deprecated: false

  field :allowed_locations_and_organizations, 3,
    repeated: true,
    type: Google.Cloud.Security.Privateca.V1beta1.Subject,
    json_name: "allowedLocationsAndOrganizations",
    deprecated: false

  field :allowed_common_names, 4,
    repeated: true,
    type: :string,
    json_name: "allowedCommonNames",
    deprecated: false

  field :allowed_sans, 5,
    type:
      Google.Cloud.Security.Privateca.V1beta1.CertificateAuthority.CertificateAuthorityPolicy.AllowedSubjectAltNames,
    json_name: "allowedSans",
    deprecated: false

  field :maximum_lifetime, 6,
    type: Google.Protobuf.Duration,
    json_name: "maximumLifetime",
    deprecated: false

  field :allowed_issuance_modes, 8,
    type:
      Google.Cloud.Security.Privateca.V1beta1.CertificateAuthority.CertificateAuthorityPolicy.IssuanceModes,
    json_name: "allowedIssuanceModes",
    deprecated: false
end

defmodule Google.Cloud.Security.Privateca.V1beta1.CertificateAuthority.AccessUrls do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :ca_certificate_access_url, 1, type: :string, json_name: "caCertificateAccessUrl"
  field :crl_access_url, 2, type: :string, json_name: "crlAccessUrl"
end

defmodule Google.Cloud.Security.Privateca.V1beta1.CertificateAuthority.KeyVersionSpec do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  oneof :KeyVersion, 0

  field :cloud_kms_key_version, 1,
    type: :string,
    json_name: "cloudKmsKeyVersion",
    oneof: 0,
    deprecated: false

  field :algorithm, 2,
    type: Google.Cloud.Security.Privateca.V1beta1.CertificateAuthority.SignHashAlgorithm,
    enum: true,
    oneof: 0,
    deprecated: false
end

defmodule Google.Cloud.Security.Privateca.V1beta1.CertificateAuthority.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Security.Privateca.V1beta1.CertificateAuthority do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

  field :type, 2,
    type: Google.Cloud.Security.Privateca.V1beta1.CertificateAuthority.Type,
    enum: true,
    deprecated: false

  field :tier, 3,
    type: Google.Cloud.Security.Privateca.V1beta1.CertificateAuthority.Tier,
    enum: true,
    deprecated: false

  field :config, 4,
    type: Google.Cloud.Security.Privateca.V1beta1.CertificateConfig,
    deprecated: false

  field :lifetime, 5, type: Google.Protobuf.Duration, deprecated: false

  field :key_spec, 6,
    type: Google.Cloud.Security.Privateca.V1beta1.CertificateAuthority.KeyVersionSpec,
    json_name: "keySpec",
    deprecated: false

  field :certificate_policy, 7,
    type: Google.Cloud.Security.Privateca.V1beta1.CertificateAuthority.CertificateAuthorityPolicy,
    json_name: "certificatePolicy",
    deprecated: false

  field :issuing_options, 8,
    type: Google.Cloud.Security.Privateca.V1beta1.CertificateAuthority.IssuingOptions,
    json_name: "issuingOptions",
    deprecated: false

  field :subordinate_config, 19,
    type: Google.Cloud.Security.Privateca.V1beta1.SubordinateConfig,
    json_name: "subordinateConfig",
    deprecated: false

  field :state, 10,
    type: Google.Cloud.Security.Privateca.V1beta1.CertificateAuthority.State,
    enum: true,
    deprecated: false

  field :pem_ca_certificates, 9,
    repeated: true,
    type: :string,
    json_name: "pemCaCertificates",
    deprecated: false

  field :ca_certificate_descriptions, 12,
    repeated: true,
    type: Google.Cloud.Security.Privateca.V1beta1.CertificateDescription,
    json_name: "caCertificateDescriptions",
    deprecated: false

  field :gcs_bucket, 13, type: :string, json_name: "gcsBucket", deprecated: false

  field :access_urls, 14,
    type: Google.Cloud.Security.Privateca.V1beta1.CertificateAuthority.AccessUrls,
    json_name: "accessUrls",
    deprecated: false

  field :create_time, 15,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 16,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :delete_time, 17,
    type: Google.Protobuf.Timestamp,
    json_name: "deleteTime",
    deprecated: false

  field :labels, 18,
    repeated: true,
    type: Google.Cloud.Security.Privateca.V1beta1.CertificateAuthority.LabelsEntry,
    map: true,
    deprecated: false
end

defmodule Google.Cloud.Security.Privateca.V1beta1.CertificateRevocationList.RevokedCertificate do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :certificate, 1, type: :string
  field :hex_serial_number, 2, type: :string, json_name: "hexSerialNumber"

  field :revocation_reason, 3,
    type: Google.Cloud.Security.Privateca.V1beta1.RevocationReason,
    json_name: "revocationReason",
    enum: true
end

defmodule Google.Cloud.Security.Privateca.V1beta1.CertificateRevocationList.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Security.Privateca.V1beta1.CertificateRevocationList do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :sequence_number, 2, type: :int64, json_name: "sequenceNumber", deprecated: false

  field :revoked_certificates, 3,
    repeated: true,
    type: Google.Cloud.Security.Privateca.V1beta1.CertificateRevocationList.RevokedCertificate,
    json_name: "revokedCertificates",
    deprecated: false

  field :pem_crl, 4, type: :string, json_name: "pemCrl", deprecated: false
  field :access_url, 5, type: :string, json_name: "accessUrl", deprecated: false

  field :state, 6,
    type: Google.Cloud.Security.Privateca.V1beta1.CertificateRevocationList.State,
    enum: true,
    deprecated: false

  field :create_time, 7,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 8,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :labels, 9,
    repeated: true,
    type: Google.Cloud.Security.Privateca.V1beta1.CertificateRevocationList.LabelsEntry,
    map: true,
    deprecated: false
end

defmodule Google.Cloud.Security.Privateca.V1beta1.Certificate.RevocationDetails do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :revocation_state, 1,
    type: Google.Cloud.Security.Privateca.V1beta1.RevocationReason,
    json_name: "revocationState",
    enum: true

  field :revocation_time, 2, type: Google.Protobuf.Timestamp, json_name: "revocationTime"
end

defmodule Google.Cloud.Security.Privateca.V1beta1.Certificate.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Security.Privateca.V1beta1.Certificate do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  oneof :certificate_config, 0

  field :name, 1, type: :string, deprecated: false
  field :pem_csr, 2, type: :string, json_name: "pemCsr", oneof: 0, deprecated: false

  field :config, 3,
    type: Google.Cloud.Security.Privateca.V1beta1.CertificateConfig,
    oneof: 0,
    deprecated: false

  field :lifetime, 4, type: Google.Protobuf.Duration, deprecated: false

  field :revocation_details, 5,
    type: Google.Cloud.Security.Privateca.V1beta1.Certificate.RevocationDetails,
    json_name: "revocationDetails",
    deprecated: false

  field :pem_certificate, 6, type: :string, json_name: "pemCertificate", deprecated: false

  field :certificate_description, 7,
    type: Google.Cloud.Security.Privateca.V1beta1.CertificateDescription,
    json_name: "certificateDescription",
    deprecated: false

  field :pem_certificate_chain, 8,
    repeated: true,
    type: :string,
    json_name: "pemCertificateChain",
    deprecated: false

  field :create_time, 9,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 10,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :labels, 11,
    repeated: true,
    type: Google.Cloud.Security.Privateca.V1beta1.Certificate.LabelsEntry,
    map: true,
    deprecated: false
end

defmodule Google.Cloud.Security.Privateca.V1beta1.ReusableConfig.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Security.Privateca.V1beta1.ReusableConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

  field :values, 2,
    type: Google.Cloud.Security.Privateca.V1beta1.ReusableConfigValues,
    deprecated: false

  field :description, 3, type: :string, deprecated: false

  field :create_time, 4,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 5,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :labels, 6,
    repeated: true,
    type: Google.Cloud.Security.Privateca.V1beta1.ReusableConfig.LabelsEntry,
    map: true,
    deprecated: false
end

defmodule Google.Cloud.Security.Privateca.V1beta1.ReusableConfigValues.CaOptions do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :is_ca, 1, type: Google.Protobuf.BoolValue, json_name: "isCa", deprecated: false

  field :max_issuer_path_length, 2,
    type: Google.Protobuf.Int32Value,
    json_name: "maxIssuerPathLength",
    deprecated: false
end

defmodule Google.Cloud.Security.Privateca.V1beta1.ReusableConfigValues do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :key_usage, 1,
    type: Google.Cloud.Security.Privateca.V1beta1.KeyUsage,
    json_name: "keyUsage",
    deprecated: false

  field :ca_options, 2,
    type: Google.Cloud.Security.Privateca.V1beta1.ReusableConfigValues.CaOptions,
    json_name: "caOptions",
    deprecated: false

  field :policy_ids, 3,
    repeated: true,
    type: Google.Cloud.Security.Privateca.V1beta1.ObjectId,
    json_name: "policyIds",
    deprecated: false

  field :aia_ocsp_servers, 4,
    repeated: true,
    type: :string,
    json_name: "aiaOcspServers",
    deprecated: false

  field :additional_extensions, 5,
    repeated: true,
    type: Google.Cloud.Security.Privateca.V1beta1.X509Extension,
    json_name: "additionalExtensions",
    deprecated: false
end

defmodule Google.Cloud.Security.Privateca.V1beta1.ReusableConfigWrapper do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  oneof :config_values, 0

  field :reusable_config, 1,
    type: :string,
    json_name: "reusableConfig",
    oneof: 0,
    deprecated: false

  field :reusable_config_values, 2,
    type: Google.Cloud.Security.Privateca.V1beta1.ReusableConfigValues,
    json_name: "reusableConfigValues",
    oneof: 0,
    deprecated: false
end

defmodule Google.Cloud.Security.Privateca.V1beta1.SubordinateConfig.SubordinateConfigChain do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :pem_certificates, 1,
    repeated: true,
    type: :string,
    json_name: "pemCertificates",
    deprecated: false
end

defmodule Google.Cloud.Security.Privateca.V1beta1.SubordinateConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  oneof :subordinate_config, 0

  field :certificate_authority, 1,
    type: :string,
    json_name: "certificateAuthority",
    oneof: 0,
    deprecated: false

  field :pem_issuer_chain, 2,
    type: Google.Cloud.Security.Privateca.V1beta1.SubordinateConfig.SubordinateConfigChain,
    json_name: "pemIssuerChain",
    oneof: 0,
    deprecated: false
end

defmodule Google.Cloud.Security.Privateca.V1beta1.PublicKey do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :type, 1,
    type: Google.Cloud.Security.Privateca.V1beta1.PublicKey.KeyType,
    enum: true,
    deprecated: false

  field :key, 2, type: :bytes, deprecated: false
end

defmodule Google.Cloud.Security.Privateca.V1beta1.CertificateConfig.SubjectConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :subject, 1, type: Google.Cloud.Security.Privateca.V1beta1.Subject, deprecated: false
  field :common_name, 2, type: :string, json_name: "commonName", deprecated: false

  field :subject_alt_name, 3,
    type: Google.Cloud.Security.Privateca.V1beta1.SubjectAltNames,
    json_name: "subjectAltName",
    deprecated: false
end

defmodule Google.Cloud.Security.Privateca.V1beta1.CertificateConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :subject_config, 1,
    type: Google.Cloud.Security.Privateca.V1beta1.CertificateConfig.SubjectConfig,
    json_name: "subjectConfig",
    deprecated: false

  field :reusable_config, 2,
    type: Google.Cloud.Security.Privateca.V1beta1.ReusableConfigWrapper,
    json_name: "reusableConfig",
    deprecated: false

  field :public_key, 3,
    type: Google.Cloud.Security.Privateca.V1beta1.PublicKey,
    json_name: "publicKey",
    deprecated: false
end

defmodule Google.Cloud.Security.Privateca.V1beta1.CertificateDescription.SubjectDescription do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :subject, 1, type: Google.Cloud.Security.Privateca.V1beta1.Subject
  field :common_name, 2, type: :string, json_name: "commonName"

  field :subject_alt_name, 3,
    type: Google.Cloud.Security.Privateca.V1beta1.SubjectAltNames,
    json_name: "subjectAltName"

  field :hex_serial_number, 4, type: :string, json_name: "hexSerialNumber"
  field :lifetime, 5, type: Google.Protobuf.Duration
  field :not_before_time, 6, type: Google.Protobuf.Timestamp, json_name: "notBeforeTime"
  field :not_after_time, 7, type: Google.Protobuf.Timestamp, json_name: "notAfterTime"
end

defmodule Google.Cloud.Security.Privateca.V1beta1.CertificateDescription.KeyId do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :key_id, 1, type: :string, json_name: "keyId", deprecated: false
end

defmodule Google.Cloud.Security.Privateca.V1beta1.CertificateDescription.CertificateFingerprint do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :sha256_hash, 1, type: :string, json_name: "sha256Hash"
end

defmodule Google.Cloud.Security.Privateca.V1beta1.CertificateDescription do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

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
end

defmodule Google.Cloud.Security.Privateca.V1beta1.ObjectId do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :object_id_path, 1,
    repeated: true,
    type: :int32,
    json_name: "objectIdPath",
    deprecated: false
end

defmodule Google.Cloud.Security.Privateca.V1beta1.X509Extension do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :object_id, 1,
    type: Google.Cloud.Security.Privateca.V1beta1.ObjectId,
    json_name: "objectId",
    deprecated: false

  field :critical, 2, type: :bool, deprecated: false
  field :value, 3, type: :bytes, deprecated: false
end

defmodule Google.Cloud.Security.Privateca.V1beta1.KeyUsage.KeyUsageOptions do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :digital_signature, 1, type: :bool, json_name: "digitalSignature"
  field :content_commitment, 2, type: :bool, json_name: "contentCommitment"
  field :key_encipherment, 3, type: :bool, json_name: "keyEncipherment"
  field :data_encipherment, 4, type: :bool, json_name: "dataEncipherment"
  field :key_agreement, 5, type: :bool, json_name: "keyAgreement"
  field :cert_sign, 6, type: :bool, json_name: "certSign"
  field :crl_sign, 7, type: :bool, json_name: "crlSign"
  field :encipher_only, 8, type: :bool, json_name: "encipherOnly"
  field :decipher_only, 9, type: :bool, json_name: "decipherOnly"
end

defmodule Google.Cloud.Security.Privateca.V1beta1.KeyUsage.ExtendedKeyUsageOptions do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :server_auth, 1, type: :bool, json_name: "serverAuth"
  field :client_auth, 2, type: :bool, json_name: "clientAuth"
  field :code_signing, 3, type: :bool, json_name: "codeSigning"
  field :email_protection, 4, type: :bool, json_name: "emailProtection"
  field :time_stamping, 5, type: :bool, json_name: "timeStamping"
  field :ocsp_signing, 6, type: :bool, json_name: "ocspSigning"
end

defmodule Google.Cloud.Security.Privateca.V1beta1.KeyUsage do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

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
end

defmodule Google.Cloud.Security.Privateca.V1beta1.Subject do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :country_code, 1, type: :string, json_name: "countryCode"
  field :organization, 2, type: :string
  field :organizational_unit, 3, type: :string, json_name: "organizationalUnit"
  field :locality, 4, type: :string
  field :province, 5, type: :string
  field :street_address, 6, type: :string, json_name: "streetAddress"
  field :postal_code, 7, type: :string, json_name: "postalCode"
end

defmodule Google.Cloud.Security.Privateca.V1beta1.SubjectAltNames do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :dns_names, 1, repeated: true, type: :string, json_name: "dnsNames"
  field :uris, 2, repeated: true, type: :string
  field :email_addresses, 3, repeated: true, type: :string, json_name: "emailAddresses"
  field :ip_addresses, 4, repeated: true, type: :string, json_name: "ipAddresses"

  field :custom_sans, 5,
    repeated: true,
    type: Google.Cloud.Security.Privateca.V1beta1.X509Extension,
    json_name: "customSans"
end