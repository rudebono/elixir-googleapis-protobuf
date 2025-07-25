defmodule Google.Cloud.Securitycenter.V2.Indicator.ProcessSignature.SignatureType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :SIGNATURE_TYPE_UNSPECIFIED, 0
  field :SIGNATURE_TYPE_PROCESS, 1
  field :SIGNATURE_TYPE_FILE, 2
end

defmodule Google.Cloud.Securitycenter.V2.Indicator.ProcessSignature.MemoryHashSignature.Detection do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :binary, 2, type: :string
  field :percent_pages_matched, 3, type: :double, json_name: "percentPagesMatched"
end

defmodule Google.Cloud.Securitycenter.V2.Indicator.ProcessSignature.MemoryHashSignature do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :binary_family, 1, type: :string, json_name: "binaryFamily"

  field :detections, 4,
    repeated: true,
    type: Google.Cloud.Securitycenter.V2.Indicator.ProcessSignature.MemoryHashSignature.Detection
end

defmodule Google.Cloud.Securitycenter.V2.Indicator.ProcessSignature.YaraRuleSignature do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :yara_rule, 5, type: :string, json_name: "yaraRule"
end

defmodule Google.Cloud.Securitycenter.V2.Indicator.ProcessSignature do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :signature, 0

  field :memory_hash_signature, 6,
    type: Google.Cloud.Securitycenter.V2.Indicator.ProcessSignature.MemoryHashSignature,
    json_name: "memoryHashSignature",
    oneof: 0

  field :yara_rule_signature, 7,
    type: Google.Cloud.Securitycenter.V2.Indicator.ProcessSignature.YaraRuleSignature,
    json_name: "yaraRuleSignature",
    oneof: 0

  field :signature_type, 8,
    type: Google.Cloud.Securitycenter.V2.Indicator.ProcessSignature.SignatureType,
    json_name: "signatureType",
    enum: true
end

defmodule Google.Cloud.Securitycenter.V2.Indicator do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :ip_addresses, 1, repeated: true, type: :string, json_name: "ipAddresses"
  field :domains, 2, repeated: true, type: :string

  field :signatures, 3,
    repeated: true,
    type: Google.Cloud.Securitycenter.V2.Indicator.ProcessSignature

  field :uris, 4, repeated: true, type: :string
end
