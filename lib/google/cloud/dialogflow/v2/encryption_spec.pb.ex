defmodule Google.Cloud.Dialogflow.V2.GetEncryptionSpecRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Dialogflow.V2.EncryptionSpec do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :kms_key, 2, type: :string, json_name: "kmsKey", deprecated: false
end

defmodule Google.Cloud.Dialogflow.V2.InitializeEncryptionSpecRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :encryption_spec, 1,
    type: Google.Cloud.Dialogflow.V2.EncryptionSpec,
    json_name: "encryptionSpec",
    deprecated: false
end

defmodule Google.Cloud.Dialogflow.V2.InitializeEncryptionSpecResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3
end

defmodule Google.Cloud.Dialogflow.V2.InitializeEncryptionSpecMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :request, 4,
    type: Google.Cloud.Dialogflow.V2.InitializeEncryptionSpecRequest,
    deprecated: false
end

defmodule Google.Cloud.Dialogflow.V2.EncryptionSpecService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.dialogflow.v2.EncryptionSpecService",
    protoc_gen_elixir_version: "0.14.1"

  rpc :GetEncryptionSpec,
      Google.Cloud.Dialogflow.V2.GetEncryptionSpecRequest,
      Google.Cloud.Dialogflow.V2.EncryptionSpec

  rpc :InitializeEncryptionSpec,
      Google.Cloud.Dialogflow.V2.InitializeEncryptionSpecRequest,
      Google.Longrunning.Operation
end

defmodule Google.Cloud.Dialogflow.V2.EncryptionSpecService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Dialogflow.V2.EncryptionSpecService.Service
end
