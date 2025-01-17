defmodule Google.Cloud.Dialogflow.V2beta1.Version.VersionStatus do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :VERSION_STATUS_UNSPECIFIED, 0
  field :IN_PROGRESS, 1
  field :READY, 2
  field :FAILED, 3
end

defmodule Google.Cloud.Dialogflow.V2beta1.Version do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :description, 2, type: :string, deprecated: false
  field :version_number, 3, type: :int32, json_name: "versionNumber", deprecated: false

  field :create_time, 4,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :status, 6,
    type: Google.Cloud.Dialogflow.V2beta1.Version.VersionStatus,
    enum: true,
    deprecated: false
end

defmodule Google.Cloud.Dialogflow.V2beta1.ListVersionsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
end

defmodule Google.Cloud.Dialogflow.V2beta1.ListVersionsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :versions, 1, repeated: true, type: Google.Cloud.Dialogflow.V2beta1.Version
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Dialogflow.V2beta1.GetVersionRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Dialogflow.V2beta1.CreateVersionRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :version, 2, type: Google.Cloud.Dialogflow.V2beta1.Version, deprecated: false
end

defmodule Google.Cloud.Dialogflow.V2beta1.UpdateVersionRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :version, 1, type: Google.Cloud.Dialogflow.V2beta1.Version, deprecated: false

  field :update_mask, 2,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false
end

defmodule Google.Cloud.Dialogflow.V2beta1.DeleteVersionRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Dialogflow.V2beta1.Versions.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.dialogflow.v2beta1.Versions",
    protoc_gen_elixir_version: "0.14.0"

  rpc :ListVersions,
      Google.Cloud.Dialogflow.V2beta1.ListVersionsRequest,
      Google.Cloud.Dialogflow.V2beta1.ListVersionsResponse

  rpc :GetVersion,
      Google.Cloud.Dialogflow.V2beta1.GetVersionRequest,
      Google.Cloud.Dialogflow.V2beta1.Version

  rpc :CreateVersion,
      Google.Cloud.Dialogflow.V2beta1.CreateVersionRequest,
      Google.Cloud.Dialogflow.V2beta1.Version

  rpc :UpdateVersion,
      Google.Cloud.Dialogflow.V2beta1.UpdateVersionRequest,
      Google.Cloud.Dialogflow.V2beta1.Version

  rpc :DeleteVersion, Google.Cloud.Dialogflow.V2beta1.DeleteVersionRequest, Google.Protobuf.Empty
end

defmodule Google.Cloud.Dialogflow.V2beta1.Versions.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Dialogflow.V2beta1.Versions.Service
end
