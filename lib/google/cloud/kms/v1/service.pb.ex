defmodule Google.Cloud.Kms.V1.ListKeyRingsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          page_size: integer,
          page_token: String.t(),
          filter: String.t(),
          order_by: String.t()
        }

  defstruct parent: "",
            page_size: 0,
            page_token: "",
            filter: "",
            order_by: ""

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
  field :filter, 4, type: :string, deprecated: false
  field :order_by, 5, type: :string, json_name: "orderBy", deprecated: false
end
defmodule Google.Cloud.Kms.V1.ListCryptoKeysRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          page_size: integer,
          page_token: String.t(),
          version_view: Google.Cloud.Kms.V1.CryptoKeyVersion.CryptoKeyVersionView.t(),
          filter: String.t(),
          order_by: String.t()
        }

  defstruct parent: "",
            page_size: 0,
            page_token: "",
            version_view: :CRYPTO_KEY_VERSION_VIEW_UNSPECIFIED,
            filter: "",
            order_by: ""

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false

  field :version_view, 4,
    type: Google.Cloud.Kms.V1.CryptoKeyVersion.CryptoKeyVersionView,
    json_name: "versionView",
    enum: true

  field :filter, 5, type: :string, deprecated: false
  field :order_by, 6, type: :string, json_name: "orderBy", deprecated: false
end
defmodule Google.Cloud.Kms.V1.ListCryptoKeyVersionsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          page_size: integer,
          page_token: String.t(),
          view: Google.Cloud.Kms.V1.CryptoKeyVersion.CryptoKeyVersionView.t(),
          filter: String.t(),
          order_by: String.t()
        }

  defstruct parent: "",
            page_size: 0,
            page_token: "",
            view: :CRYPTO_KEY_VERSION_VIEW_UNSPECIFIED,
            filter: "",
            order_by: ""

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
  field :view, 4, type: Google.Cloud.Kms.V1.CryptoKeyVersion.CryptoKeyVersionView, enum: true
  field :filter, 5, type: :string, deprecated: false
  field :order_by, 6, type: :string, json_name: "orderBy", deprecated: false
end
defmodule Google.Cloud.Kms.V1.ListImportJobsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          page_size: integer,
          page_token: String.t(),
          filter: String.t(),
          order_by: String.t()
        }

  defstruct parent: "",
            page_size: 0,
            page_token: "",
            filter: "",
            order_by: ""

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
  field :filter, 4, type: :string, deprecated: false
  field :order_by, 5, type: :string, json_name: "orderBy", deprecated: false
end
defmodule Google.Cloud.Kms.V1.ListKeyRingsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          key_rings: [Google.Cloud.Kms.V1.KeyRing.t()],
          next_page_token: String.t(),
          total_size: integer
        }

  defstruct key_rings: [],
            next_page_token: "",
            total_size: 0

  field :key_rings, 1, repeated: true, type: Google.Cloud.Kms.V1.KeyRing, json_name: "keyRings"
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :total_size, 3, type: :int32, json_name: "totalSize"
end
defmodule Google.Cloud.Kms.V1.ListCryptoKeysResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          crypto_keys: [Google.Cloud.Kms.V1.CryptoKey.t()],
          next_page_token: String.t(),
          total_size: integer
        }

  defstruct crypto_keys: [],
            next_page_token: "",
            total_size: 0

  field :crypto_keys, 1,
    repeated: true,
    type: Google.Cloud.Kms.V1.CryptoKey,
    json_name: "cryptoKeys"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :total_size, 3, type: :int32, json_name: "totalSize"
end
defmodule Google.Cloud.Kms.V1.ListCryptoKeyVersionsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          crypto_key_versions: [Google.Cloud.Kms.V1.CryptoKeyVersion.t()],
          next_page_token: String.t(),
          total_size: integer
        }

  defstruct crypto_key_versions: [],
            next_page_token: "",
            total_size: 0

  field :crypto_key_versions, 1,
    repeated: true,
    type: Google.Cloud.Kms.V1.CryptoKeyVersion,
    json_name: "cryptoKeyVersions"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :total_size, 3, type: :int32, json_name: "totalSize"
end
defmodule Google.Cloud.Kms.V1.ListImportJobsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          import_jobs: [Google.Cloud.Kms.V1.ImportJob.t()],
          next_page_token: String.t(),
          total_size: integer
        }

  defstruct import_jobs: [],
            next_page_token: "",
            total_size: 0

  field :import_jobs, 1,
    repeated: true,
    type: Google.Cloud.Kms.V1.ImportJob,
    json_name: "importJobs"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :total_size, 3, type: :int32, json_name: "totalSize"
end
defmodule Google.Cloud.Kms.V1.GetKeyRingRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct name: ""

  field :name, 1, type: :string, deprecated: false
end
defmodule Google.Cloud.Kms.V1.GetCryptoKeyRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct name: ""

  field :name, 1, type: :string, deprecated: false
end
defmodule Google.Cloud.Kms.V1.GetCryptoKeyVersionRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct name: ""

  field :name, 1, type: :string, deprecated: false
end
defmodule Google.Cloud.Kms.V1.GetPublicKeyRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct name: ""

  field :name, 1, type: :string, deprecated: false
end
defmodule Google.Cloud.Kms.V1.GetImportJobRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct name: ""

  field :name, 1, type: :string, deprecated: false
end
defmodule Google.Cloud.Kms.V1.CreateKeyRingRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          key_ring_id: String.t(),
          key_ring: Google.Cloud.Kms.V1.KeyRing.t() | nil
        }

  defstruct parent: "",
            key_ring_id: "",
            key_ring: nil

  field :parent, 1, type: :string, deprecated: false
  field :key_ring_id, 2, type: :string, json_name: "keyRingId", deprecated: false
  field :key_ring, 3, type: Google.Cloud.Kms.V1.KeyRing, json_name: "keyRing", deprecated: false
end
defmodule Google.Cloud.Kms.V1.CreateCryptoKeyRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          crypto_key_id: String.t(),
          crypto_key: Google.Cloud.Kms.V1.CryptoKey.t() | nil,
          skip_initial_version_creation: boolean
        }

  defstruct parent: "",
            crypto_key_id: "",
            crypto_key: nil,
            skip_initial_version_creation: false

  field :parent, 1, type: :string, deprecated: false
  field :crypto_key_id, 2, type: :string, json_name: "cryptoKeyId", deprecated: false

  field :crypto_key, 3,
    type: Google.Cloud.Kms.V1.CryptoKey,
    json_name: "cryptoKey",
    deprecated: false

  field :skip_initial_version_creation, 5, type: :bool, json_name: "skipInitialVersionCreation"
end
defmodule Google.Cloud.Kms.V1.CreateCryptoKeyVersionRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          crypto_key_version: Google.Cloud.Kms.V1.CryptoKeyVersion.t() | nil
        }

  defstruct parent: "",
            crypto_key_version: nil

  field :parent, 1, type: :string, deprecated: false

  field :crypto_key_version, 2,
    type: Google.Cloud.Kms.V1.CryptoKeyVersion,
    json_name: "cryptoKeyVersion",
    deprecated: false
end
defmodule Google.Cloud.Kms.V1.ImportCryptoKeyVersionRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          wrapped_key_material: {:rsa_aes_wrapped_key, binary},
          parent: String.t(),
          crypto_key_version: String.t(),
          algorithm: Google.Cloud.Kms.V1.CryptoKeyVersion.CryptoKeyVersionAlgorithm.t(),
          import_job: String.t()
        }

  defstruct wrapped_key_material: nil,
            parent: "",
            crypto_key_version: "",
            algorithm: :CRYPTO_KEY_VERSION_ALGORITHM_UNSPECIFIED,
            import_job: ""

  oneof :wrapped_key_material, 0

  field :parent, 1, type: :string, deprecated: false
  field :crypto_key_version, 6, type: :string, json_name: "cryptoKeyVersion", deprecated: false

  field :algorithm, 2,
    type: Google.Cloud.Kms.V1.CryptoKeyVersion.CryptoKeyVersionAlgorithm,
    enum: true,
    deprecated: false

  field :import_job, 4, type: :string, json_name: "importJob", deprecated: false
  field :rsa_aes_wrapped_key, 5, type: :bytes, json_name: "rsaAesWrappedKey", oneof: 0
end
defmodule Google.Cloud.Kms.V1.CreateImportJobRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          import_job_id: String.t(),
          import_job: Google.Cloud.Kms.V1.ImportJob.t() | nil
        }

  defstruct parent: "",
            import_job_id: "",
            import_job: nil

  field :parent, 1, type: :string, deprecated: false
  field :import_job_id, 2, type: :string, json_name: "importJobId", deprecated: false

  field :import_job, 3,
    type: Google.Cloud.Kms.V1.ImportJob,
    json_name: "importJob",
    deprecated: false
end
defmodule Google.Cloud.Kms.V1.UpdateCryptoKeyRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          crypto_key: Google.Cloud.Kms.V1.CryptoKey.t() | nil,
          update_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct crypto_key: nil,
            update_mask: nil

  field :crypto_key, 1,
    type: Google.Cloud.Kms.V1.CryptoKey,
    json_name: "cryptoKey",
    deprecated: false

  field :update_mask, 2,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false
end
defmodule Google.Cloud.Kms.V1.UpdateCryptoKeyVersionRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          crypto_key_version: Google.Cloud.Kms.V1.CryptoKeyVersion.t() | nil,
          update_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct crypto_key_version: nil,
            update_mask: nil

  field :crypto_key_version, 1,
    type: Google.Cloud.Kms.V1.CryptoKeyVersion,
    json_name: "cryptoKeyVersion",
    deprecated: false

  field :update_mask, 2,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false
end
defmodule Google.Cloud.Kms.V1.UpdateCryptoKeyPrimaryVersionRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          crypto_key_version_id: String.t()
        }

  defstruct name: "",
            crypto_key_version_id: ""

  field :name, 1, type: :string, deprecated: false

  field :crypto_key_version_id, 2,
    type: :string,
    json_name: "cryptoKeyVersionId",
    deprecated: false
end
defmodule Google.Cloud.Kms.V1.DestroyCryptoKeyVersionRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct name: ""

  field :name, 1, type: :string, deprecated: false
end
defmodule Google.Cloud.Kms.V1.RestoreCryptoKeyVersionRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct name: ""

  field :name, 1, type: :string, deprecated: false
end
defmodule Google.Cloud.Kms.V1.EncryptRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          plaintext: binary,
          additional_authenticated_data: binary,
          plaintext_crc32c: Google.Protobuf.Int64Value.t() | nil,
          additional_authenticated_data_crc32c: Google.Protobuf.Int64Value.t() | nil
        }

  defstruct name: "",
            plaintext: "",
            additional_authenticated_data: "",
            plaintext_crc32c: nil,
            additional_authenticated_data_crc32c: nil

  field :name, 1, type: :string, deprecated: false
  field :plaintext, 2, type: :bytes, deprecated: false

  field :additional_authenticated_data, 3,
    type: :bytes,
    json_name: "additionalAuthenticatedData",
    deprecated: false

  field :plaintext_crc32c, 7,
    type: Google.Protobuf.Int64Value,
    json_name: "plaintextCrc32c",
    deprecated: false

  field :additional_authenticated_data_crc32c, 8,
    type: Google.Protobuf.Int64Value,
    json_name: "additionalAuthenticatedDataCrc32c",
    deprecated: false
end
defmodule Google.Cloud.Kms.V1.DecryptRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          ciphertext: binary,
          additional_authenticated_data: binary,
          ciphertext_crc32c: Google.Protobuf.Int64Value.t() | nil,
          additional_authenticated_data_crc32c: Google.Protobuf.Int64Value.t() | nil
        }

  defstruct name: "",
            ciphertext: "",
            additional_authenticated_data: "",
            ciphertext_crc32c: nil,
            additional_authenticated_data_crc32c: nil

  field :name, 1, type: :string, deprecated: false
  field :ciphertext, 2, type: :bytes, deprecated: false

  field :additional_authenticated_data, 3,
    type: :bytes,
    json_name: "additionalAuthenticatedData",
    deprecated: false

  field :ciphertext_crc32c, 5,
    type: Google.Protobuf.Int64Value,
    json_name: "ciphertextCrc32c",
    deprecated: false

  field :additional_authenticated_data_crc32c, 6,
    type: Google.Protobuf.Int64Value,
    json_name: "additionalAuthenticatedDataCrc32c",
    deprecated: false
end
defmodule Google.Cloud.Kms.V1.AsymmetricSignRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          digest: Google.Cloud.Kms.V1.Digest.t() | nil,
          digest_crc32c: Google.Protobuf.Int64Value.t() | nil,
          data: binary,
          data_crc32c: Google.Protobuf.Int64Value.t() | nil
        }

  defstruct name: "",
            digest: nil,
            digest_crc32c: nil,
            data: "",
            data_crc32c: nil

  field :name, 1, type: :string, deprecated: false
  field :digest, 3, type: Google.Cloud.Kms.V1.Digest, deprecated: false

  field :digest_crc32c, 4,
    type: Google.Protobuf.Int64Value,
    json_name: "digestCrc32c",
    deprecated: false

  field :data, 6, type: :bytes, deprecated: false

  field :data_crc32c, 7,
    type: Google.Protobuf.Int64Value,
    json_name: "dataCrc32c",
    deprecated: false
end
defmodule Google.Cloud.Kms.V1.AsymmetricDecryptRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          ciphertext: binary,
          ciphertext_crc32c: Google.Protobuf.Int64Value.t() | nil
        }

  defstruct name: "",
            ciphertext: "",
            ciphertext_crc32c: nil

  field :name, 1, type: :string, deprecated: false
  field :ciphertext, 3, type: :bytes, deprecated: false

  field :ciphertext_crc32c, 4,
    type: Google.Protobuf.Int64Value,
    json_name: "ciphertextCrc32c",
    deprecated: false
end
defmodule Google.Cloud.Kms.V1.MacSignRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          data: binary,
          data_crc32c: Google.Protobuf.Int64Value.t() | nil
        }

  defstruct name: "",
            data: "",
            data_crc32c: nil

  field :name, 1, type: :string, deprecated: false
  field :data, 2, type: :bytes, deprecated: false

  field :data_crc32c, 3,
    type: Google.Protobuf.Int64Value,
    json_name: "dataCrc32c",
    deprecated: false
end
defmodule Google.Cloud.Kms.V1.MacVerifyRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          data: binary,
          data_crc32c: Google.Protobuf.Int64Value.t() | nil,
          mac: binary,
          mac_crc32c: Google.Protobuf.Int64Value.t() | nil
        }

  defstruct name: "",
            data: "",
            data_crc32c: nil,
            mac: "",
            mac_crc32c: nil

  field :name, 1, type: :string, deprecated: false
  field :data, 2, type: :bytes, deprecated: false

  field :data_crc32c, 3,
    type: Google.Protobuf.Int64Value,
    json_name: "dataCrc32c",
    deprecated: false

  field :mac, 4, type: :bytes, deprecated: false

  field :mac_crc32c, 5,
    type: Google.Protobuf.Int64Value,
    json_name: "macCrc32c",
    deprecated: false
end
defmodule Google.Cloud.Kms.V1.GenerateRandomBytesRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          location: String.t(),
          length_bytes: integer,
          protection_level: Google.Cloud.Kms.V1.ProtectionLevel.t()
        }

  defstruct location: "",
            length_bytes: 0,
            protection_level: :PROTECTION_LEVEL_UNSPECIFIED

  field :location, 1, type: :string
  field :length_bytes, 2, type: :int32, json_name: "lengthBytes"

  field :protection_level, 3,
    type: Google.Cloud.Kms.V1.ProtectionLevel,
    json_name: "protectionLevel",
    enum: true
end
defmodule Google.Cloud.Kms.V1.EncryptResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          ciphertext: binary,
          ciphertext_crc32c: Google.Protobuf.Int64Value.t() | nil,
          verified_plaintext_crc32c: boolean,
          verified_additional_authenticated_data_crc32c: boolean,
          protection_level: Google.Cloud.Kms.V1.ProtectionLevel.t()
        }

  defstruct name: "",
            ciphertext: "",
            ciphertext_crc32c: nil,
            verified_plaintext_crc32c: false,
            verified_additional_authenticated_data_crc32c: false,
            protection_level: :PROTECTION_LEVEL_UNSPECIFIED

  field :name, 1, type: :string
  field :ciphertext, 2, type: :bytes
  field :ciphertext_crc32c, 4, type: Google.Protobuf.Int64Value, json_name: "ciphertextCrc32c"
  field :verified_plaintext_crc32c, 5, type: :bool, json_name: "verifiedPlaintextCrc32c"

  field :verified_additional_authenticated_data_crc32c, 6,
    type: :bool,
    json_name: "verifiedAdditionalAuthenticatedDataCrc32c"

  field :protection_level, 7,
    type: Google.Cloud.Kms.V1.ProtectionLevel,
    json_name: "protectionLevel",
    enum: true
end
defmodule Google.Cloud.Kms.V1.DecryptResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          plaintext: binary,
          plaintext_crc32c: Google.Protobuf.Int64Value.t() | nil,
          used_primary: boolean,
          protection_level: Google.Cloud.Kms.V1.ProtectionLevel.t()
        }

  defstruct plaintext: "",
            plaintext_crc32c: nil,
            used_primary: false,
            protection_level: :PROTECTION_LEVEL_UNSPECIFIED

  field :plaintext, 1, type: :bytes
  field :plaintext_crc32c, 2, type: Google.Protobuf.Int64Value, json_name: "plaintextCrc32c"
  field :used_primary, 3, type: :bool, json_name: "usedPrimary"

  field :protection_level, 4,
    type: Google.Cloud.Kms.V1.ProtectionLevel,
    json_name: "protectionLevel",
    enum: true
end
defmodule Google.Cloud.Kms.V1.AsymmetricSignResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          signature: binary,
          signature_crc32c: Google.Protobuf.Int64Value.t() | nil,
          verified_digest_crc32c: boolean,
          name: String.t(),
          verified_data_crc32c: boolean,
          protection_level: Google.Cloud.Kms.V1.ProtectionLevel.t()
        }

  defstruct signature: "",
            signature_crc32c: nil,
            verified_digest_crc32c: false,
            name: "",
            verified_data_crc32c: false,
            protection_level: :PROTECTION_LEVEL_UNSPECIFIED

  field :signature, 1, type: :bytes
  field :signature_crc32c, 2, type: Google.Protobuf.Int64Value, json_name: "signatureCrc32c"
  field :verified_digest_crc32c, 3, type: :bool, json_name: "verifiedDigestCrc32c"
  field :name, 4, type: :string
  field :verified_data_crc32c, 5, type: :bool, json_name: "verifiedDataCrc32c"

  field :protection_level, 6,
    type: Google.Cloud.Kms.V1.ProtectionLevel,
    json_name: "protectionLevel",
    enum: true
end
defmodule Google.Cloud.Kms.V1.AsymmetricDecryptResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          plaintext: binary,
          plaintext_crc32c: Google.Protobuf.Int64Value.t() | nil,
          verified_ciphertext_crc32c: boolean,
          protection_level: Google.Cloud.Kms.V1.ProtectionLevel.t()
        }

  defstruct plaintext: "",
            plaintext_crc32c: nil,
            verified_ciphertext_crc32c: false,
            protection_level: :PROTECTION_LEVEL_UNSPECIFIED

  field :plaintext, 1, type: :bytes
  field :plaintext_crc32c, 2, type: Google.Protobuf.Int64Value, json_name: "plaintextCrc32c"
  field :verified_ciphertext_crc32c, 3, type: :bool, json_name: "verifiedCiphertextCrc32c"

  field :protection_level, 4,
    type: Google.Cloud.Kms.V1.ProtectionLevel,
    json_name: "protectionLevel",
    enum: true
end
defmodule Google.Cloud.Kms.V1.MacSignResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          mac: binary,
          mac_crc32c: Google.Protobuf.Int64Value.t() | nil,
          verified_data_crc32c: boolean,
          protection_level: Google.Cloud.Kms.V1.ProtectionLevel.t()
        }

  defstruct name: "",
            mac: "",
            mac_crc32c: nil,
            verified_data_crc32c: false,
            protection_level: :PROTECTION_LEVEL_UNSPECIFIED

  field :name, 1, type: :string
  field :mac, 2, type: :bytes
  field :mac_crc32c, 3, type: Google.Protobuf.Int64Value, json_name: "macCrc32c"
  field :verified_data_crc32c, 4, type: :bool, json_name: "verifiedDataCrc32c"

  field :protection_level, 5,
    type: Google.Cloud.Kms.V1.ProtectionLevel,
    json_name: "protectionLevel",
    enum: true
end
defmodule Google.Cloud.Kms.V1.MacVerifyResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          success: boolean,
          verified_data_crc32c: boolean,
          verified_mac_crc32c: boolean,
          verified_success_integrity: boolean,
          protection_level: Google.Cloud.Kms.V1.ProtectionLevel.t()
        }

  defstruct name: "",
            success: false,
            verified_data_crc32c: false,
            verified_mac_crc32c: false,
            verified_success_integrity: false,
            protection_level: :PROTECTION_LEVEL_UNSPECIFIED

  field :name, 1, type: :string
  field :success, 2, type: :bool
  field :verified_data_crc32c, 3, type: :bool, json_name: "verifiedDataCrc32c"
  field :verified_mac_crc32c, 4, type: :bool, json_name: "verifiedMacCrc32c"
  field :verified_success_integrity, 5, type: :bool, json_name: "verifiedSuccessIntegrity"

  field :protection_level, 6,
    type: Google.Cloud.Kms.V1.ProtectionLevel,
    json_name: "protectionLevel",
    enum: true
end
defmodule Google.Cloud.Kms.V1.GenerateRandomBytesResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          data: binary,
          data_crc32c: Google.Protobuf.Int64Value.t() | nil
        }

  defstruct data: "",
            data_crc32c: nil

  field :data, 1, type: :bytes
  field :data_crc32c, 3, type: Google.Protobuf.Int64Value, json_name: "dataCrc32c"
end
defmodule Google.Cloud.Kms.V1.Digest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          digest: {:sha256, binary} | {:sha384, binary} | {:sha512, binary}
        }

  defstruct digest: nil

  oneof :digest, 0

  field :sha256, 1, type: :bytes, oneof: 0
  field :sha384, 2, type: :bytes, oneof: 0
  field :sha512, 3, type: :bytes, oneof: 0
end
defmodule Google.Cloud.Kms.V1.LocationMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          hsm_available: boolean,
          ekm_available: boolean
        }

  defstruct hsm_available: false,
            ekm_available: false

  field :hsm_available, 1, type: :bool, json_name: "hsmAvailable"
  field :ekm_available, 2, type: :bool, json_name: "ekmAvailable"
end
defmodule Google.Cloud.Kms.V1.KeyManagementService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.cloud.kms.v1.KeyManagementService"

  rpc :ListKeyRings,
      Google.Cloud.Kms.V1.ListKeyRingsRequest,
      Google.Cloud.Kms.V1.ListKeyRingsResponse

  rpc :ListCryptoKeys,
      Google.Cloud.Kms.V1.ListCryptoKeysRequest,
      Google.Cloud.Kms.V1.ListCryptoKeysResponse

  rpc :ListCryptoKeyVersions,
      Google.Cloud.Kms.V1.ListCryptoKeyVersionsRequest,
      Google.Cloud.Kms.V1.ListCryptoKeyVersionsResponse

  rpc :ListImportJobs,
      Google.Cloud.Kms.V1.ListImportJobsRequest,
      Google.Cloud.Kms.V1.ListImportJobsResponse

  rpc :GetKeyRing, Google.Cloud.Kms.V1.GetKeyRingRequest, Google.Cloud.Kms.V1.KeyRing

  rpc :GetCryptoKey, Google.Cloud.Kms.V1.GetCryptoKeyRequest, Google.Cloud.Kms.V1.CryptoKey

  rpc :GetCryptoKeyVersion,
      Google.Cloud.Kms.V1.GetCryptoKeyVersionRequest,
      Google.Cloud.Kms.V1.CryptoKeyVersion

  rpc :GetPublicKey, Google.Cloud.Kms.V1.GetPublicKeyRequest, Google.Cloud.Kms.V1.PublicKey

  rpc :GetImportJob, Google.Cloud.Kms.V1.GetImportJobRequest, Google.Cloud.Kms.V1.ImportJob

  rpc :CreateKeyRing, Google.Cloud.Kms.V1.CreateKeyRingRequest, Google.Cloud.Kms.V1.KeyRing

  rpc :CreateCryptoKey, Google.Cloud.Kms.V1.CreateCryptoKeyRequest, Google.Cloud.Kms.V1.CryptoKey

  rpc :CreateCryptoKeyVersion,
      Google.Cloud.Kms.V1.CreateCryptoKeyVersionRequest,
      Google.Cloud.Kms.V1.CryptoKeyVersion

  rpc :ImportCryptoKeyVersion,
      Google.Cloud.Kms.V1.ImportCryptoKeyVersionRequest,
      Google.Cloud.Kms.V1.CryptoKeyVersion

  rpc :CreateImportJob, Google.Cloud.Kms.V1.CreateImportJobRequest, Google.Cloud.Kms.V1.ImportJob

  rpc :UpdateCryptoKey, Google.Cloud.Kms.V1.UpdateCryptoKeyRequest, Google.Cloud.Kms.V1.CryptoKey

  rpc :UpdateCryptoKeyVersion,
      Google.Cloud.Kms.V1.UpdateCryptoKeyVersionRequest,
      Google.Cloud.Kms.V1.CryptoKeyVersion

  rpc :UpdateCryptoKeyPrimaryVersion,
      Google.Cloud.Kms.V1.UpdateCryptoKeyPrimaryVersionRequest,
      Google.Cloud.Kms.V1.CryptoKey

  rpc :DestroyCryptoKeyVersion,
      Google.Cloud.Kms.V1.DestroyCryptoKeyVersionRequest,
      Google.Cloud.Kms.V1.CryptoKeyVersion

  rpc :RestoreCryptoKeyVersion,
      Google.Cloud.Kms.V1.RestoreCryptoKeyVersionRequest,
      Google.Cloud.Kms.V1.CryptoKeyVersion

  rpc :Encrypt, Google.Cloud.Kms.V1.EncryptRequest, Google.Cloud.Kms.V1.EncryptResponse

  rpc :Decrypt, Google.Cloud.Kms.V1.DecryptRequest, Google.Cloud.Kms.V1.DecryptResponse

  rpc :AsymmetricSign,
      Google.Cloud.Kms.V1.AsymmetricSignRequest,
      Google.Cloud.Kms.V1.AsymmetricSignResponse

  rpc :AsymmetricDecrypt,
      Google.Cloud.Kms.V1.AsymmetricDecryptRequest,
      Google.Cloud.Kms.V1.AsymmetricDecryptResponse

  rpc :MacSign, Google.Cloud.Kms.V1.MacSignRequest, Google.Cloud.Kms.V1.MacSignResponse

  rpc :MacVerify, Google.Cloud.Kms.V1.MacVerifyRequest, Google.Cloud.Kms.V1.MacVerifyResponse

  rpc :GenerateRandomBytes,
      Google.Cloud.Kms.V1.GenerateRandomBytesRequest,
      Google.Cloud.Kms.V1.GenerateRandomBytesResponse
end

defmodule Google.Cloud.Kms.V1.KeyManagementService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Cloud.Kms.V1.KeyManagementService.Service
end
