defmodule Google.Cloud.Security.Privateca.V1.RevocationReason do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

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

defmodule Google.Cloud.Security.Privateca.V1.SubjectRequestMode do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :SUBJECT_REQUEST_MODE_UNSPECIFIED, 0
  field :DEFAULT, 1
  field :REFLECTED_SPIFFE, 2
end

defmodule Google.Cloud.Security.Privateca.V1.CertificateAuthority.Type do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :TYPE_UNSPECIFIED, 0
  field :SELF_SIGNED, 1
  field :SUBORDINATE, 2
end

defmodule Google.Cloud.Security.Privateca.V1.CertificateAuthority.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :ENABLED, 1
  field :DISABLED, 2
  field :STAGED, 3
  field :AWAITING_USER_ACTIVATION, 4
  field :DELETED, 5
end

defmodule Google.Cloud.Security.Privateca.V1.CertificateAuthority.SignHashAlgorithm do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

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

defmodule Google.Cloud.Security.Privateca.V1.CaPool.Tier do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :TIER_UNSPECIFIED, 0
  field :ENTERPRISE, 1
  field :DEVOPS, 2
end

defmodule Google.Cloud.Security.Privateca.V1.CaPool.IssuancePolicy.AllowedKeyType.EcKeyType.EcSignatureAlgorithm do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :EC_SIGNATURE_ALGORITHM_UNSPECIFIED, 0
  field :ECDSA_P256, 1
  field :ECDSA_P384, 2
  field :EDDSA_25519, 3
end

defmodule Google.Cloud.Security.Privateca.V1.CertificateRevocationList.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :ACTIVE, 1
  field :SUPERSEDED, 2
end

defmodule Google.Cloud.Security.Privateca.V1.PublicKey.KeyFormat do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :KEY_FORMAT_UNSPECIFIED, 0
  field :PEM, 1
end

defmodule Google.Cloud.Security.Privateca.V1.CertificateExtensionConstraints.KnownCertificateExtension do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :KNOWN_CERTIFICATE_EXTENSION_UNSPECIFIED, 0
  field :BASE_KEY_USAGE, 1
  field :EXTENDED_KEY_USAGE, 2
  field :CA_OPTIONS, 3
  field :POLICY_IDS, 4
  field :AIA_OCSP_SERVERS, 5
  field :NAME_CONSTRAINTS, 6
end

defmodule Google.Cloud.Security.Privateca.V1.CertificateAuthority.AccessUrls do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :ca_certificate_access_url, 1, type: :string, json_name: "caCertificateAccessUrl"
  field :crl_access_urls, 2, repeated: true, type: :string, json_name: "crlAccessUrls"
end

defmodule Google.Cloud.Security.Privateca.V1.CertificateAuthority.KeyVersionSpec do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  oneof :KeyVersion, 0

  field :cloud_kms_key_version, 1, type: :string, json_name: "cloudKmsKeyVersion", oneof: 0

  field :algorithm, 2,
    type: Google.Cloud.Security.Privateca.V1.CertificateAuthority.SignHashAlgorithm,
    enum: true,
    oneof: 0
end

defmodule Google.Cloud.Security.Privateca.V1.CertificateAuthority.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Security.Privateca.V1.CertificateAuthority do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

  field :type, 2,
    type: Google.Cloud.Security.Privateca.V1.CertificateAuthority.Type,
    enum: true,
    deprecated: false

  field :config, 3, type: Google.Cloud.Security.Privateca.V1.CertificateConfig, deprecated: false
  field :lifetime, 4, type: Google.Protobuf.Duration, deprecated: false

  field :key_spec, 5,
    type: Google.Cloud.Security.Privateca.V1.CertificateAuthority.KeyVersionSpec,
    json_name: "keySpec",
    deprecated: false

  field :subordinate_config, 6,
    type: Google.Cloud.Security.Privateca.V1.SubordinateConfig,
    json_name: "subordinateConfig",
    deprecated: false

  field :tier, 7,
    type: Google.Cloud.Security.Privateca.V1.CaPool.Tier,
    enum: true,
    deprecated: false

  field :state, 8,
    type: Google.Cloud.Security.Privateca.V1.CertificateAuthority.State,
    enum: true,
    deprecated: false

  field :pem_ca_certificates, 9,
    repeated: true,
    type: :string,
    json_name: "pemCaCertificates",
    deprecated: false

  field :ca_certificate_descriptions, 10,
    repeated: true,
    type: Google.Cloud.Security.Privateca.V1.CertificateDescription,
    json_name: "caCertificateDescriptions",
    deprecated: false

  field :gcs_bucket, 11, type: :string, json_name: "gcsBucket", deprecated: false

  field :access_urls, 12,
    type: Google.Cloud.Security.Privateca.V1.CertificateAuthority.AccessUrls,
    json_name: "accessUrls",
    deprecated: false

  field :create_time, 13,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 14,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :delete_time, 15,
    type: Google.Protobuf.Timestamp,
    json_name: "deleteTime",
    deprecated: false

  field :expire_time, 16,
    type: Google.Protobuf.Timestamp,
    json_name: "expireTime",
    deprecated: false

  field :labels, 17,
    repeated: true,
    type: Google.Cloud.Security.Privateca.V1.CertificateAuthority.LabelsEntry,
    map: true,
    deprecated: false
end

defmodule Google.Cloud.Security.Privateca.V1.CaPool.PublishingOptions do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :publish_ca_cert, 1, type: :bool, json_name: "publishCaCert", deprecated: false
  field :publish_crl, 2, type: :bool, json_name: "publishCrl", deprecated: false
end

defmodule Google.Cloud.Security.Privateca.V1.CaPool.IssuancePolicy.AllowedKeyType.RsaKeyType do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :min_modulus_size, 1, type: :int64, json_name: "minModulusSize", deprecated: false
  field :max_modulus_size, 2, type: :int64, json_name: "maxModulusSize", deprecated: false
end

defmodule Google.Cloud.Security.Privateca.V1.CaPool.IssuancePolicy.AllowedKeyType.EcKeyType do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :signature_algorithm, 1,
    type:
      Google.Cloud.Security.Privateca.V1.CaPool.IssuancePolicy.AllowedKeyType.EcKeyType.EcSignatureAlgorithm,
    json_name: "signatureAlgorithm",
    enum: true,
    deprecated: false
end

defmodule Google.Cloud.Security.Privateca.V1.CaPool.IssuancePolicy.AllowedKeyType do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  oneof :key_type, 0

  field :rsa, 1,
    type: Google.Cloud.Security.Privateca.V1.CaPool.IssuancePolicy.AllowedKeyType.RsaKeyType,
    oneof: 0

  field :elliptic_curve, 2,
    type: Google.Cloud.Security.Privateca.V1.CaPool.IssuancePolicy.AllowedKeyType.EcKeyType,
    json_name: "ellipticCurve",
    oneof: 0
end

defmodule Google.Cloud.Security.Privateca.V1.CaPool.IssuancePolicy.IssuanceModes do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :allow_csr_based_issuance, 1,
    type: :bool,
    json_name: "allowCsrBasedIssuance",
    deprecated: false

  field :allow_config_based_issuance, 2,
    type: :bool,
    json_name: "allowConfigBasedIssuance",
    deprecated: false
end

defmodule Google.Cloud.Security.Privateca.V1.CaPool.IssuancePolicy do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :allowed_key_types, 1,
    repeated: true,
    type: Google.Cloud.Security.Privateca.V1.CaPool.IssuancePolicy.AllowedKeyType,
    json_name: "allowedKeyTypes",
    deprecated: false

  field :maximum_lifetime, 2,
    type: Google.Protobuf.Duration,
    json_name: "maximumLifetime",
    deprecated: false

  field :allowed_issuance_modes, 3,
    type: Google.Cloud.Security.Privateca.V1.CaPool.IssuancePolicy.IssuanceModes,
    json_name: "allowedIssuanceModes",
    deprecated: false

  field :baseline_values, 4,
    type: Google.Cloud.Security.Privateca.V1.X509Parameters,
    json_name: "baselineValues",
    deprecated: false

  field :identity_constraints, 5,
    type: Google.Cloud.Security.Privateca.V1.CertificateIdentityConstraints,
    json_name: "identityConstraints",
    deprecated: false

  field :passthrough_extensions, 6,
    type: Google.Cloud.Security.Privateca.V1.CertificateExtensionConstraints,
    json_name: "passthroughExtensions",
    deprecated: false
end

defmodule Google.Cloud.Security.Privateca.V1.CaPool.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Security.Privateca.V1.CaPool do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

  field :tier, 2,
    type: Google.Cloud.Security.Privateca.V1.CaPool.Tier,
    enum: true,
    deprecated: false

  field :issuance_policy, 3,
    type: Google.Cloud.Security.Privateca.V1.CaPool.IssuancePolicy,
    json_name: "issuancePolicy",
    deprecated: false

  field :publishing_options, 4,
    type: Google.Cloud.Security.Privateca.V1.CaPool.PublishingOptions,
    json_name: "publishingOptions",
    deprecated: false

  field :labels, 5,
    repeated: true,
    type: Google.Cloud.Security.Privateca.V1.CaPool.LabelsEntry,
    map: true,
    deprecated: false
end

defmodule Google.Cloud.Security.Privateca.V1.CertificateRevocationList.RevokedCertificate do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :certificate, 1, type: :string, deprecated: false
  field :hex_serial_number, 2, type: :string, json_name: "hexSerialNumber"

  field :revocation_reason, 3,
    type: Google.Cloud.Security.Privateca.V1.RevocationReason,
    json_name: "revocationReason",
    enum: true
end

defmodule Google.Cloud.Security.Privateca.V1.CertificateRevocationList.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Security.Privateca.V1.CertificateRevocationList do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :sequence_number, 2, type: :int64, json_name: "sequenceNumber", deprecated: false

  field :revoked_certificates, 3,
    repeated: true,
    type: Google.Cloud.Security.Privateca.V1.CertificateRevocationList.RevokedCertificate,
    json_name: "revokedCertificates",
    deprecated: false

  field :pem_crl, 4, type: :string, json_name: "pemCrl", deprecated: false
  field :access_url, 5, type: :string, json_name: "accessUrl", deprecated: false

  field :state, 6,
    type: Google.Cloud.Security.Privateca.V1.CertificateRevocationList.State,
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

  field :revision_id, 9, type: :string, json_name: "revisionId", deprecated: false

  field :labels, 10,
    repeated: true,
    type: Google.Cloud.Security.Privateca.V1.CertificateRevocationList.LabelsEntry,
    map: true,
    deprecated: false
end

defmodule Google.Cloud.Security.Privateca.V1.Certificate.RevocationDetails do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :revocation_state, 1,
    type: Google.Cloud.Security.Privateca.V1.RevocationReason,
    json_name: "revocationState",
    enum: true

  field :revocation_time, 2, type: Google.Protobuf.Timestamp, json_name: "revocationTime"
end

defmodule Google.Cloud.Security.Privateca.V1.Certificate.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Security.Privateca.V1.Certificate do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  oneof :certificate_config, 0

  field :name, 1, type: :string, deprecated: false
  field :pem_csr, 2, type: :string, json_name: "pemCsr", oneof: 0, deprecated: false

  field :config, 3,
    type: Google.Cloud.Security.Privateca.V1.CertificateConfig,
    oneof: 0,
    deprecated: false

  field :issuer_certificate_authority, 4,
    type: :string,
    json_name: "issuerCertificateAuthority",
    deprecated: false

  field :lifetime, 5, type: Google.Protobuf.Duration, deprecated: false

  field :certificate_template, 6,
    type: :string,
    json_name: "certificateTemplate",
    deprecated: false

  field :subject_mode, 7,
    type: Google.Cloud.Security.Privateca.V1.SubjectRequestMode,
    json_name: "subjectMode",
    enum: true,
    deprecated: false

  field :revocation_details, 8,
    type: Google.Cloud.Security.Privateca.V1.Certificate.RevocationDetails,
    json_name: "revocationDetails",
    deprecated: false

  field :pem_certificate, 9, type: :string, json_name: "pemCertificate", deprecated: false

  field :certificate_description, 10,
    type: Google.Cloud.Security.Privateca.V1.CertificateDescription,
    json_name: "certificateDescription",
    deprecated: false

  field :pem_certificate_chain, 11,
    repeated: true,
    type: :string,
    json_name: "pemCertificateChain",
    deprecated: false

  field :create_time, 12,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 13,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :labels, 14,
    repeated: true,
    type: Google.Cloud.Security.Privateca.V1.Certificate.LabelsEntry,
    map: true,
    deprecated: false
end

defmodule Google.Cloud.Security.Privateca.V1.CertificateTemplate.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Security.Privateca.V1.CertificateTemplate do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

  field :maximum_lifetime, 9,
    type: Google.Protobuf.Duration,
    json_name: "maximumLifetime",
    deprecated: false

  field :predefined_values, 2,
    type: Google.Cloud.Security.Privateca.V1.X509Parameters,
    json_name: "predefinedValues",
    deprecated: false

  field :identity_constraints, 3,
    type: Google.Cloud.Security.Privateca.V1.CertificateIdentityConstraints,
    json_name: "identityConstraints",
    deprecated: false

  field :passthrough_extensions, 4,
    type: Google.Cloud.Security.Privateca.V1.CertificateExtensionConstraints,
    json_name: "passthroughExtensions",
    deprecated: false

  field :description, 5, type: :string, deprecated: false

  field :create_time, 6,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 7,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :labels, 8,
    repeated: true,
    type: Google.Cloud.Security.Privateca.V1.CertificateTemplate.LabelsEntry,
    map: true,
    deprecated: false
end

defmodule Google.Cloud.Security.Privateca.V1.X509Parameters.CaOptions do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :is_ca, 1, proto3_optional: true, type: :bool, json_name: "isCa", deprecated: false

  field :max_issuer_path_length, 2,
    proto3_optional: true,
    type: :int32,
    json_name: "maxIssuerPathLength",
    deprecated: false
end

defmodule Google.Cloud.Security.Privateca.V1.X509Parameters.NameConstraints do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :critical, 1, type: :bool
  field :permitted_dns_names, 2, repeated: true, type: :string, json_name: "permittedDnsNames"
  field :excluded_dns_names, 3, repeated: true, type: :string, json_name: "excludedDnsNames"
  field :permitted_ip_ranges, 4, repeated: true, type: :string, json_name: "permittedIpRanges"
  field :excluded_ip_ranges, 5, repeated: true, type: :string, json_name: "excludedIpRanges"

  field :permitted_email_addresses, 6,
    repeated: true,
    type: :string,
    json_name: "permittedEmailAddresses"

  field :excluded_email_addresses, 7,
    repeated: true,
    type: :string,
    json_name: "excludedEmailAddresses"

  field :permitted_uris, 8, repeated: true, type: :string, json_name: "permittedUris"
  field :excluded_uris, 9, repeated: true, type: :string, json_name: "excludedUris"
end

defmodule Google.Cloud.Security.Privateca.V1.X509Parameters do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :key_usage, 1,
    type: Google.Cloud.Security.Privateca.V1.KeyUsage,
    json_name: "keyUsage",
    deprecated: false

  field :ca_options, 2,
    type: Google.Cloud.Security.Privateca.V1.X509Parameters.CaOptions,
    json_name: "caOptions",
    deprecated: false

  field :policy_ids, 3,
    repeated: true,
    type: Google.Cloud.Security.Privateca.V1.ObjectId,
    json_name: "policyIds",
    deprecated: false

  field :aia_ocsp_servers, 4,
    repeated: true,
    type: :string,
    json_name: "aiaOcspServers",
    deprecated: false

  field :name_constraints, 6,
    type: Google.Cloud.Security.Privateca.V1.X509Parameters.NameConstraints,
    json_name: "nameConstraints",
    deprecated: false

  field :additional_extensions, 5,
    repeated: true,
    type: Google.Cloud.Security.Privateca.V1.X509Extension,
    json_name: "additionalExtensions",
    deprecated: false
end

defmodule Google.Cloud.Security.Privateca.V1.SubordinateConfig.SubordinateConfigChain do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :pem_certificates, 1,
    repeated: true,
    type: :string,
    json_name: "pemCertificates",
    deprecated: false
end

defmodule Google.Cloud.Security.Privateca.V1.SubordinateConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  oneof :subordinate_config, 0

  field :certificate_authority, 1,
    type: :string,
    json_name: "certificateAuthority",
    oneof: 0,
    deprecated: false

  field :pem_issuer_chain, 2,
    type: Google.Cloud.Security.Privateca.V1.SubordinateConfig.SubordinateConfigChain,
    json_name: "pemIssuerChain",
    oneof: 0,
    deprecated: false
end

defmodule Google.Cloud.Security.Privateca.V1.PublicKey do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :key, 1, type: :bytes, deprecated: false

  field :format, 2,
    type: Google.Cloud.Security.Privateca.V1.PublicKey.KeyFormat,
    enum: true,
    deprecated: false
end

defmodule Google.Cloud.Security.Privateca.V1.CertificateConfig.SubjectConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :subject, 1, type: Google.Cloud.Security.Privateca.V1.Subject, deprecated: false

  field :subject_alt_name, 2,
    type: Google.Cloud.Security.Privateca.V1.SubjectAltNames,
    json_name: "subjectAltName",
    deprecated: false
end

defmodule Google.Cloud.Security.Privateca.V1.CertificateConfig.KeyId do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :key_id, 1, type: :string, json_name: "keyId", deprecated: false
end

defmodule Google.Cloud.Security.Privateca.V1.CertificateConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :subject_config, 1,
    type: Google.Cloud.Security.Privateca.V1.CertificateConfig.SubjectConfig,
    json_name: "subjectConfig",
    deprecated: false

  field :x509_config, 2,
    type: Google.Cloud.Security.Privateca.V1.X509Parameters,
    json_name: "x509Config",
    deprecated: false

  field :public_key, 3,
    type: Google.Cloud.Security.Privateca.V1.PublicKey,
    json_name: "publicKey",
    deprecated: false

  field :subject_key_id, 4,
    type: Google.Cloud.Security.Privateca.V1.CertificateConfig.KeyId,
    json_name: "subjectKeyId",
    deprecated: false
end

defmodule Google.Cloud.Security.Privateca.V1.CertificateDescription.SubjectDescription do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :subject, 1, type: Google.Cloud.Security.Privateca.V1.Subject

  field :subject_alt_name, 2,
    type: Google.Cloud.Security.Privateca.V1.SubjectAltNames,
    json_name: "subjectAltName"

  field :hex_serial_number, 3, type: :string, json_name: "hexSerialNumber"
  field :lifetime, 4, type: Google.Protobuf.Duration
  field :not_before_time, 5, type: Google.Protobuf.Timestamp, json_name: "notBeforeTime"
  field :not_after_time, 6, type: Google.Protobuf.Timestamp, json_name: "notAfterTime"
end

defmodule Google.Cloud.Security.Privateca.V1.CertificateDescription.KeyId do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :key_id, 1, type: :string, json_name: "keyId", deprecated: false
end

defmodule Google.Cloud.Security.Privateca.V1.CertificateDescription.CertificateFingerprint do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :sha256_hash, 1, type: :string, json_name: "sha256Hash"
end

defmodule Google.Cloud.Security.Privateca.V1.CertificateDescription do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :subject_description, 1,
    type: Google.Cloud.Security.Privateca.V1.CertificateDescription.SubjectDescription,
    json_name: "subjectDescription"

  field :x509_description, 2,
    type: Google.Cloud.Security.Privateca.V1.X509Parameters,
    json_name: "x509Description"

  field :public_key, 3, type: Google.Cloud.Security.Privateca.V1.PublicKey, json_name: "publicKey"

  field :subject_key_id, 4,
    type: Google.Cloud.Security.Privateca.V1.CertificateDescription.KeyId,
    json_name: "subjectKeyId"

  field :authority_key_id, 5,
    type: Google.Cloud.Security.Privateca.V1.CertificateDescription.KeyId,
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
    type: Google.Cloud.Security.Privateca.V1.CertificateDescription.CertificateFingerprint,
    json_name: "certFingerprint"
end

defmodule Google.Cloud.Security.Privateca.V1.ObjectId do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :object_id_path, 1,
    repeated: true,
    type: :int32,
    json_name: "objectIdPath",
    deprecated: false
end

defmodule Google.Cloud.Security.Privateca.V1.X509Extension do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :object_id, 1,
    type: Google.Cloud.Security.Privateca.V1.ObjectId,
    json_name: "objectId",
    deprecated: false

  field :critical, 2, type: :bool, deprecated: false
  field :value, 3, type: :bytes, deprecated: false
end

defmodule Google.Cloud.Security.Privateca.V1.KeyUsage.KeyUsageOptions do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

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

defmodule Google.Cloud.Security.Privateca.V1.KeyUsage.ExtendedKeyUsageOptions do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :server_auth, 1, type: :bool, json_name: "serverAuth"
  field :client_auth, 2, type: :bool, json_name: "clientAuth"
  field :code_signing, 3, type: :bool, json_name: "codeSigning"
  field :email_protection, 4, type: :bool, json_name: "emailProtection"
  field :time_stamping, 5, type: :bool, json_name: "timeStamping"
  field :ocsp_signing, 6, type: :bool, json_name: "ocspSigning"
end

defmodule Google.Cloud.Security.Privateca.V1.KeyUsage do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :base_key_usage, 1,
    type: Google.Cloud.Security.Privateca.V1.KeyUsage.KeyUsageOptions,
    json_name: "baseKeyUsage"

  field :extended_key_usage, 2,
    type: Google.Cloud.Security.Privateca.V1.KeyUsage.ExtendedKeyUsageOptions,
    json_name: "extendedKeyUsage"

  field :unknown_extended_key_usages, 3,
    repeated: true,
    type: Google.Cloud.Security.Privateca.V1.ObjectId,
    json_name: "unknownExtendedKeyUsages"
end

defmodule Google.Cloud.Security.Privateca.V1.Subject do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :common_name, 1, type: :string, json_name: "commonName"
  field :country_code, 2, type: :string, json_name: "countryCode"
  field :organization, 3, type: :string
  field :organizational_unit, 4, type: :string, json_name: "organizationalUnit"
  field :locality, 5, type: :string
  field :province, 6, type: :string
  field :street_address, 7, type: :string, json_name: "streetAddress"
  field :postal_code, 8, type: :string, json_name: "postalCode"
end

defmodule Google.Cloud.Security.Privateca.V1.SubjectAltNames do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :dns_names, 1, repeated: true, type: :string, json_name: "dnsNames"
  field :uris, 2, repeated: true, type: :string
  field :email_addresses, 3, repeated: true, type: :string, json_name: "emailAddresses"
  field :ip_addresses, 4, repeated: true, type: :string, json_name: "ipAddresses"

  field :custom_sans, 5,
    repeated: true,
    type: Google.Cloud.Security.Privateca.V1.X509Extension,
    json_name: "customSans"
end

defmodule Google.Cloud.Security.Privateca.V1.CertificateIdentityConstraints do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :cel_expression, 1, type: Google.Type.Expr, json_name: "celExpression", deprecated: false

  field :allow_subject_passthrough, 2,
    proto3_optional: true,
    type: :bool,
    json_name: "allowSubjectPassthrough",
    deprecated: false

  field :allow_subject_alt_names_passthrough, 3,
    proto3_optional: true,
    type: :bool,
    json_name: "allowSubjectAltNamesPassthrough",
    deprecated: false
end

defmodule Google.Cloud.Security.Privateca.V1.CertificateExtensionConstraints do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :known_extensions, 1,
    repeated: true,
    type:
      Google.Cloud.Security.Privateca.V1.CertificateExtensionConstraints.KnownCertificateExtension,
    json_name: "knownExtensions",
    enum: true,
    deprecated: false

  field :additional_extensions, 2,
    repeated: true,
    type: Google.Cloud.Security.Privateca.V1.ObjectId,
    json_name: "additionalExtensions",
    deprecated: false
end