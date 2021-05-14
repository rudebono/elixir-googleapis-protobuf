defmodule Google.Cloud.Kms.V1.ProtectionLevel do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :PROTECTION_LEVEL_UNSPECIFIED | :SOFTWARE | :HSM | :EXTERNAL

  field :PROTECTION_LEVEL_UNSPECIFIED, 0

  field :SOFTWARE, 1

  field :HSM, 2

  field :EXTERNAL, 3
end

defmodule Google.Cloud.Kms.V1.CryptoKey.CryptoKeyPurpose do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :CRYPTO_KEY_PURPOSE_UNSPECIFIED
          | :ENCRYPT_DECRYPT
          | :ASYMMETRIC_SIGN
          | :ASYMMETRIC_DECRYPT

  field :CRYPTO_KEY_PURPOSE_UNSPECIFIED, 0

  field :ENCRYPT_DECRYPT, 1

  field :ASYMMETRIC_SIGN, 5

  field :ASYMMETRIC_DECRYPT, 6
end

defmodule Google.Cloud.Kms.V1.KeyOperationAttestation.AttestationFormat do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :ATTESTATION_FORMAT_UNSPECIFIED
          | :CAVIUM_V1_COMPRESSED
          | :CAVIUM_V2_COMPRESSED

  field :ATTESTATION_FORMAT_UNSPECIFIED, 0

  field :CAVIUM_V1_COMPRESSED, 3

  field :CAVIUM_V2_COMPRESSED, 4
end

defmodule Google.Cloud.Kms.V1.CryptoKeyVersion.CryptoKeyVersionAlgorithm do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :CRYPTO_KEY_VERSION_ALGORITHM_UNSPECIFIED
          | :GOOGLE_SYMMETRIC_ENCRYPTION
          | :RSA_SIGN_PSS_2048_SHA256
          | :RSA_SIGN_PSS_3072_SHA256
          | :RSA_SIGN_PSS_4096_SHA256
          | :RSA_SIGN_PSS_4096_SHA512
          | :RSA_SIGN_PKCS1_2048_SHA256
          | :RSA_SIGN_PKCS1_3072_SHA256
          | :RSA_SIGN_PKCS1_4096_SHA256
          | :RSA_SIGN_PKCS1_4096_SHA512
          | :RSA_DECRYPT_OAEP_2048_SHA256
          | :RSA_DECRYPT_OAEP_3072_SHA256
          | :RSA_DECRYPT_OAEP_4096_SHA256
          | :RSA_DECRYPT_OAEP_4096_SHA512
          | :EC_SIGN_P256_SHA256
          | :EC_SIGN_P384_SHA384
          | :EXTERNAL_SYMMETRIC_ENCRYPTION

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

  field :RSA_DECRYPT_OAEP_2048_SHA256, 8

  field :RSA_DECRYPT_OAEP_3072_SHA256, 9

  field :RSA_DECRYPT_OAEP_4096_SHA256, 10

  field :RSA_DECRYPT_OAEP_4096_SHA512, 17

  field :EC_SIGN_P256_SHA256, 12

  field :EC_SIGN_P384_SHA384, 13

  field :EXTERNAL_SYMMETRIC_ENCRYPTION, 18
end

defmodule Google.Cloud.Kms.V1.CryptoKeyVersion.CryptoKeyVersionState do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :CRYPTO_KEY_VERSION_STATE_UNSPECIFIED
          | :PENDING_GENERATION
          | :ENABLED
          | :DISABLED
          | :DESTROYED
          | :DESTROY_SCHEDULED
          | :PENDING_IMPORT
          | :IMPORT_FAILED

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
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :CRYPTO_KEY_VERSION_VIEW_UNSPECIFIED | :FULL

  field :CRYPTO_KEY_VERSION_VIEW_UNSPECIFIED, 0

  field :FULL, 1
end

defmodule Google.Cloud.Kms.V1.ImportJob.ImportMethod do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :IMPORT_METHOD_UNSPECIFIED
          | :RSA_OAEP_3072_SHA1_AES_256
          | :RSA_OAEP_4096_SHA1_AES_256

  field :IMPORT_METHOD_UNSPECIFIED, 0

  field :RSA_OAEP_3072_SHA1_AES_256, 1

  field :RSA_OAEP_4096_SHA1_AES_256, 2
end

defmodule Google.Cloud.Kms.V1.ImportJob.ImportJobState do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :IMPORT_JOB_STATE_UNSPECIFIED | :PENDING_GENERATION | :ACTIVE | :EXPIRED

  field :IMPORT_JOB_STATE_UNSPECIFIED, 0

  field :PENDING_GENERATION, 1

  field :ACTIVE, 2

  field :EXPIRED, 3
end

defmodule Google.Cloud.Kms.V1.KeyRing do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          create_time: Google.Protobuf.Timestamp.t() | nil
        }

  defstruct [:name, :create_time]

  field :name, 1, type: :string
  field :create_time, 2, type: Google.Protobuf.Timestamp
end

defmodule Google.Cloud.Kms.V1.CryptoKey.LabelsEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: String.t()
        }

  defstruct [:key, :value]

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Kms.V1.CryptoKey do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          rotation_schedule: {atom, any},
          name: String.t(),
          primary: Google.Cloud.Kms.V1.CryptoKeyVersion.t() | nil,
          purpose: Google.Cloud.Kms.V1.CryptoKey.CryptoKeyPurpose.t(),
          create_time: Google.Protobuf.Timestamp.t() | nil,
          next_rotation_time: Google.Protobuf.Timestamp.t() | nil,
          version_template: Google.Cloud.Kms.V1.CryptoKeyVersionTemplate.t() | nil,
          labels: %{String.t() => String.t()}
        }

  defstruct [
    :rotation_schedule,
    :name,
    :primary,
    :purpose,
    :create_time,
    :next_rotation_time,
    :version_template,
    :labels
  ]

  oneof :rotation_schedule, 0
  field :name, 1, type: :string
  field :primary, 2, type: Google.Cloud.Kms.V1.CryptoKeyVersion
  field :purpose, 3, type: Google.Cloud.Kms.V1.CryptoKey.CryptoKeyPurpose, enum: true
  field :create_time, 5, type: Google.Protobuf.Timestamp
  field :next_rotation_time, 7, type: Google.Protobuf.Timestamp
  field :rotation_period, 8, type: Google.Protobuf.Duration, oneof: 0
  field :version_template, 11, type: Google.Cloud.Kms.V1.CryptoKeyVersionTemplate
  field :labels, 10, repeated: true, type: Google.Cloud.Kms.V1.CryptoKey.LabelsEntry, map: true
end

defmodule Google.Cloud.Kms.V1.CryptoKeyVersionTemplate do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          protection_level: Google.Cloud.Kms.V1.ProtectionLevel.t(),
          algorithm: Google.Cloud.Kms.V1.CryptoKeyVersion.CryptoKeyVersionAlgorithm.t()
        }

  defstruct [:protection_level, :algorithm]

  field :protection_level, 1, type: Google.Cloud.Kms.V1.ProtectionLevel, enum: true

  field :algorithm, 3,
    type: Google.Cloud.Kms.V1.CryptoKeyVersion.CryptoKeyVersionAlgorithm,
    enum: true
end

defmodule Google.Cloud.Kms.V1.KeyOperationAttestation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          format: Google.Cloud.Kms.V1.KeyOperationAttestation.AttestationFormat.t(),
          content: binary
        }

  defstruct [:format, :content]

  field :format, 4,
    type: Google.Cloud.Kms.V1.KeyOperationAttestation.AttestationFormat,
    enum: true

  field :content, 5, type: :bytes
end

defmodule Google.Cloud.Kms.V1.CryptoKeyVersion do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          state: Google.Cloud.Kms.V1.CryptoKeyVersion.CryptoKeyVersionState.t(),
          protection_level: Google.Cloud.Kms.V1.ProtectionLevel.t(),
          algorithm: Google.Cloud.Kms.V1.CryptoKeyVersion.CryptoKeyVersionAlgorithm.t(),
          attestation: Google.Cloud.Kms.V1.KeyOperationAttestation.t() | nil,
          create_time: Google.Protobuf.Timestamp.t() | nil,
          generate_time: Google.Protobuf.Timestamp.t() | nil,
          destroy_time: Google.Protobuf.Timestamp.t() | nil,
          destroy_event_time: Google.Protobuf.Timestamp.t() | nil,
          import_job: String.t(),
          import_time: Google.Protobuf.Timestamp.t() | nil,
          import_failure_reason: String.t(),
          external_protection_level_options:
            Google.Cloud.Kms.V1.ExternalProtectionLevelOptions.t() | nil
        }

  defstruct [
    :name,
    :state,
    :protection_level,
    :algorithm,
    :attestation,
    :create_time,
    :generate_time,
    :destroy_time,
    :destroy_event_time,
    :import_job,
    :import_time,
    :import_failure_reason,
    :external_protection_level_options
  ]

  field :name, 1, type: :string
  field :state, 3, type: Google.Cloud.Kms.V1.CryptoKeyVersion.CryptoKeyVersionState, enum: true
  field :protection_level, 7, type: Google.Cloud.Kms.V1.ProtectionLevel, enum: true

  field :algorithm, 10,
    type: Google.Cloud.Kms.V1.CryptoKeyVersion.CryptoKeyVersionAlgorithm,
    enum: true

  field :attestation, 8, type: Google.Cloud.Kms.V1.KeyOperationAttestation
  field :create_time, 4, type: Google.Protobuf.Timestamp
  field :generate_time, 11, type: Google.Protobuf.Timestamp
  field :destroy_time, 5, type: Google.Protobuf.Timestamp
  field :destroy_event_time, 6, type: Google.Protobuf.Timestamp
  field :import_job, 14, type: :string
  field :import_time, 15, type: Google.Protobuf.Timestamp
  field :import_failure_reason, 16, type: :string

  field :external_protection_level_options, 17,
    type: Google.Cloud.Kms.V1.ExternalProtectionLevelOptions
end

defmodule Google.Cloud.Kms.V1.PublicKey do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          pem: String.t(),
          algorithm: Google.Cloud.Kms.V1.CryptoKeyVersion.CryptoKeyVersionAlgorithm.t(),
          pem_crc32c: Google.Protobuf.Int64Value.t() | nil,
          name: String.t()
        }

  defstruct [:pem, :algorithm, :pem_crc32c, :name]

  field :pem, 1, type: :string

  field :algorithm, 2,
    type: Google.Cloud.Kms.V1.CryptoKeyVersion.CryptoKeyVersionAlgorithm,
    enum: true

  field :pem_crc32c, 3, type: Google.Protobuf.Int64Value
  field :name, 4, type: :string
end

defmodule Google.Cloud.Kms.V1.ImportJob.WrappingPublicKey do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          pem: String.t()
        }

  defstruct [:pem]

  field :pem, 1, type: :string
end

defmodule Google.Cloud.Kms.V1.ImportJob do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          import_method: Google.Cloud.Kms.V1.ImportJob.ImportMethod.t(),
          protection_level: Google.Cloud.Kms.V1.ProtectionLevel.t(),
          create_time: Google.Protobuf.Timestamp.t() | nil,
          generate_time: Google.Protobuf.Timestamp.t() | nil,
          expire_time: Google.Protobuf.Timestamp.t() | nil,
          expire_event_time: Google.Protobuf.Timestamp.t() | nil,
          state: Google.Cloud.Kms.V1.ImportJob.ImportJobState.t(),
          public_key: Google.Cloud.Kms.V1.ImportJob.WrappingPublicKey.t() | nil,
          attestation: Google.Cloud.Kms.V1.KeyOperationAttestation.t() | nil
        }

  defstruct [
    :name,
    :import_method,
    :protection_level,
    :create_time,
    :generate_time,
    :expire_time,
    :expire_event_time,
    :state,
    :public_key,
    :attestation
  ]

  field :name, 1, type: :string
  field :import_method, 2, type: Google.Cloud.Kms.V1.ImportJob.ImportMethod, enum: true
  field :protection_level, 9, type: Google.Cloud.Kms.V1.ProtectionLevel, enum: true
  field :create_time, 3, type: Google.Protobuf.Timestamp
  field :generate_time, 4, type: Google.Protobuf.Timestamp
  field :expire_time, 5, type: Google.Protobuf.Timestamp
  field :expire_event_time, 10, type: Google.Protobuf.Timestamp
  field :state, 6, type: Google.Cloud.Kms.V1.ImportJob.ImportJobState, enum: true
  field :public_key, 7, type: Google.Cloud.Kms.V1.ImportJob.WrappingPublicKey
  field :attestation, 8, type: Google.Cloud.Kms.V1.KeyOperationAttestation
end

defmodule Google.Cloud.Kms.V1.ExternalProtectionLevelOptions do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          external_key_uri: String.t()
        }

  defstruct [:external_key_uri]

  field :external_key_uri, 1, type: :string
end
