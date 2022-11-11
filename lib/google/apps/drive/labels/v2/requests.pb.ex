defmodule Google.Apps.Drive.Labels.V2.LabelView do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :LABEL_VIEW_BASIC, 0
  field :LABEL_VIEW_FULL, 1
end

defmodule Google.Apps.Drive.Labels.V2.GetLabelRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :use_admin_access, 2, type: :bool, json_name: "useAdminAccess"
  field :language_code, 3, type: :string, json_name: "languageCode"
  field :view, 4, type: Google.Apps.Drive.Labels.V2.LabelView, enum: true
end

defmodule Google.Apps.Drive.Labels.V2.ListLabelsRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  oneof :access, 0

  field :use_admin_access, 3, type: :bool, json_name: "useAdminAccess", oneof: 0

  field :minimum_role, 4,
    type: Google.Apps.Drive.Labels.V2.LabelPermission.LabelRole,
    json_name: "minimumRole",
    enum: true,
    oneof: 0

  field :published_only, 1, type: :bool, json_name: "publishedOnly"
  field :language_code, 5, type: :string, json_name: "languageCode"
  field :page_size, 6, type: :int32, json_name: "pageSize"
  field :page_token, 7, type: :string, json_name: "pageToken"
  field :view, 8, type: Google.Apps.Drive.Labels.V2.LabelView, enum: true
end

defmodule Google.Apps.Drive.Labels.V2.ListLabelsResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :labels, 1, repeated: true, type: Google.Apps.Drive.Labels.V2.Label
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end