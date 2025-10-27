defmodule Google.Ads.Admanager.V1.GetContentLabelRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Ads.Admanager.V1.ListContentLabelsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
  field :filter, 4, type: :string, deprecated: false
  field :order_by, 5, type: :string, json_name: "orderBy", deprecated: false
  field :skip, 6, type: :int32, deprecated: false
end

defmodule Google.Ads.Admanager.V1.ListContentLabelsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :content_labels, 1,
    repeated: true,
    type: Google.Ads.Admanager.V1.ContentLabel,
    json_name: "contentLabels"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :total_size, 3, type: :int32, json_name: "totalSize"
end

defmodule Google.Ads.Admanager.V1.ContentLabelService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.ads.admanager.v1.ContentLabelService",
    protoc_gen_elixir_version: "0.15.0"

  rpc :GetContentLabel,
      Google.Ads.Admanager.V1.GetContentLabelRequest,
      Google.Ads.Admanager.V1.ContentLabel

  rpc :ListContentLabels,
      Google.Ads.Admanager.V1.ListContentLabelsRequest,
      Google.Ads.Admanager.V1.ListContentLabelsResponse
end

defmodule Google.Ads.Admanager.V1.ContentLabelService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Ads.Admanager.V1.ContentLabelService.Service
end
