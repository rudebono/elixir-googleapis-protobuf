defmodule Google.Cloud.Resourcemanager.V3.TagHold do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :holder, 2, type: :string, deprecated: false
  field :origin, 3, type: :string, deprecated: false
  field :help_link, 4, type: :string, json_name: "helpLink", deprecated: false

  field :create_time, 5,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false
end

defmodule Google.Cloud.Resourcemanager.V3.CreateTagHoldRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :tag_hold, 2,
    type: Google.Cloud.Resourcemanager.V3.TagHold,
    json_name: "tagHold",
    deprecated: false

  field :validate_only, 3, type: :bool, json_name: "validateOnly", deprecated: false
end

defmodule Google.Cloud.Resourcemanager.V3.CreateTagHoldMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3
end

defmodule Google.Cloud.Resourcemanager.V3.DeleteTagHoldRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :validate_only, 2, type: :bool, json_name: "validateOnly", deprecated: false
end

defmodule Google.Cloud.Resourcemanager.V3.DeleteTagHoldMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3
end

defmodule Google.Cloud.Resourcemanager.V3.ListTagHoldsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
  field :filter, 4, type: :string, deprecated: false
end

defmodule Google.Cloud.Resourcemanager.V3.ListTagHoldsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :tag_holds, 1,
    repeated: true,
    type: Google.Cloud.Resourcemanager.V3.TagHold,
    json_name: "tagHolds"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Resourcemanager.V3.TagHolds.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.resourcemanager.v3.TagHolds",
    protoc_gen_elixir_version: "0.15.0"

  rpc :CreateTagHold,
      Google.Cloud.Resourcemanager.V3.CreateTagHoldRequest,
      Google.Longrunning.Operation

  rpc :DeleteTagHold,
      Google.Cloud.Resourcemanager.V3.DeleteTagHoldRequest,
      Google.Longrunning.Operation

  rpc :ListTagHolds,
      Google.Cloud.Resourcemanager.V3.ListTagHoldsRequest,
      Google.Cloud.Resourcemanager.V3.ListTagHoldsResponse
end

defmodule Google.Cloud.Resourcemanager.V3.TagHolds.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Resourcemanager.V3.TagHolds.Service
end
