defmodule Google.Ads.Admanager.V1.GetBrowserLanguageRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Ads.Admanager.V1.ListBrowserLanguagesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
  field :filter, 4, type: :string, deprecated: false
  field :order_by, 5, type: :string, json_name: "orderBy", deprecated: false
  field :skip, 6, type: :int32, deprecated: false
end

defmodule Google.Ads.Admanager.V1.ListBrowserLanguagesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :browser_languages, 1,
    repeated: true,
    type: Google.Ads.Admanager.V1.BrowserLanguage,
    json_name: "browserLanguages"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :total_size, 3, type: :int32, json_name: "totalSize"
end

defmodule Google.Ads.Admanager.V1.BrowserLanguageService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.ads.admanager.v1.BrowserLanguageService",
    protoc_gen_elixir_version: "0.15.0"

  rpc :GetBrowserLanguage,
      Google.Ads.Admanager.V1.GetBrowserLanguageRequest,
      Google.Ads.Admanager.V1.BrowserLanguage

  rpc :ListBrowserLanguages,
      Google.Ads.Admanager.V1.ListBrowserLanguagesRequest,
      Google.Ads.Admanager.V1.ListBrowserLanguagesResponse
end

defmodule Google.Ads.Admanager.V1.BrowserLanguageService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Ads.Admanager.V1.BrowserLanguageService.Service
end
