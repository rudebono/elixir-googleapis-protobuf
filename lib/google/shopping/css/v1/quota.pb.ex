defmodule Google.Shopping.Css.V1.QuotaGroup do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :quota_usage, 2, type: :int64, json_name: "quotaUsage", deprecated: false
  field :quota_limit, 3, type: :int64, json_name: "quotaLimit", deprecated: false
  field :quota_minute_limit, 5, type: :int64, json_name: "quotaMinuteLimit", deprecated: false

  field :method_details, 4,
    repeated: true,
    type: Google.Shopping.Css.V1.MethodDetails,
    json_name: "methodDetails",
    deprecated: false
end

defmodule Google.Shopping.Css.V1.MethodDetails do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :method, 1, type: :string, deprecated: false
  field :version, 2, type: :string, deprecated: false
  field :subapi, 3, type: :string, deprecated: false
  field :path, 4, type: :string, deprecated: false
end

defmodule Google.Shopping.Css.V1.ListQuotaGroupsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
end

defmodule Google.Shopping.Css.V1.ListQuotaGroupsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :quota_groups, 1,
    repeated: true,
    type: Google.Shopping.Css.V1.QuotaGroup,
    json_name: "quotaGroups"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Shopping.Css.V1.QuotaService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.shopping.css.v1.QuotaService",
    protoc_gen_elixir_version: "0.14.1"

  rpc :ListQuotaGroups,
      Google.Shopping.Css.V1.ListQuotaGroupsRequest,
      Google.Shopping.Css.V1.ListQuotaGroupsResponse
end

defmodule Google.Shopping.Css.V1.QuotaService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Shopping.Css.V1.QuotaService.Service
end
