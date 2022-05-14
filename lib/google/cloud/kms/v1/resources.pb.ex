defmodule Google.Cloud.Kms.V1.ProtectionLevel do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :PROTECTION_LEVEL_UNSPECIFIED, 0
  field :SOFTWARE, 1
  field :HSM, 2
  field :EXTERNAL, 3
  field :EXTERNAL_VPC, 4
end
defmodule Google.Cloud.Kms.V1.CryptoKey.CryptoKeyPurpose do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :CRYPTO_KEY_PURPOSE_UNSPECIFIED, 0
  field :ENCRYPT_DECRYPT, 1
  field :ASYMMETRIC_SIGN, 5
  field :ASYMMETRIC_DECRYPT, 6
  field :MAC, 9
end
defmodule Google.Cloud.Kms.V1.KeyOperationAttestation.AttestationFormat do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :ATTESTATION_FORMAT_UNSPECIFIED, 0
  field :CAVIUM_V1_COMPRESSED, 3
  field :CAVIUM_V2_COMPRESSED, 4
end
defmodule Google.Cloud.Kms.V1.CryptoKeyVersion.CryptoKeyVersionAlgorithm do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :CRYPTO_KEY_VERSION_ALGORITHM_UNSPECIFIED, 0
  field :GOOGLE_SYMMETRIC_ENCRYPTION, 1
  field :RSA_SIGN_PSS_2048_SHA256, 2
  field :RSA_SIGN_PSS_3072_SHA256, 3
  field :RSA_SIGN_PSS_4096_SHA256, 4
  field :RSA_SIGN_PSS_4096_SHA512, 15
  field :RSA_SIGN_PKCS1_2048_SHA256, 5
  field :RSA_SIGN_PKCS1_3072_SHA256, 6
  field :RSA_SIGN_PKCS1_4096_SHA256, 7
  field :RSA_SIGN_PKCS1_4096_SHA512, 16
  field :RSA_SIGN_RAW_PKCS1_2048, 28
  field :RSA_SIGN_RAW_PKCS1_3072, 29
  field :RSA_SIGN_RAW_PKCS1_4096, 30
  field :RSA_DECRYPT_OAEP_2048_SHA256, 8
  field :RSA_DECRYPT_OAEP_3072_SHA256, 9
  field :RSA_DECRYPT_OAEP_4096_SHA256, 10
  field :RSA_DECRYPT_OAEP_4096_SHA512, 17
  field :RSA_DECRYPT_OAEP_2048_SHA1, 37
  field :RSA_DECRYPT_OAEP_3072_SHA1, 38
  field :RSA_DECRYPT_OAEP_4096_SHA1, 39
  field :EC_SIGN_P256_SHA256, 12
  field :EC_SIGN_P384_SHA384, 13
  field :EC_SIGN_SECP256K1_SHA256, 31
  field :HMAC_SHA256, 32
  field :EXTERNAL_SYMMETRIC_ENCRYPTION, 18
end
defmodule Google.Cloud.Kms.V1.CryptoKeyVersion.CryptoKeyVersionState do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :CRYPTO_KEY_VERSION_STATE_UNSPECIFIED, 0
  field :PENDING_GENERATION, 5
  field :ENABLED, 1
  field :DISABLED, 2
  field :DESTROYED, 3
  field :DESTROY_SCHEDULED, 4
  field :PENDING_IMPORT, 6
  field :IMPORT_FAILED, 7
end
defmodule Google.Cloud.Kms.V1.CryptoKeyVersion.CryptoKeyVersionView do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :CRYPTO_KEY_VERSION_VIEW_UNSPECIFIED, 0
  field :FULL, 1
end
defmodule Google.Cloud.Kms.V1.ImportJob.ImportMethod do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :IMPORT_METHOD_UNSPECIFIED, 0
  field :RSA_OAEP_3072_SHA1_AES_256, 1
  field :RSA_OAEP_4096_SHA1_AES_256, 2
end
defmodule Google.Cloud.Kms.V1.ImportJob.ImportJobState do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :IMPORT_JOB_STATE_UNSPECIFIED, 0
  field :PENDING_GENERATION, 1
  field :ACTIVE, 2
  field :EXPIRED, 3
end
defmodule Google.Cloud.Kms.V1.KeyRing do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

  field :create_time, 2,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false
end
defmodule Google.Cloud.Kms.V1.CryptoKey.LabelsEntry do
  @moduledoc false
  use Protobuf, map: true, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end
defmodule Google.Cloud.Kms.V1.CryptoKey do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  oneof :rotation_schedule, 0

  field :name, 1, type: :string, deprecated: false
  field :primary, 2, type: Google.Cloud.Kms.V1.CryptoKeyVersion, deprecated: false

  field :purpose, 3,
    type: Google.Cloud.Kms.V1.CryptoKey.CryptoKeyPurpose,
    enum: true,
    deprecated: false

  field :create_time, 5,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :next_rotation_time, 7, type: Google.Protobuf.Timestamp, json_name: "nextRotationTime"
  field :rotation_period, 8, type: Google.Protobuf.Duration, json_name: "rotationPeriod", oneof: 0

  field :version_template, 11,
    type: Google.Cloud.Kms.V1.CryptoKeyVersionTemplate,
    json_name: "versionTemplate"

  field :labels, 10, repeated: true, type: Google.Cloud.Kms.V1.CryptoKey.LabelsEntry, map: true
  field :import_only, 13, type: :bool, json_name: "importOnly", deprecated: false

  field :destroy_scheduled_duration, 14,
    type: Google.Protobuf.Duration,
    json_name: "destroyScheduledDuration",
    deprecated: false

  field :crypto_key_backend, 15, type: :string, json_name: "cryptoKeyBackend", deprecated: false
end
defmodule Google.Cloud.Kms.V1.CryptoKeyVersionTemplate do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :protection_level, 1,
    type: Google.Cloud.Kms.V1.ProtectionLevel,
    json_name: "protectionLevel",
    enum: true

  field :algorithm, 3,
    type: Google.Cloud.Kms.V1.CryptoKeyVersion.CryptoKeyVersionAlgorithm,
    enum: true,
    deprecated: false
end
defmodule Google.Cloud.Kms.V1.KeyOperationAttestation.CertificateChains do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :cavium_certs, 1, repeated: true, type: :string, json_name: "caviumCerts"
  field :google_card_certs, 2, repeated: true, type: :string, json_name: "googleCardCerts"

  field :google_partition_certs, 3,
    repeated: true,
    type: :string,
    json_name: "googlePartitionCerts"
end
defmodule Google.Cloud.Kms.V1.KeyOperationAttestation do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :format, 4,
    type: Google.Cloud.Kms.V1.KeyOperationAttestation.AttestationFormat,
    enum: true,
    deprecated: false

  field :content, 5, type: :bytes, deprecated: false

  field :cert_chains, 6,
    type: Google.Cloud.Kms.V1.KeyOperationAttestation.CertificateChains,
    json_name: "certChains",
    deprecated: false
end
defmodule Google.Cloud.Kms.V1.CryptoKeyVersion do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :state, 3, type: Google.Cloud.Kms.V1.CryptoKeyVersion.CryptoKeyVersionState, enum: true

  field :protection_level, 7,
    type: Google.Cloud.Kms.V1.ProtectionLevel,
    json_name: "protectionLevel",
    enum: true,
    deprecated: false

  field :algorithm, 10,
    type: Google.Cloud.Kms.V1.CryptoKeyVersion.CryptoKeyVersionAlgorithm,
    enum: true,
    deprecated: false

  field :attestation, 8, type: Google.Cloud.Kms.V1.KeyOperationAttestation, deprecated: false

  field :create_time, 4,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :generate_time, 11,
    type: Google.Protobuf.Timestamp,
    json_name: "generateTime",
    deprecated: false

  field :destroy_time, 5,
    type: Google.Protobuf.Timestamp,
    json_name: "destroyTime",
    deprecated: false

  field :destroy_event_time, 6,
    type: Google.Protobuf.Timestamp,
    json_name: "destroyEventTime",
    deprecated: false

  field :import_job, 14, type: :string, json_name: "importJob", deprecated: false

  field :import_time, 15,
    type: Google.Protobuf.Timestamp,
    json_name: "importTime",
    deprecated: false

  field :import_failure_reason, 16,
    type: :string,
    json_name: "importFailureReason",
    deprecated: false

  field :external_protection_level_options, 17,
    type: Google.Cloud.Kms.V1.ExternalProtectionLevelOptions,
    json_name: "externalProtectionLevelOptions"

  field :reimport_eligible, 18, type: :bool, json_name: "reimportEligible", deprecated: false
end
defmodule Google.Cloud.Kms.V1.PublicKey do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :pem, 1, type: :string

  field :algorithm, 2,
    type: Google.Cloud.Kms.V1.CryptoKeyVersion.CryptoKeyVersionAlgorithm,
    enum: true

  field :pem_crc32c, 3, type: Google.Protobuf.Int64Value, json_name: "pemCrc32c"
  field :name, 4, type: :string

  field :protection_level, 5,
    type: Google.Cloud.Kms.V1.ProtectionLevel,
    json_name: "protectionLevel",
    enum: true
end
defmodule Google.Cloud.Kms.V1.ImportJob.WrappingPublicKey do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :pem, 1, type: :string
end
defmodule Google.Cloud.Kms.V1.ImportJob do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

  field :import_method, 2,
    type: Google.Cloud.Kms.V1.ImportJob.ImportMethod,
    json_name: "importMethod",
    enum: true,
    deprecated: false

  field :protection_level, 9,
    type: Google.Cloud.Kms.V1.ProtectionLevel,
    json_name: "protectionLevel",
    enum: true,
    deprecated: false

  field :create_time, 3,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :generate_time, 4,
    type: Google.Protobuf.Timestamp,
    json_name: "generateTime",
    deprecated: false

  field :expire_time, 5,
    type: Google.Protobuf.Timestamp,
    json_name: "expireTime",
    deprecated: false

  field :expire_event_time, 10,
    type: Google.Protobuf.Timestamp,
    json_name: "expireEventTime",
    deprecated: false

  field :state, 6,
    type: Google.Cloud.Kms.V1.ImportJob.ImportJobState,
    enum: true,
    deprecated: false

  field :public_key, 7,
    type: Google.Cloud.Kms.V1.ImportJob.WrappingPublicKey,
    json_name: "publicKey",
    deprecated: false

  field :attestation, 8, type: Google.Cloud.Kms.V1.KeyOperationAttestation, deprecated: false
end
defmodule Google.Cloud.Kms.V1.ExternalProtectionLevelOptions do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :external_key_uri, 1, type: :string, json_name: "externalKeyUri"
  field :ekm_connection_key_path, 2, type: :string, json_name: "ekmConnectionKeyPath"
end
