defmodule Google.Cloud.Baremetalsolution.V2.OSImage do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :code, 2, type: :string
  field :description, 3, type: :string

  field :applicable_instance_types, 4,
    repeated: true,
    type: :string,
    json_name: "applicableInstanceTypes"

  field :supported_network_templates, 5,
    repeated: true,
    type: :string,
    json_name: "supportedNetworkTemplates"
end

defmodule Google.Cloud.Baremetalsolution.V2.ListOSImagesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
end

defmodule Google.Cloud.Baremetalsolution.V2.ListOSImagesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :os_images, 1,
    repeated: true,
    type: Google.Cloud.Baremetalsolution.V2.OSImage,
    json_name: "osImages"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end